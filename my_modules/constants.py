  # Note, create constants.py module and move these to that module
LI_NECESSARY_VALS = ['time', 'current', 'volt', 'temp', 'contact', 'soc', 'soh', 'string', 'resist']  # User defined data values that are relevant for SOH analysis
LI_DISPENSABLE_VALS = ['.dem', 'heatercurrent', 'limit_', 'contactorType', 'rabbitContactorState', 'pumprecovery'] # cols with these will be filtered out
LI_FILTER_IN_REGEX = []
LI_FILTER_OUT_REGEX = [".*mean.*temp.*", ".*min.*volt.*", ".*min.*temp.*", ".*max.*volt.*", ".*max.*temp.*"]


# voltage limits for removing SNA
VOLTAGE_LOWER_LIMIT = 2.8
VOLTAGE_UPPER_LIMIT = 4.2

# Current limits for removing SNA


# If there is data gap for more than 10 seconds, then split them in separate dataframes or lists
TIME_GAP_TH_SEC = 1
CURRENT_LOWER_LIMIT = -1000
CURRENT_UPPER_LIMIT = 1000


# Static voltage related consts
STATIC_VOLTAGE_THRESHOLD = 0.0001
STATIC_VOLTAGE_MIN_DURATION_SEC = 900    # 15 mins

# contactor states
CONTACTOR_ON = 2
CONTACTOR_OFF = 0
CONTACTOR_INVALID = 4
CONTACTOR_OPENING = 3
CONTACTOR_PRECHARGE = 1

SLIDING_WINDOW_DIRECTION_FORWARD = 1
SLIDING_WINDOW_DIRECTION_BACKWARD = -1

NUM_CELLS = 96
NUM_MODULES = 8

# constants for plotting
x_label_elapsedtime = 0
x_label_datetime = 1
