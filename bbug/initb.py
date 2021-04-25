#
# System initalzation program 0.1
# for MC68EZ328 DragonOne SBC
# date: 2021/04/23
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
        print(rxbuff.decode(), end='')
        s_length -= 1

    return 0

# Open Serial port
#ser = serial.Serial('/dev/ttyUSB0',9600)
ser = serial.Serial('/dev/tty.usbserial-A601E8ZH',9600)


# init bootloader
#ser.write(13)
#line = ser.read()
#print(line)

# init.b code
ser_send(ser, "FFFFF1180130\n")   # emucs init 4-8 not needed without emuchip
ser_send(ser, "FFFFF0000110\n")   # SCR init 3-2
ser_send(ser, "FFFFFB0B0100\n")   # Disable WD 13-5
ser_send(ser, "FFFFF42B0103\n")   # enable clko 7-12
ser_send(ser, "FFFFF40B0100\n")   # set as dedicated chip selects 7-4
ser_send(ser, "FFFFF4230100\n")   # enable *DWE 7-11
ser_send(ser, "FFFFFD0D0108\n")   # disable hardmap 15-6 $0000 is $fffc
ser_send(ser, "FFFFFD0F0107\n")   # clear level 7 interrupt 15-8
ser_send(ser, "FFFFF100028000\n") # CSA at 10000000
ser_send(ser, "FFFFF1100201ED\n") # 8 x 1M - KH
ser_send(ser, "FFFFF102028000\n") # CSB
ser_send(ser, "FFFFF112020190\n") # disable eth + DPRAM - KH
ser_send(ser, "FFFFFC00028F00\n") # DRAM Config at $0 14-6
ser_send(ser, "FFFFFC02028667\n") # DRAM Control
ser_send(ser, "FFFFF106020000\n") # CSD init at 0 -- RAS0 4M-6M, RAS1 6M-8M 4-4
ser_send(ser, "FFFFF11602068D\n") # enable DRAM cs - KH
ser_send(ser, "FFFFF3000140\n")   # IVR
ser_send(ser, "FFFFF30404007FFFFF\n") # IMR

print("\n\nend.")

ser.close()
