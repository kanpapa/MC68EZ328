#
# m68k-monitor dump record to binary program 0.1
# for MC68EZ328
# date: 2021/05/27
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        dtobin.py <DUMP record filename>
#

import sys
import struct

# Get Dump record file name
sfilename = sys.argv[1]

# Open sfile
fin = open(sfilename, 'r')

# Open Output binary file
outfilename = sfilename+".bin"
fout = open(outfilename, 'wb')

datalist = fin.readlines()
for data in datalist:
    cols = 0
    for coldata in data.split():
        cols += 1
        if len(coldata) == 2:
            a = int(coldata, 16);
            fout.write(struct.pack("B", a))
            if cols > 16:
                break;

fout.close()
fin.close()
