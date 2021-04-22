#
# memory dump program 0.1
# for MC68EZ328
# 
# Kazuhiro Ouchi @kanpapa
#

import sys
import serial
import time

def ser_send(ser, brec):
    s_length = len(brec) # length of the string sent

    ser.reset_input_buffer() # clear input buffer
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
        s_length -= 1

    return 0

# Get dump address and count
dumpadrs = int(sys.argv[1],16)
dumpcnt  = int(sys.argv[2],16)
print(format(dumpadrs, '08X'), format(dumpcnt, '04X'))

# Open Serial port
ser = serial.Serial('/dev/ttyUSB0',9600)

# init bootloader
ser.write(13)
line = ser.read()
print(line)

# main loop
for i in range(dumpcnt):
    # display memory address
    m = i % 16
    if m == 0:
        print("\n", end='')
        print(format(dumpadrs, '08X'), end='')
        print(" ", end='')

    # load code  
    ser_send(ser, "\nFFFFFFAA082C7C")
    ser_send(ser, format(dumpadrs, '08X'))
    ser_send(ser, "4E71")
    ser_send(ser, "\nFFFFFFAA00") 
    ser_send(ser, "\nFFFFFFAA082A7CFFFFF9074E71")
    ser_send(ser, "\nFFFFFFAA00")
    ser_send(ser, "\nFFFFFFAA081A964E714E714E71")
    ser_send(ser, "\nFFFFFFAA00")

    # display feedback data
    val = ser.read()
    print(format(val[0], '02X'), end='')
    print(" ", end='')

    # next address
    dumpadrs = dumpadrs + 1

print("\n\nend.")

ser.close()
