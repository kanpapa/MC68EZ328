#
# Memory dump program 0.1
# for MC68EZ328
#
# Kazuhiro Ouchi @kanpapa
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
        s_length -= 1

    return 0

# Open Serial port
ser = serial.Serial('/dev/ttyUSB0',9600)

# init bootloader
ser.write(13)
line = ser.read()
print(line)

# init.b code
ser_send(ser, "\nFFFFF1180130")   # emucs init 4-8 not needed without emuchip
ser_send(ser, "\nFFFFF0000110")   # SCR init 3-2
ser_send(ser, "\nFFFFFB0B0100")   # Disable WD 13-5
ser_send(ser, "\nFFFFF42B0103")   # enable clko 7-12
ser_send(ser, "\nFFFFF40B0100")   # set as dedicated chip selects 7-4
ser_send(ser, "\nFFFFF4230100")   # enable *DWE 7-11
ser_send(ser, "\nFFFFFD0D0108")   # disable hardmap 15-6 $0000 is $fffc
ser_send(ser, "\nFFFFFD0F0107")   # clear level 7 interrupt 15-8
ser_send(ser, "\nFFFFF100028000") # CSA at 10000000
ser_send(ser, "\nFFFFF1100201ED") # 8 x 1M - KH
ser_send(ser, "\nFFFFF102028000") # CSB
ser_send(ser, "\nFFFFF112020190") # disable eth + DPRAM - KH
ser_send(ser, "\nFFFFFC00028F00") # DRAM Config at $0 14-6
ser_send(ser, "\nFFFFFC02028667") # DRAM Control
ser_send(ser, "\nFFFFF106020000") # CSD init at 0 -- RAS0 4M-6M, RAS1 6M-8M 4-4
ser_send(ser, "\nFFFFF11602068D") # enable DRAM cs - KH
ser_send(ser, "\nFFFFF3000140")   # IVR
ser_send(ser, "\nFFFFF30404007FFFFF") # IMR

print("\n\nend.")

ser.close()
