#
# B-record to m68k-monitor D-record convert dump program 0.1
# for MC68EZ328
# date: 2021/05/12
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        btod.py <D-record filename>
#

import sys

# Get S-record file name
sfilename = sys.argv[1]

# Open sfile
f = open(sfilename, 'r')

datalist = f.readlines()
for data in datalist:
    start = 10
    count = int(data[8:10], 16) # Get data length
    address = int(data[0:8], 16)
    for i in range(0, count):
        if i % 8 == 0:
            print('')
            print('D ', end='')
            print(format(address, '08X'), end='')
        print(' ', end='')
        print(data[start+i*2:start+i*2+2], end='')
        address += 1

f.close()
