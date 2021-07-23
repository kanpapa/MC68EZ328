#
# Binary to B-record convert program 0.1
# for MC68EZ328
# date: 2021/07/23
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        bin2b.py <Binary filename>
#

import sys

# Get Binary file name
sfilename = sys.argv[1]

# Open binary file
f = open(sfilename, 'rb')

# Kernel at x instead of 0
pc = 0x00200000
linecounter = 0
eof = False

# command buffer
command = ''

while not eof: 
    b = f.read(1)
    if not b:
        eof = True
    else:
        command = command + b.hex().upper()

    linecounter += 1
    if linecounter == 0x15 or eof == True:
        print(format(pc, '08X'), end='')
        print(format(linecounter, '02X'), end='')
        print(command)
        pc += linecounter
        linecounter = 0
        command = ''

f.close();
