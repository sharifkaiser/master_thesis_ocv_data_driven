import pandas as pd
import mdf_iter
import can_decoder
from pathlib import Path
import os
import time
import warnings


def get_raw_data(mf4_filename):
    """
    Get raw CAN log file
    """
    print('Getting raw data: ', mf4_filename)
    with mdf_iter.MdfFile(mf4_filename) as mdf_file:
        # Using pandas.
        df_raw = mdf_file.get_data_frame()
    return df_raw


def load_dbc_files(dbc_path_list):
    """
    Load DBC translation files to translate raw CAN data
    """
    decoder_list = []
    for dbc in dbc_path_list:
        db = can_decoder.load_dbc(Path(__file__).parent / dbc)
        decoder_list.append(db)
    return decoder_list


def get_physical_data(df, signal_list, decoders):
    """
    Translate raw CAN data into physical data. Returns a dataframe with each row being a CAN message
    """
    print('Converting to physical data...')
    ret = pd.DataFrame()
    for db in decoders:
        df_decoder = can_decoder.DataFrameDecoder(db)

        df_phys_temp = pd.DataFrame()
        for length, group in df.groupby("DataLength"):
            with warnings.catch_warnings():
                warnings.simplefilter("ignore")
                df_phys_group = df_decoder.decode_frame(group)
            df_phys_temp = df_phys_temp.append(df_phys_group)

        ret = ret.append(df_phys_temp.sort_index())

    # Remove duplicates in case multiple DBC files contain identical signals
    ret["datetime"] = ret.index
    ret = ret.drop_duplicates(keep="first")
    ret = ret.drop("datetime", 1)

    ret = ret[ret["Signal"].str.lower().isin(signal_list)]

    return ret


def restructure_data(df):
    """
    Sort dataframe with CAN messages into a dataframe with each CAN message having a different column
    """
    print('Restructuring data...')
    df_phys_join = pd.DataFrame({"TimeStamp": []})
    if not df.empty:
        for message, df_phys_message in df.groupby("CAN ID"):
            for signal, data in df_phys_message.groupby("Signal"):
                col_name = str(hex(int(message))).upper()[2:] + "." + signal

                df_phys_join = pd.merge_ordered(
                    df_phys_join,
                    data["Physical Value"].rename(col_name).resample('1S').pad().dropna(),
                    on="TimeStamp",
                    fill_method="none",
                ).set_index("TimeStamp")
    return df_phys_join

def write_csv(df, module_name):
    """
    Write a CSV from a dataframe and name it based on the first timestamp
    """
    df = df.dropna()
    timestamp = df.index[0]
    name = 'processed/' + module_name + "_" + str(timestamp.date()) + '_' + str(timestamp.time()).replace(':', '-') + '.csv'
    print(f'Writing {name}...')
    df.to_csv(name)


# Get list of CAN decoders
dbc_paths = ["dbc_files/powertrain_debug_PCAN_220202.dbc", "dbc_files/BMW_220202.dbc",
             "dbc_files/debug_PCAN_220202.dbc"]
db_list = load_dbc_files(dbc_paths)

# Signals to get
signals = ['current_bms01',
	'stringvoltage_bms01',
	'minsoc_bms01',
	'sococvinit_bms01',
	'minsoh_bms01',
	'currentmodule1integral_bms01',
	'currentmodule1_bms01',
	'currentmodule2integral_bms01',
	'currentmodule2_bms01',
	'currentmodule3integral_bms01',
	'currentmodule3_bms01',
	'contactorstate_bms01',
	'ctrofftime_bms01',
	'invalidmoduletempflags_bms01',
	'invalidmodulevoltageflags_bms01',
	'lifetime_bms01',
	'minsoc_bms01',
	'sleeptime_bms01',
	'bmsonboardtemperature_bms01',
	'cmbonboardtemperature01_bms01',
	'brickvoltage049_bms01',
	'brickvoltage050_bms01',
	'brickvoltage051_bms01',
	'brickvoltage052_bms01',
	'brickvoltage053_bms01',
	'brickvoltage054_bms01',
	'brickvoltage055_bms01',
	'brickvoltage056_bms01',
	'brickvoltage057_bms01',
	'brickvoltage058_bms01',
	'brickvoltage059_bms01',
	'brickvoltage060_bms01',
	'moduletemperature17_bms01',
	'moduletemperature18_bms01',
	'moduletemperature19_bms01',
	'moduletemperature20_bms01']


root = 'LOG'  # root folder
directories = os.listdir(root)

df_joined = pd.DataFrame()
toc = time.time()
# Loop over directories in 'LOG/'
for directory in directories:
    files = os.listdir(root + '/' + directory)
    # Loop over files in the directory
    for file in files:
        df_raw = get_raw_data(root + '/' + directory + '/' + file)

        df_phys = get_physical_data(df_raw, signals, db_list)

        df_phys = restructure_data(df_phys)

        print('Joining...')
        df_joined = pd.concat([df_joined, df_phys], axis=0)

        # Write CSV when a certain number of rows has been reached.
        if len(df_joined.index) > 500000:
            print('Sorting...')
            write_csv(df_joined, "module5")
            df_joined = pd.DataFrame()
            tic = time.time()
            print(f'Getting data and writing this CSV took {tic - toc} seconds.')
            toc = time.time()

write_csv(df_joined, "module5")
tic = time.time()
print(f'Getting data and writing this CSV took {tic - toc} seconds.')
print('Done.')