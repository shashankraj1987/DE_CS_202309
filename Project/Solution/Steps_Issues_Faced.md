## Steps Taken

- Import the dataset with Python into a dataframe.
- #Issue: While importing, there was an issue with file encoding. UnicodeDecodeError: 'utf-8' codec can't decode byte 0x94 in position 7344: invalid start byte.
- #Issue: Date formats are different. Some files have "-" as separators while some have "/". Also, the day value has inconsistent length.
- #Issue: Some date Values were null
- #Issue: Order date had mixed format of dd/MM values. Some were dd/MM while some MM/dd.
