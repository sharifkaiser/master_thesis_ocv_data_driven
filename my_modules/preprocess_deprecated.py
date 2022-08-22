# This function takes a dataframe that is grouped by a column, the df must also have a timestamp col
# Filters the dataframe where each group spans over a time >= minimum time span (unit:sec)
# Params:
#     input dataframe: pandas df
#     grouped_col name: str
#     timestamp_col_name: str
#     time threshold in sec: int
# Returns: filters dataframe, remove groups that span < min_time_threshold for static voltage
def get_groups_gt_static_duration(df, grouped_col, timestamp_col):
    
    print("get_groups_gt_static_duration called")
    # rets group by obj, grouped_col as index and duration as values (no col header for duration)
    gb_duration_sec = (df.groupby(grouped_col)[timestamp_col].max() - 
                     df.groupby(grouped_col)[timestamp_col].min()).dt.total_seconds() + 1

    # Make a list of df indices, where duration > threshold
    li_gb_valid_indices = np.where(gb_duration_sec >= constants.STATIC_VOLTAGE_MIN_DURATION_SEC,
                                   gb_duration_sec.index,
                                   np.nan)
    
    # remove nan from list and make int
    li_gb_valid_indices = [int(x) for x in li_gb_valid_indices if np.isnan(x) == False]    
    mask = df['value_grp'].isin(li_gb_valid_indices)       # true/false accross column
    df_out = df[mask].copy()

    return df_out




# This function takes list of dataframes, where each df contains one group of consecutive thresholded volts
# Checks whether each voltage group falls within voltage threshold limit
# Also checks for time threshold
# returns when each dataframes of the li_input_dfs list have been fully processed

# Params:
#   li_input_dfs: df groups of consecutive voltage that still needs revisit
#   li_output_dfs: filtered output dfs (both by col_val col_time) are appended in this list
#   col_volt: voltage column name that should be checked against voltage threshold, this is primary threshold check
#   col_timestamp: time col name that should be checked against time threshold, this is second filter
# Returns: when li_input_dfs has no more datafreames to process


# Algo Summary:
# iterate over li_input_dfs, each df in the list will be processed
# for each df of li_input_dfs
#   check if all element of df are within voltage threshold of df[0]
#   split df based on first occurance volt threshold fail, df1 and df_rem
#     Remove df1 from the li_input_dfs (because it has been processed)
#     check df1 against timespan threshold, if passes then append to li_output_dfs
#     check second part of splitted df, df_rem against timespan threshold
#       if time th passes, then this needs to be filtered again, call this fn recursively
#       if time th fails, then this should also be removed from li_input_dfs, i.e. li_input_dfs[id] = None
# the function returns when li_input_dfs is empty i.e. all the elements become None
# Ignore SettingWithCopyWarning for li_input_dfs and li_output_dfs ops. They are supposed to change themselves (not copy)

def valid_const_voltage_range(li_input_dfs, li_output_dfs, col_volt, col_timestamp):
    
    if(all(v is None for v in li_input_dfs)):
         return                    # all elements in input list are None, so return
    
    for i_list, df in enumerate(li_input_dfs):
        if((df is not None) and (not df.dropna().empty)):
            
            val_id0 = df.iloc[0][col_volt] # first row val of df, this will be compared with the rest
            
            li_bool = np.where((abs(df[col_volt] - val_id0) < constants.STATIC_VOLTAGE_THRESHOLD), True, False)
            
            # get id of first occurance of false (don't confuse with df index, split_id_int starts from 0)
            if (all(li_bool)):
                split_iloc_id = len(li_bool)     # all true ie all within volt threshold
                df_rem = pd.DataFrame()          # no rem df, so empty
            else:
                split_iloc_id = np.argmax(~np.array(li_bool))     
                df_rem = df.iloc[split_iloc_id:]          # split_iloc_id -1 to end

            df1 = df.iloc[:split_iloc_id]             # 0 -> split_iloc_id -1
            
#             print("df1: ")      # debug code
#             print(df1)
            
            if(not df1.dropna().empty):
                # Remove this from input list as this has been filtered and processed
                li_input_dfs[i_list].drop(li_input_dfs[i_list].index[0:split_iloc_id], axis=0, inplace=True)

                # Check against time threshold
                if((df1.iloc[-1][col_timestamp] - df1.iloc[0][col_timestamp]).seconds + 1 >= constants.STATIC_VOLTAGE_MIN_DURATION_SEC):
                    # add to the the output list, appending is pass by reference
                    li_output_dfs.append(df1)

            if(not df_rem.dropna().empty):
                # if remaining part < time threshold, no more processing needed
                if((df_rem.iloc[-1][col_timestamp] - df_rem.iloc[0][col_timestamp]).seconds + 1 < constants.STATIC_VOLTAGE_MIN_DURATION_SEC):
                    li_input_dfs[i_list] = None     # no more processing needed for this df
                else:
                    # this needs processing again, recursive call
                    valid_const_voltage_range(li_input_dfs, li_output_dfs, col_volt, col_timestamp)

            if(df.dropna().empty and df_rem.dropna().empty):
                # assign None as no processing required for this df
                li_input_dfs[i_list] = None


def const_voltage_result(df, col_volt, col_timestamp, group_by_col):
    return pd.DataFrame({'begin_time' : df.groupby(group_by_col)[col_timestamp].min(),
                                 'end_time' : df.groupby(group_by_col)[col_timestamp].max(),
                                 'min_V' : df.groupby(group_by_col)[col_volt].min(),
                                 'max_V' : df.groupby(group_by_col)[col_volt].max(),
                                 'Consecutive' : df.groupby(group_by_col).size()})

# returns df in the following format, the returned df is time sorted so ready to use
#
#          begin_time  end_time  min_V  max_V  Consecutive
#     value_grp                                                          

def get_const_volt_df(df_ts, col_volt, col_timestamp):
    # Add timestamp to whole df
    df_ts[col_timestamp] = pd.to_datetime(df_ts[col_timestamp], format='%Y-%m-%d %H:%M:%S')
    df_ts = df_ts.sort_values(by=col_timestamp)
    

    # If diff between consecutive rows <= threshold, then adds 0 (false) so cumsum remains same
    df_ts['value_grp'] = (abs(df_ts[col_volt].diff()) > abs(constants.STATIC_VOLTAGE_THRESHOLD)).astype('int64').cumsum()

    # keep rows that have more than one contiguous values
    consecutive_size = df_ts.groupby('value_grp')['value_grp'].transform('size')
    df_grouped_volt = df_ts[(consecutive_size > 1)]

    # Keep only groups that has a time span > time threshold
    df_grouped_volt_by_time = get_groups_gt_static_duration(df_grouped_volt, 'value_grp', col_timestamp)    
#     print(df_grouped_volt_by_time)

    # retunrs df that has voltage group vals as index
    # df_const_voltage_summary will be final container of continuous const voltages > time threshold
    df_const_volt = const_voltage_result(df_grouped_volt_by_time, col_volt, col_timestamp, 'value_grp')

    # df_const_volt only has consecutive values within threshold, eg. diff(row n, n+1) <= th
    # stil it can contain volt groups that span beyond threshold, eg diff(n, n+x) >= th is possible, find out those groups
    # those out_of_th groups must be reexamined with more robust algo
    boo_V_out_th = (df_const_volt['max_V'] - df_const_volt['min_V']) > constants.STATIC_VOLTAGE_THRESHOLD

    # make list of voltage groups that cross volt threshold
    li_V_out_th = df_const_volt[boo_V_out_th].index      # index is voltage

    # Remove out of range voltages from summary df
    df_const_volt = df_const_volt[~boo_V_out_th]

    # li_V_out_th have to be re-examined as they contain diff(n, n+x) >= th
    filtered_df = df_grouped_volt_by_time[df_grouped_volt_by_time['value_grp'].isin(li_V_out_th)]

    li_VG_dfs = []               # voltage groups that should be revisited
    for x in li_V_out_th:
        li_VG_dfs.append(df_grouped_volt_by_time[df_grouped_volt_by_time['value_grp'] == x])

    # valid_const_voltage_range() function filters consecutive voltage groups completely
    # the second param li_filtered_VG_dfs will contain completely filtered dfs
    li_filtered_VG_dfs = []           # must be empty before calling the function as it will contains output
    valid_const_voltage_range(li_VG_dfs, li_filtered_VG_dfs, col_volt, col_timestamp)

    # convert to result df format
    li_temp_result = [const_voltage_result(df, col_volt, col_timestamp, 'value_grp') for df in li_filtered_VG_dfs]

    if(len(li_temp_result)):
        df_temp_result = pd.concat(li_temp_result)                     # concat all dfs into one df
        df_const_volt = pd.concat([df_const_volt, df_temp_result])     # concat temp result df to output result df

    # print(li_filtered_VG_dfs)
    # print(df_const_volt)

    return df_const_volt