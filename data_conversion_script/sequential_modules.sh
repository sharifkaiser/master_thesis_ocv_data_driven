#!/bin/bash
# comment
echo "start of sequential execution of data extraction for all moduels of Kelly LIB"
source /home/avt/anaconda3/bin/activate
echo "conda base activated"
python --version

# Sequentially execute all python files for extracting data from raw
python process_module1.py
python process_module2.py
python process_module3.py
python process_module4.py
python process_module5.py
python process_module6.py
python process_module7.py
python process_module8.py

# python /media/avt/UbuntuExt/ME/MuleCarData/lucas/test_1.py
# python /media/avt/UbuntuExt/ME/MuleCarData/lucas/test_2.py
