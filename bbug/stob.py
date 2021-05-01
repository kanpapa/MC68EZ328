#
# S-record to B-record convert dump program 0.1
# for MC68EZ328
# date: 2021/05/01
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        stob.py <S-record filename>
#

import sys

# Get S-record file name
sfilename = sys.argv[1]

# Open sfile
f = open(sfilename, 'r')

datalist = f.readlines()
for data in datalist:
    if data[0] == 'S':             # Check S-record
        count = int(data[2:4], 16) # Get data length
        if data[1] == '1':         # S1 TYPE  S1 13 0000 00....100 B4
            print('0000', end='')
            print(data[4:8], end='')
            count = count - 3
            print(format(count, '02X'), end='')
            print(data[8:8+count*2])
        elif data[1] == '2':       # S2 TYPE  S2 13 000000 00....100 B4
            print('00', end='')
            print(data[4:6], end='')
            count = count - 4
            print(format(count, '02X'), end='')
            print(data[10:10+count*2])
        elif data[1] == '3':       # S3 TYPE  S3 13 00000000 00....100 B4
            print(data[4:8], end='')
            count = count - 5
            print(format(count, '02X'), end='')
            print(data[12:12+count*2])
f.close()