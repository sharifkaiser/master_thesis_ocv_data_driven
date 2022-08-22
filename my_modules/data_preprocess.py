import pandas as pd
import numpy as np
import constants
from datetime import timedelta
import os
import pickle

print("data_preprocess imported")

def interpolate_beyond_limit(df, col, lower_limit, upper_limit):
    # replace invalid voltage readings as NaN
    df.loc[df[col] < lower_limit, col] = np.nan
    df.loc[df[col] > upper_limit, col] = np.nan

    df[col] = df[col].interpolate()               # interpolate nan values: linear interpolation
    return df


def get_ts_records_by_timegap(df, col, gap):
    # If diff between consecutive rows <= gap, then adds 0 (false) so cumsum remains same
    df['time_group'] = (abs(df[col].diff().dt.total_seconds()) > gap).astype('int64').cumsum()
    gb = df.groupby('time_group')
    return tuple(gb.get_group(x) for x in gb.groups)    # use tuples, not list as list of df is mutable even when copied

def add_elapsed_sec(df, col_time):
    df_local = df.copy()
    col_i = df_local.columns.get_loc(col_time)    # get the column index of timestamp
    first_val = df_local.iat[0, col_i]
    df_local['elapsed_sec'] = (df_local[col_time] - first_val).astype('timedelta64[s]')
    return df_local

# Each element of the output list contains a df of continuous (1 Hz) time series of BMS
# This function already eliminates the segments that have only cntr on, or only cntr off,
# because they will not produce a full cycle (static+dynamic+static)
def get_continuous_ts_segments_list(tu_time_divided_ts):
    
    # List of cycles that have both static and dynamic parts (contactor off + on)
    li_ts_segments = []

    for i_list, df_x in enumerate(tu_time_divided_ts):
        df_cntr_off = df_x.loc[df_x['contactor_state'].astype('int64') == constants.CONTACTOR_OFF]
        df_cntr_on = df_x.loc[df_x['contactor_state'].astype('int64') == constants.CONTACTOR_ON]

        if ((df_cntr_off.shape[0] > 0) and (df_cntr_on.shape[0] > 0)):
            li_ts_segments.append(df_x.copy())

    return li_ts_segments


# each df in full cycle list contins consecutively: static voltage -> dynamic voltage -> static voltage

def get_full_cycles_list(df, col_cntr_status, col_timestamp):
    # Add timestamp to whole df
    df[col_timestamp] = pd.to_datetime(df[col_timestamp], format='%Y-%m-%d %H:%M:%S')
    df = df.sort_values(by=col_timestamp)

    df_cntr_on = df.loc[df['contactor_state'].astype('int64') == constants.CONTACTOR_ON].copy()
    df_cntr_off = df.loc[df['contactor_state'].astype('int64') == constants.CONTACTOR_OFF].copy()
    tu_dynamic = get_ts_records_by_timegap(df_cntr_on, col_timestamp, constants.TIME_GAP_TH_SEC)
    tu_static = get_ts_records_by_timegap(df_cntr_off, col_timestamp, constants.TIME_GAP_TH_SEC)
    
#     print("tu_dynamic len: ", len(tu_dynamic))
#     print("df len", len(df))
#     print("len(tu_static): ", len(tu_static))
#     print(tu_dynamic)
    li_cycle = []
    
    # at least two static portions must be available in the cycle
    if (len(tu_static) >= 2):
        for i_list, df_x in enumerate(tu_dynamic):
#             print("i_list: ", i_list)
#             print("df_x len: ", len(df_x))
            # Each df_x is dynamic voltage portion, a valid cycle contains (static+dynamic+static) where
    #       # duration of prev and next static voltage portion must be >= STATIC_VOLTAGE_MIN_DURATION_SEC
            dfx_start_time = tu_dynamic[i_list].iloc[0][col_timestamp]
            dfx_end_time = tu_dynamic[i_list].iloc[-1][col_timestamp]

            if(i_list == (len(tu_dynamic) - 1)):
                last_end_time = tu_dynamic[i_list - 1].iloc[-1][col_timestamp]
                next_start_time = df.iloc[-1][col_timestamp]      # last time of main df

            elif(i_list == 0):      # first element
                last_end_time = df.iloc[0][col_timestamp]      # starting time of main df
                next_start_time = tu_dynamic[i_list + 1].iloc[0][col_timestamp]

            else:
                last_end_time = tu_dynamic[i_list - 1].iloc[-1][col_timestamp]
                next_start_time = tu_dynamic[i_list + 1].iloc[0][col_timestamp]

            df_prev_static = df[(df[col_timestamp] > last_end_time) & (df[col_timestamp] < dfx_start_time)].copy()
            df_next_static = df[(df[col_timestamp] > dfx_end_time) & (df[col_timestamp] < next_start_time)].copy()

            boo_is_full_cycle = False
            if((df_prev_static is not None) and (not df_prev_static.dropna().empty)
               and (df_next_static is not None) and (not df_next_static.dropna().empty)):

                prev_static_duration = (df_prev_static.iloc[-1][col_timestamp] - df_prev_static.iloc[0][col_timestamp]).seconds + 1
                next_static_duration = (df_next_static.iloc[-1][col_timestamp] - df_next_static.iloc[0][col_timestamp]).seconds + 1

                # Check if static voltage part crosses the minimum time threshold
                if((prev_static_duration >= constants.STATIC_VOLTAGE_MIN_DURATION_SEC)
                  and (next_static_duration >= constants.STATIC_VOLTAGE_MIN_DURATION_SEC)):
                    boo_is_full_cycle = True

    #         print(boo_is_full_cycle)
            if (boo_is_full_cycle):
                li_cycle.append(pd.concat([df_prev_static, df_x, df_next_static]))

    return li_cycle

# returns the timestamp where voltage starts to become static, if not found then returns none
# Algorithm:
# sliding window of STATIC_VOLTAGE_MIN_DURATION_SEC
# full cycle consecutively: prev static volt df (cntr off) + dynamic voltage df (cntr on) + next static voltage df (cntr off)
# static voltage must be checked against threshold
# Sliding window technique, window size = STATIC_VOLTAGE_MIN_DURATION_SEC
# for prev static voltage (pre-dynamic), threshold check starts at the end of df and sliding window goes backward
# for next static voltage (post dynamic), threshold check starts at the begining of df and sliding window goes forward
# there is a time jump if threshold not satisfied (jump time is decided 5 second)
# time jump is needed if voltage threshold does not satisfy
# arguments:
# df: static voltage df
# col_volt: voltage column name
# direction: With each time jump, sliding window moves forward (next static) or backwardd (prev static)
# direction from constatns:
#    direction forward means df is next df
#    direction forward means df is prev df

def get_static_volt_start_time(df, col_timestamp, col_volt, direction):

    JUMP_SIZE_SECONDS = 5           # 5 sec jump size
    if (direction == constants.SLIDING_WINDOW_DIRECTION_FORWARD):
        # df is next static voltage
        window_start_time = df.iloc[0][col_timestamp]
        window_end_time = window_start_time + timedelta(seconds=constants.STATIC_VOLTAGE_MIN_DURATION_SEC)

        while window_end_time <= df.iloc[-1][col_timestamp]:
            df_sliding_window = df[(df[col_timestamp] >= window_start_time) & (df[col_timestamp] <= window_end_time)].copy()
            pivot_voltage = df_sliding_window.iloc[0][col_volt]     # threshold will be measured w. r. t. this voltage
            li_bool = np.where((abs(df_sliding_window[col_volt] - pivot_voltage) < constants.STATIC_VOLTAGE_THRESHOLD), True, False)
            
            if (all(li_bool)): # check if all values of the window within threshold, return if true
                return window_start_time
            
            # shift window 5 seconds forward
            window_start_time += timedelta(seconds=JUMP_SIZE_SECONDS)
            window_end_time += timedelta(seconds=JUMP_SIZE_SECONDS)

    elif(direction == constants.SLIDING_WINDOW_DIRECTION_BACKWARD):
#         print('df', df)
        # df is prev static voltage, so sort according to descending order
        df[col_timestamp] = pd.to_datetime(df[col_timestamp], format='%Y-%m-%d %H:%M:%S')
        df = df.sort_values(by=col_timestamp, ascending=False).copy()

        # the df is sorted backward timewise, so start time is actually end time in terms of real time progression
        # important note: df[timestamp] for this block goes like n, n-1, n-2, ...., 0
        #                 df iloc for this block goes like       0, 1, 2, ....,n-1, n
        # i.e. (start time > end time) for this section
        # df
        window_start_time = df.iloc[0][col_timestamp]
        window_end_time = window_start_time - timedelta(seconds=constants.STATIC_VOLTAGE_MIN_DURATION_SEC)

        while window_end_time >= df.iloc[-1][col_timestamp]:
            df_sliding_window = df[(df[col_timestamp] <= window_start_time) & (df[col_timestamp] >= window_end_time)].copy()
            pivot_voltage = df_sliding_window.iloc[0][col_volt]     # threshold will be measured w. r. t. this voltage
            li_bool = np.where((abs(df_sliding_window[col_volt] - pivot_voltage) < constants.STATIC_VOLTAGE_THRESHOLD), True, False)
            
            if (all(li_bool)): # check if all values of the window within threshold, return if true
#                 print('true')
                return window_start_time
            
            # shift window 5 seconds backward
            window_start_time -= timedelta(seconds=JUMP_SIZE_SECONDS)
            window_end_time -= timedelta(seconds=JUMP_SIZE_SECONDS)

    # no window found withing voltage threshold, return none
    return None

# check each full cycles against voltage threshold and time threshold
# returns list of all trimmed cycles that has one static voltage + dynamic portion + final static voltage
def get_valid_cycles_list(li_cycles, col_voltage, col_timestamp):
    
    li_valid_cycle = []
    
    for i_list, df_x in enumerate(li_cycles):

        df_x[col_timestamp] = pd.to_datetime(df_x[col_timestamp], format='%Y-%m-%d %H:%M:%S')
        df_x = df_x.sort_values(by=col_timestamp)
        dfx_cntr_on = df_x.loc[df_x['contactor_state'].astype('int64') == constants.CONTACTOR_ON].copy()

        dynamic_start_time = dfx_cntr_on.iloc[0][col_timestamp]
        dynamic_end_time = dfx_cntr_on.iloc[-1][col_timestamp]
        
        df_prev_static = df_x[(df_x[col_timestamp] >= df_x.iloc[0][col_timestamp]) & (df_x[col_timestamp] < dynamic_start_time)].copy()
        df_next_static = df_x[(df_x[col_timestamp] > dynamic_end_time) & (df_x[col_timestamp] <= df_x.iloc[-1][col_timestamp])].copy()

        start_time = get_static_volt_start_time(df_prev_static, col_timestamp, col_voltage, constants.SLIDING_WINDOW_DIRECTION_BACKWARD)
        end_time = get_static_volt_start_time(df_next_static, col_timestamp, col_voltage, constants.SLIDING_WINDOW_DIRECTION_FORWARD)
#         print('start_time: ', start_time)
#         print('end_time: ', end_time)
        
        # Final result between start_time and end_time
        if ((start_time is not None) and (end_time is not None)):
            df_out = df_x[(df_x[col_timestamp] >= start_time) & (df_x[col_timestamp] <= end_time)].copy()
            li_valid_cycle.append(df_out)

    return li_valid_cycle

def is_unique(s):
    a = s.to_numpy() # s.values (pandas<0.24)
    return (a[0] == a).all()

def get_processed_ts_cycle(df, col_time, col_volt, col_current, col_temp):
    df = df[[col_time, col_volt, col_current, col_temp]]
    if(is_unique(df[col_volt])):
        return None
    else:
        return df

def save_object(obj, path, filename):
    import pickle
    src = os.path.join(path, filename)
    with open(src, 'wb') as outp:
        pickle.dump(obj, outp, protocol=pickle.HIGHEST_PROTOCOL)

def load_object(path, filename):
    import pickle
    src = os.path.join(path, filename)
    with open(src, 'rb') as f:
        obj = pickle.load(f)
        return obj