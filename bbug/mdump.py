#
# memory dump program 0.1
# for MC68EZ328
# 
# Kazuhiro Ouchi @kanpapa
#

import sys
import serial
import time

def ser_send(brec):
	rxbuff = ''			# clear receive data buffer

	s_length = len(brec)		# length of the string sent

	ser.reset_input_buffer()	# clear input buffer
	ser.reset_output_buffer()	# clear output buffer

	# send b-record
	ser.write(brec)			# Send B-Record
	timeout_cnt = 100000		# timeout value
	while(out_waiting == 0):	# waiting to be sent
		timeout_cnt -=1
		if (timeout_cnt == 0):
			return 1

	# Read echoback data
	while(s_length):
		timeout_cnt = 100000     # timeout value
		while(in_waiting == 0):  # no data in RX buffer
			timeout_cnt -= 1
			if (timeout_cnt == 0):
				return 1

			rxbuff = rxbuff + ser.read(1)
			s_length -= 1

	print(rxbuff)	# debug print

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
  ser_send("\nFFFFFFAA082C7C")
  ser_send(format(dumpadrs, '08X'))
  ser_send("4E71")
  ser_send("\nFFFFFFAA00") 
  ser_send("\nFFFFFFAA082A7CFFFFF9074E71")
  ser_send("\nFFFFFFAA00")
  ser_send("\nFFFFFFAA081A964E714E714E71")
  ser_send("\nFFFFFFAA00")

  # display feedback data
  val = ser.read()
  print(format(val[0], '02X'), end='')
  print(" ", end='')

  # next address
  dumpadrs = dumpadrs + 1

ser.close()