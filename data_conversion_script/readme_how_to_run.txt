open terminal
Make sure python3 is installed
Also you can install anaconda and run python from inside anaconda (base)
pip install -r requirements.txt


convert from raw data:
1. To process from raw data, put all raw mf4 files inside "LOG" folder. Having too many raw files (too large) can be hard for RAM to process. So size of LOG folder should be as low as possible
2. Each module is separately handled. Module1 has voltage1 upto voltage 12, module2 has voltage 13 to voltage 23 and so on
3. open terminal, then write "bash sequential_modules.sh" without quotes will convert all raw files in LOG folder and put converted CSV files in "processed" folder.
