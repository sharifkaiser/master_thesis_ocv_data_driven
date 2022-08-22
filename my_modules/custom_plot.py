import matplotlib.pyplot as plt
import matplotlib.dates as md
import datetime as dt
import time
import matplotlib.ticker as ticker
import matplotlib
import matplotlib.dates as mdates
import numpy as np


# constants for plotting
ELAPSED_TIME = 0
TIMESTAMP = 1

print("imported custom_plot.py")

# Params should be passed as (x_data, x_label), (y1_data, y1_label), (y2_data, y2_label), ... etc.
# This function is written where y axes have different scales e.g. current and voltage
def plot_dual_axis(*axes):

    # assign argument values
    x_data, x_label = axes[0]
    y1_data, y1_label = axes[1]
    y2_data, y2_label = axes[2]

    font = {'family' : 'normal',
            'weight' : 'bold',
            'size'   : 10}

    matplotlib.rc('font', **font)
    fig = plt.figure(figsize =(12 ,5))
    plt.legend(bbox_to_anchor=(1.0, 1.0),prop={'size': 18,'weight' :'normal'})

    if (x_label == ELAPSED_TIME):
        scale_x = 60     # divide by 60 seconds
        li_ticks = np.arange(min(x_data), max(x_data)+1, 600)     # every 600 seconds = 10 minutes freq, assuming 1 Hz sampling rate
        li_labels = list(map(lambda x: int(x/scale_x), li_ticks))      # 60 sec = 1 minutes
        plt.xticks(li_ticks, li_labels, rotation=45)
        plt.xlabel('Time (minute)')
    elif (x_label == TIMESTAMP):
        plt.xlabel('Datetime')

    # Code for two different scale data in y axes, subplot is needed
    color_red = 'tab:red'
    fig, ax1 = plt.subplots()             # subplots() rets fig, array of axes
    ax1.set_ylabel(y1_label, color=color_red)
    ax1.plot(x_data, y1_data, color=color_red)
    ax1.tick_params(axis='y', labelcolor=color_red)  
    # ax1.set_xticklabels(x_label, rotation=45)
    ax1.set_xlabel(x_label)

    color_blue = 'tab:blue'
    ax2 = ax1.twinx()  # twinx() makes ax2 same as ax1, so no need to explicitly set_xlabel again
    ax2.set_ylabel(y2_label, color=color_blue)
    ax2.plot(x_data, y2_data, color=color_blue) # volt color red
    ax2.tick_params(axis='y', labelcolor=color_blue)

    plt.title("Values vs time") # set the whole plot name

    fig.tight_layout()  # otherwise the right y-label is slightly clipped
    # plt.show()
    # fig.canvas.get_supported_filetypes() # shows all supported file types
    #   fig.savefig('my_figure.eps')        # eps does not break on zoom


def plot_dual_axis_new(*axes):

    # assign argument values
    title, save_path = axes[0]
    x_data, x_label = axes[1]
    y1_data, y1_label = axes[2]
    y2_data, y2_label = axes[3]

    font = {'family' : 'normal',
            'weight' : 'bold',
            'size'   : 10}

    plt.rc('font', **font)

    # More versatile wrapper
    fig, host = plt.subplots(figsize=(12,5)) # (width, height) in inches
    par1 = host.twinx()

    if (x_label == ELAPSED_TIME):
        scale_x = 60     # divide by 60 seconds
        li_ticks = np.arange(min(x_data), max(x_data)+1, 600)     # every 600 seconds = 10 minutes freq, assuming 1 Hz sampling rate
        li_labels = list(map(lambda x: int(x/scale_x), li_ticks))      # 60 sec = 1 minutes
        # plt.xticks(li_ticks, li_labels, rotation=45)
        host.xaxis.set_ticks(li_ticks, li_labels, rotation=45)
        host.set_xlabel('Time (minutes)')
    elif (x_label == TIMESTAMP):
        host.set_xlabel('Datetime')
    else:
        # x axis is not time
        host.set_xlabel(x_label)

    # Set y axis labels
    host.set_ylabel(y1_label)
    par1.set_ylabel(y2_label)

    color1 = plt.cm.viridis(0)
    color2 = plt.cm.viridis(0.5)

    # These labels are in the box
    p1, = host.plot(x_data, y1_data,    color=color1, label=y1_label)
    p2, = par1.plot(x_data, y2_data,    color=color2, label=y2_label)

    lns = [p1, p2]
    host.legend(handles=lns, loc='lower center')

    host.yaxis.label.set_color(p1.get_color())
    par1.yaxis.label.set_color(p2.get_color())

    plt.title(title)
    plt.show()
    plt.savefig(save_path)
def plot_xy(*axes):

    font = {'family' : 'normal',
        'weight' : 'bold',
        'size'   : 10}

    matplotlib.rc('font', **font)
    fig = plt.figure(figsize =(12 ,5))
    plt.legend(bbox_to_anchor=(1.0, 1.0),prop={'size': 18,'weight' :'normal'})

    # assign argument values
    title, save_path, y_axis_label = axes[0]

    # assign argument values
    x_data, x_label = axes[0]
    y_data, y_label = axes[1]

    plt.plot(x_data, y_data)
#   plt.scatter(x_data, y_data)

    
    if (x_label == ELAPSED_TIME):
        scale_x = 60     # divide by 60 seconds
        li_ticks = np.arange(min(x_data), max(x_data)+1, 600)     # every 600 seconds = 10 minutes freq
        li_labels = list(map(lambda x: int(x/scale_x), li_ticks))      # 60 sec = 1 minutes
        plt.xticks(li_ticks, li_labels, rotation=45)
        plt.xlabel('Time (minute)')
    elif (x_label == TIMESTAMP):
        plt.xlabel('Datetime')

    plt.title(y_label +" over time, sampling rate = 1 Hz") # set the whole plot name
    
    plt.ylabel(y_label)
    plt.show()
    # plt.savefig('test.eps')

# This function takes max six arguments and min 3 arguments
# First argument is (plt_title, save_path, y_axis_label), where save path is with file name
# Second argument is (x_data, x_label)
# 3rd, 4th, 5th, 6th etc. args are (y_data, y_label) format
# This plot draws multiple y axes values of same scale in different colors and line styles
def plot_multi_line(*axes):

    font = {'family' : 'normal',
        'weight' : 'bold',
        'size'   : 10}

    matplotlib.rc('font', **font)
    fig = plt.figure(figsize =(12 ,5))

    # Set line style for different lines, 5 lines max
    li_linestyle = ["-", "--", "-.", ":"]

    # assign argument values
    title, save_path, y_axis_label = axes[0]
    x_data, x_label = axes[1]
    
    # Gather all y axis labels and data
    for i in range(2, len(axes)):
        y_data, y_label = axes[i]
        # print(y_data, y_label)
        plt.plot(x_data, y_data, label = y_label, linestyle=li_linestyle[i-2])

    # X label and Y label
    if (x_label == ELAPSED_TIME):
        scale_x = 60     # divide by 60 seconds
        li_ticks = np.arange(min(x_data), max(x_data)+1, 600)     # every 600 seconds = 10 minutes freq
        li_labels = list(map(lambda x: int(x/scale_x), li_ticks))      # 60 sec = 1 minutes
        plt.xticks(li_ticks, li_labels, rotation=45)
        plt.xlabel('Time (minute)')
    elif (x_label == TIMESTAMP):
        plt.xlabel('Datetime')
    else:
        plt.xlabel(x_label)
    plt.ylabel(y_axis_label)

    plt.title(title) # set the whole plot name
    plt.legend(bbox_to_anchor=(1.0, 1.0),prop={'size': 10,'weight' :'normal'})
    plt.show()
    fig.savefig(save_path)


# This function takes exactly four arguments
# First argument is (plt_title, save_path), where save path is with file name
# Second argument is (x_data, x_label)
# 3rd, 4th, 5th args are (y_data, y_label) format
# This plot draws 3 y axes values of different scale as different color lines
def multi_scale_plot(*axes):

    # Create figure and subplot manually
    # fig = plt.figure()
    # host = fig.add_subplot(111)

    font = {'family' : 'normal',
        'weight' : 'bold',
        'size'   : 10}

    plt.rc('font', **font)

    # More versatile wrapper
    fig, host = plt.subplots(figsize=(12,5)) # (width, height) in inches
    # (see https://matplotlib.org/3.3.3/api/_as_gen/matplotlib.pyplot.subplots.html)

    # assign argument values
    title, save_path = axes[0]
    x_data, x_label = axes[1]
    y1_data, y1_label = axes[2]
    y2_data, y2_label = axes[3]
    y3_data, y3_label = axes[4]

    par1 = host.twinx()
    par2 = host.twinx()

    if (x_label == ELAPSED_TIME):
        scale_x = 60     # divide by 60 seconds
        li_ticks = np.arange(min(x_data), max(x_data)+1, 600)     # every 600 seconds = 10 minutes freq, assuming 1 Hz sampling rate
        li_labels = list(map(lambda x: int(x/scale_x), li_ticks))      # 60 sec = 1 minutes
        # plt.xticks(li_ticks, li_labels, rotation=45)
        par2.xaxis.set_ticks(li_ticks, li_labels, rotation=45)
        host.set_xlabel('Time (minutes)')
    elif (x_label == TIMESTAMP):
        host.set_xlabel('Datetime')

    # Set y axis labels
    host.set_ylabel(y1_label)
    par1.set_ylabel(y2_label)
    par2.set_ylabel(y3_label)

    color1 = plt.cm.viridis(0)
    color2 = plt.cm.viridis(0.5)
    color3 = plt.cm.viridis(.9)

    # These labels are in the box
    p1, = host.plot(x_data, y1_data,    color=color1, label=y1_label)
    p2, = par1.plot(x_data, y2_data,    color=color2, label=y2_label)
    p3, = par2.plot(x_data, y3_data, color=color3, label=y3_label)

    lns = [p1, p2, p3]
    host.legend(handles=lns, loc='lower center')

    # right, left, top, bottom
    # par2.spines['right'].set_position(('outward', 60))

    # no x-ticks                 
    # par2.xaxis.set_ticks([])

    # set ticks y axis
    if "Contactor" in y3_label:
        par2.yaxis.set_ticks([0,2,2])        # manually set as contactor state can be either 0 or 2

    # Move "y3 -axis to the left
    par2.spines['left'].set_position(('outward', 60))
    par2.spines['left'].set_visible(True)
    par2.yaxis.set_label_position('left')
    par2.yaxis.set_ticks_position('left')

    host.yaxis.label.set_color(p1.get_color())
    par1.yaxis.label.set_color(p2.get_color())
    par2.yaxis.label.set_color(p3.get_color())

    # Best for professional typesetting, e.g. LaTeX
    plt.title(title)
    plt.show()
    plt.savefig(save_path)
    # For raster graphics use the dpi argument. E.g. '[...].png", dpi=200)'