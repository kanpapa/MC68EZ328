#
# S-record to m68k-monitor D-record convert dump program 0.1
# for MC68EZ328
# date: 2021/05/09
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        stod.py <S-record filename>
#

import sys

# Get S-record file name
sfilename = sys.argv[1]

# Open sfile
f = open(sfilename, 'r')

datalist = f.readlines()
for data in datalist:
    start = 0
    if data[0] == 'S':             # Check S-record
        count = int(data[2:4], 16) # Get data length
        if data[1] == '1':         # S1 TYPE  S1 13 0000 00....100 B4
            address = int(data[4:8], 16)
            count = count - 3
            start = 8
        elif data[1] == '2':       # S2 TYPE  S2 13 000000 00....100 B4
            address = int(data[4:10], 16)
            count = count - 4
            start = 10
        elif data[1] == '3':       # S3 TYPE  S3 13 00000000 00....100 B4
            address = int(data[4:12], 16)
            count = count - 5
            start = 12
    if start != 0:
        for i in range(0, count):
            if i % 8 == 0:
                print('')
                print('D ', end='')
                print(format(address, '08X'), end='')
            print(' ', end='')
            print(data[start+i*2:start+i*2+2], end='')
            address += 1

f.close()
