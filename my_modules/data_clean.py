import re
import constants
print("data_clean imported")


li_filter_in_words = list(map(lambda x: x.lower(), constants.LI_NECESSARY_VALS)) # convert to lower case
li_filter_out_words = list(map(lambda x: x.lower(), constants.LI_DISPENSABLE_VALS))
#print(li_filter_words)


# The function finds if a string is or is not in one element of li_BMS_cols. This function is called for each element of li_BMS_cols
# Values returned from this function creates a list of filtered columns, in or out
def col_filter_string(col_name, is_filter_in):
  if is_filter_in:                    # keep this col on match
    for el in li_filter_in_words:
      if el in col_name:
            return col_name
    return ''                         # col_name not necessary column, so return empty to filter col_name out later
  else:
    for el in li_filter_out_words:    # remove this col on match
      if el in col_name:
            return ''                 # col_name unnecessary, ret empty string to filter out col_name
    return col_name

# The function finds if a regex is or is not in one element of li_BMS_cols. This function is called for each element of li_BMS_cols
# Values returned from this function creates a list of filtered columns, in or out
def col_filter_regex(col_name, is_filter_in):
  if is_filter_in:                    # keep this col on match
    for el in constants.LI_FILTER_IN_REGEX:
      if re.search(el, col_name):
        return col_name
    return ''                         # col_name not necessary column, so return empty to filter col_name out later
  else:
    for el in constants.LI_FILTER_OUT_REGEX:    # remove this col on match
      if re.search(el, col_name):
        return ''                     # col_name unnecessary, ret empty string to filter out col_name
    return col_name

def get_clean_data(frame):
  # print all caolumns
  col_count = 0

  df_BMS_specific = frame.filter(regex=("[a-zA-Z0-9]*_BMS[0-4]+|TimeStamp"), axis="columns")  # Filter data by BMS number(s) eg. BMS01, BMS02 etc.

  # Make everything lower case to avoid searching errrors
  df_BMS_specific.columns= df_BMS_specific.columns.str.lower()
  # df_BMS_specific
  li_BMS_cols = df_BMS_specific.columns.values.tolist()

  li_filtered_cols = [col_filter_string(x, True) for x in li_BMS_cols]  # Creates list of column names that contain li_filter_in_words
  li_cols = [col_filter_string(x, False) for x in li_filtered_cols]  # Filter out li_filter_out_words from the selected columns
  li_cols_regex = [col_filter_regex(x, False) for x in li_cols]  # Filter out by regex vals
  # print(li_cols)
  # print(li_cols_regex)

  df_filtered_by_user = df_BMS_specific.filter(items=li_cols_regex, axis="columns")
  #df_BMS_specific.filter(items=li_filtered_colNames, axis="columns")

  # Filter input dataframe from BMS
  # for col in df_filtered_by_user:
  #     print(col)
  #     col_count += 1
  # print('#cols: ' + str(col_count))

  return df_filtered_by_user