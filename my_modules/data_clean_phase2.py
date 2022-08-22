# Put all module 1 csv data files under csv/module1 folder, and so on until module 8
# Each module contains data from 12 cells that constitutes that module
# Modulewise division because sampling rate of one module can be different from other modules
# Also, each module handles temperature sensors separately, so separating modules give better data
# All files for phase 2 are csv files

import glob                             # finds all the pathnames matching specified pattern
import pandas as pd
import data_clean

# This function takes path of module csv files, converts to df, drops duplicates, changes to datetime and sorts them
def csv_to_df(path):

  all_files = glob.glob(path + "/*.csv")

  li = []

  for filename in all_files:
      df = pd.read_csv(filename, index_col=None, header=0)
      frame = data_clean.get_clean_data(df)
      li.append(frame)

  frame = pd.concat(li, axis=0, ignore_index=True)

  # Convert timestamp from python obj to datetime and sort
  frame['timestamp'] = pd.to_datetime(frame['timestamp'], format='%Y-%m-%d %H:%M:%S')
  frame.drop_duplicates(subset=['timestamp'], inplace=True, keep='first')     # remove duplicate entries
  frame = frame.sort_values(by='timestamp')
  frame['timestamp'] = frame['timestamp'].dt.tz_localize(None)          # remove UTC parts

  return frame