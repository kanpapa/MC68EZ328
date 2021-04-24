#
# load a b-record file 0.1
# for MC68EZ328
# date: 2021/04/23
# Kazuhiro Ouchi @kanpapa
#
# Usage:
#        loadb.py <b-record-file>
#

import sys
import serial
import time

def ser_send(ser, brec):
    s_length = len(brec) # length of the string sent

    ser.reset_input_buffer()  # clear input buffer
    ser.reset_output_buffer() # clear output buffer

    # send b-record
    ser.write(brec.encode())    # Send B-Record
    timeout_cnt = 100000        # timeout value
    while(ser.out_waiting > 0): # waiting to be sent
        timeout_cnt -=1
        if (timeout_cnt == 0):
            print("TX timeout")
            return 1

    # Read echoback data
    while(s_length > 0):
        timeout_cnt = 10000000  # timeout value
        while(ser.in_waiting == 0):  # no data in RX buffer
            timeout_cnt -= 1
            if (timeout_cnt == 0):
                print("RX timeout")
                return 1

        rxbuff = ser.read(1)
        print(rxbuff.decode(), end='')
        s_length -= 1

    return 0

# Get dump address and count
bfilename = sys.argv[1]
print(bfilename)

# Open bfile
f = open(bfilename, 'r')

# Open Serial port
ser = serial.Serial('/dev/ttyUSB0',9600)

# init bootloader
#ser.write(13)
#line = ser.read()
#print(line)

datalist = f.readlines()
for data in datalist:
    ser_send(ser, data)
    ser_send(ser, '\n')

f.close()

print("\n\nSend end.")

ser.close()
