EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "DragonOne SBC LAN"
Date "2021-08-18"
Rev "0.2"
Comp "kanpapa.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	3300 3300 3400 3400
Entry Wire Line
	3300 3400 3400 3500
Entry Wire Line
	3300 3500 3400 3600
Entry Wire Line
	3300 3600 3400 3700
Entry Wire Line
	3300 3700 3400 3800
Entry Wire Line
	3300 3800 3400 3900
Entry Wire Line
	3300 3900 3400 4000
Entry Wire Line
	3300 4000 3400 4100
Entry Wire Line
	2300 3400 2200 3500
Entry Wire Line
	2300 3500 2200 3600
Entry Wire Line
	2300 3600 2200 3700
Entry Wire Line
	2300 3700 2200 3800
Entry Wire Line
	2300 3800 2200 3900
Entry Wire Line
	2300 3900 2200 4000
Entry Wire Line
	2300 4000 2200 4100
Entry Wire Line
	5400 4500 5500 4400
Entry Wire Line
	5400 4600 5500 4500
Entry Wire Line
	5400 4700 5500 4600
Entry Wire Line
	5400 4800 5500 4700
Entry Wire Line
	5400 4900 5500 4800
Entry Wire Line
	5400 5000 5500 4900
Entry Wire Line
	5400 5100 5500 5000
Entry Wire Line
	5400 5200 5500 5100
Text Label 5500 4400 0    40   ~ 0
DB8
Text Label 5500 4500 0    40   ~ 0
DB9
Text Label 5500 4600 0    40   ~ 0
DB10
Text Label 5500 4700 0    40   ~ 0
DB11
Text Label 5500 4800 0    40   ~ 0
DB12
Text Label 5500 4900 0    40   ~ 0
DB13
Text Label 5500 5000 0    40   ~ 0
DB14
Text Label 5500 5100 0    40   ~ 0
DB15
Entry Wire Line
	5700 5600 5800 5500
Text Label 5800 5400 0    40   ~ 0
AB1
Entry Wire Line
	5700 5700 5800 5600
Entry Wire Line
	5700 5500 5800 5400
Text Label 5800 5500 0    40   ~ 0
AB2
Text Label 5800 5600 0    40   ~ 0
AB3
Entry Wire Line
	7400 7850 7500 7750
Entry Wire Line
	7500 7850 7600 7750
Entry Wire Line
	7600 7850 7700 7750
Entry Wire Line
	7700 7850 7800 7750
Entry Wire Line
	7800 7850 7900 7750
Entry Wire Line
	7900 7850 8000 7750
Entry Wire Line
	8000 7850 8100 7750
Entry Wire Line
	8100 7850 8200 7750
Text Label 7500 7750 1    40   ~ 0
DB0
Text Label 7600 7750 1    40   ~ 0
DB1
Text Label 7700 7750 1    40   ~ 0
DB2
Text Label 7800 7750 1    40   ~ 0
DB3
Text Label 7900 7750 1    40   ~ 0
DB4
Text Label 8000 7750 1    40   ~ 0
DB5
Text Label 8100 7750 1    40   ~ 0
DB6
Text Label 8200 7750 1    40   ~ 0
DB7
$Comp
L Device:Crystal_Small Y2
U 1 1 58D724C3
P 10100 4200
F 0 "Y2" H 10100 4300 50  0000 C CNN
F 1 "20MHz" H 10100 4100 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 10100 4200 50  0001 C CNN
F 3 "" H 10100 4200 50  0000 C CNN
	1    10100 4200
	0    -1   1    0   
$EndComp
NoConn ~ 9900 6100
NoConn ~ 9900 6200
NoConn ~ 9900 6300
NoConn ~ 9900 6400
NoConn ~ 9900 6500
NoConn ~ 9900 6600
NoConn ~ 9600 7400
NoConn ~ 8200 3200
Wire Wire Line
	5500 4400 6100 4400
Wire Wire Line
	5500 4500 6100 4500
Wire Wire Line
	6100 4600 5500 4600
Wire Wire Line
	5500 4700 6100 4700
Wire Wire Line
	6100 4800 5500 4800
Wire Wire Line
	5500 4900 6100 4900
Wire Wire Line
	5500 5000 6100 5000
Wire Wire Line
	6100 5100 5500 5100
Wire Wire Line
	7500 7400 7500 7750
Wire Wire Line
	7600 7400 7600 7750
Wire Wire Line
	8200 7400 8200 7750
Wire Wire Line
	8100 7400 8100 7750
Wire Wire Line
	8000 7400 8000 7750
Wire Wire Line
	7900 7400 7900 7750
Wire Wire Line
	7800 7400 7800 7750
Wire Wire Line
	7700 7400 7700 7750
Wire Wire Line
	9900 4100 10100 4100
Wire Wire Line
	10100 4300 9900 4300
$Comp
L power:GND #PWR016
U 1 1 58D7E665
P 9500 7400
F 0 "#PWR016" H 9500 7150 50  0001 C CNN
F 1 "GND" H 9500 7250 50  0000 C CNN
F 2 "" H 9500 7400 50  0000 C CNN
F 3 "" H 9500 7400 50  0000 C CNN
	1    9500 7400
	1    0    0    -1  
$EndComp
NoConn ~ 9400 3200
NoConn ~ 9500 3200
NoConn ~ 8900 3200
Wire Wire Line
	6100 6400 5100 6400
Entry Wire Line
	3400 6800 3500 6700
$Comp
L power:VDD #PWR0103
U 1 1 60F64BDB
P 8100 3200
F 0 "#PWR0103" H 8100 3050 50  0001 C CNN
F 1 "VDD" H 8115 3373 50  0000 C CNN
F 2 "" H 8100 3200 50  0001 C CNN
F 3 "" H 8100 3200 50  0001 C CNN
	1    8100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 613C9582
P 7800 3200
F 0 "#PWR0104" H 7800 3050 50  0001 C CNN
F 1 "VDD" H 7815 3373 50  0000 C CNN
F 2 "" H 7800 3200 50  0001 C CNN
F 3 "" H 7800 3200 50  0001 C CNN
	1    7800 3200
	1    0    0    -1  
$EndComp
NoConn ~ 8000 3200
NoConn ~ 8500 3200
NoConn ~ 8300 3200
NoConn ~ 8400 3200
NoConn ~ 8600 3200
NoConn ~ 8700 3200
NoConn ~ 8800 3200
NoConn ~ 9100 3200
NoConn ~ 9200 3200
NoConn ~ 9300 3200
Entry Wire Line
	6000 2550 6100 2650
Text Label 6100 2800 1    50   ~ 0
PF0
Entry Wire Line
	8900 2550 9000 2650
Wire Wire Line
	9000 2650 9000 3200
Text Label 9000 2850 1    50   ~ 0
~IRQ5
Entry Wire Line
	3400 6250 3500 6150
$Comp
L Device:R R4
U 1 1 60DE84C3
P 5850 4200
F 0 "R4" V 5650 4050 50  0000 L CNN
F 1 "4.99K 1%" V 5750 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5780 4200 50  0001 C CNN
F 3 "~" H 5850 4200 50  0001 C CNN
	1    5850 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60E06774
P 5700 4200
F 0 "#PWR0105" H 5700 3950 50  0001 C CNN
F 1 "GND" V 5700 4000 50  0000 C CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60F2BF64
P 6400 7400
F 0 "#PWR0107" H 6400 7150 50  0001 C CNN
F 1 "GND" H 6405 7227 50  0000 C CNN
F 2 "" H 6400 7400 50  0001 C CNN
F 3 "" H 6400 7400 50  0001 C CNN
	1    6400 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60F75EB4
P 6100 5700
F 0 "#PWR0108" H 6100 5450 50  0001 C CNN
F 1 "GND" V 6105 5572 50  0000 R CNN
F 2 "" H 6100 5700 50  0001 C CNN
F 3 "" H 6100 5700 50  0001 C CNN
	1    6100 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 6100 6100 6200
$Comp
L power:VDD #PWR0109
U 1 1 60FA7BEF
P 6100 6100
F 0 "#PWR0109" H 6100 5950 50  0001 C CNN
F 1 "VDD" V 6115 6227 50  0000 L CNN
F 2 "" H 6100 6100 50  0001 C CNN
F 3 "" H 6100 6100 50  0001 C CNN
	1    6100 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0110
U 1 1 60FEE0B8
P 6500 3200
F 0 "#PWR0110" H 6500 3050 50  0001 C CNN
F 1 "VDD" H 6515 3373 50  0000 C CNN
F 2 "" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 610B3842
P 11100 5900
F 0 "R6" V 11200 5900 50  0000 C CNN
F 1 "8.2 1%" V 11150 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11030 5900 50  0001 C CNN
F 3 "~" H 11100 5900 50  0001 C CNN
	1    11100 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 610B4747
P 11100 5600
F 0 "R7" V 11200 5600 50  0000 C CNN
F 1 "8.2 1%" V 11150 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11030 5600 50  0001 C CNN
F 3 "~" H 11100 5600 50  0001 C CNN
	1    11100 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 610B57E8
P 11600 5700
F 0 "C8" H 11692 5746 50  0000 L CNN
F 1 "560pF" H 11692 5655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11600 5700 50  0001 C CNN
F 3 "~" H 11600 5700 50  0001 C CNN
	1    11600 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 610B5C13
P 11100 5250
F 0 "R8" H 10900 5200 50  0000 L CNN
F 1 "100, 1%" H 10700 5300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11030 5250 50  0001 C CNN
F 3 "~" H 11100 5250 50  0001 C CNN
	1    11100 5250
	-1   0    0    1   
$EndComp
Connection ~ 11100 5400
Connection ~ 11100 5100
Wire Wire Line
	12100 5800 11600 5800
Wire Wire Line
	11600 5900 11250 5900
Wire Wire Line
	12100 5600 11600 5600
Connection ~ 11600 5600
Wire Wire Line
	11600 5600 11250 5600
Wire Wire Line
	12100 5400 11100 5400
Wire Wire Line
	12100 5200 11600 5200
Wire Wire Line
	11600 5200 11600 5100
Wire Wire Line
	11600 5100 11100 5100
$Comp
L Device:C_Small C6
U 1 1 60E51161
P 11950 6200
F 0 "C6" H 11650 6300 50  0000 L CNN
F 1 "0.1uF" H 11650 6200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 11950 6200 50  0001 C CNN
F 3 "~" H 11950 6200 50  0001 C CNN
	1    11950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 60E5264C
P 12100 6200
F 0 "C7" H 12200 6300 50  0000 L CNN
F 1 "0.1uF" H 12200 6200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 12100 6200 50  0001 C CNN
F 3 "~" H 12100 6200 50  0001 C CNN
	1    12100 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 60EC12BC
P 12100 6300
F 0 "#PWR0111" H 12100 6050 50  0001 C CNN
F 1 "GND" H 12105 6127 50  0000 C CNN
F 2 "" H 12100 6300 50  0001 C CNN
F 3 "" H 12100 6300 50  0001 C CNN
	1    12100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 6300 12100 6300
Connection ~ 12100 6300
$Comp
L Device:R R1
U 1 1 60F4F4A0
P 11100 4800
F 0 "R1" V 11000 4800 50  0000 C CNN
F 1 "560" V 11000 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11030 4800 50  0001 C CNN
F 3 "~" H 11100 4800 50  0001 C CNN
	1    11100 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 60F53225
P 11100 4500
F 0 "R2" V 11000 4500 50  0000 C CNN
F 1 "560" V 11000 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11030 4500 50  0001 C CNN
F 3 "~" H 11100 4500 50  0001 C CNN
	1    11100 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6108343C
P 5700 7300
F 0 "R3" H 5770 7346 50  0000 L CNN
F 1 "100K" H 5770 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5630 7300 50  0001 C CNN
F 3 "~" H 5700 7300 50  0001 C CNN
	1    5700 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 610842A4
P 5700 6900
F 0 "C3" H 5792 6946 50  0000 L CNN
F 1 "0.1uF" H 5792 6855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5700 6900 50  0001 C CNN
F 3 "~" H 5700 6900 50  0001 C CNN
	1    5700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7000 5700 7050
$Comp
L power:GND #PWR0112
U 1 1 610A2DE8
P 5700 7450
F 0 "#PWR0112" H 5700 7200 50  0001 C CNN
F 1 "GND" H 5705 7277 50  0000 C CNN
F 2 "" H 5700 7450 50  0001 C CNN
F 3 "" H 5700 7450 50  0001 C CNN
	1    5700 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0113
U 1 1 610A4988
P 5700 6800
F 0 "#PWR0113" H 5700 6650 50  0001 C CNN
F 1 "VDD" H 5715 6973 50  0000 C CNN
F 2 "" H 5700 6800 50  0001 C CNN
F 3 "" H 5700 6800 50  0001 C CNN
	1    5700 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6600 5950 6600
Wire Wire Line
	5950 7050 5700 7050
Connection ~ 5700 7050
Wire Wire Line
	5700 7050 5700 7150
Wire Wire Line
	5950 6600 5950 7050
Wire Wire Line
	5100 6500 6100 6500
$Comp
L power:GND #PWR0114
U 1 1 60D46DDD
P 13950 6000
F 0 "#PWR0114" H 13950 5750 50  0001 C CNN
F 1 "GND" H 13955 5827 50  0000 C CNN
F 2 "" H 13950 6000 50  0001 C CNN
F 3 "" H 13950 6000 50  0001 C CNN
	1    13950 6000
	-1   0    0    -1  
$EndComp
Text Label 11900 5600 2    50   ~ 0
TXD-
Text Label 11900 5800 2    50   ~ 0
TXD+
Text Label 11900 5400 2    50   ~ 0
RXD+
Text Label 11900 5200 2    50   ~ 0
RXD-
Wire Wire Line
	13550 5800 12900 5800
Wire Wire Line
	13550 5700 13300 5700
Wire Wire Line
	13300 5700 13300 5600
Wire Wire Line
	13300 5600 12900 5600
Wire Wire Line
	13550 5600 13400 5600
Wire Wire Line
	13400 5600 13400 5400
Wire Wire Line
	13400 5400 12900 5400
Wire Wire Line
	12900 5200 13400 5200
Wire Wire Line
	13400 5200 13400 5300
Wire Wire Line
	13400 5300 13550 5300
NoConn ~ 13550 5500
NoConn ~ 13550 5400
NoConn ~ 13550 5200
NoConn ~ 13550 5100
$Comp
L Device:C_Small C5
U 1 1 610706B1
P 12950 6200
F 0 "C5" H 13050 6200 50  0000 L CNN
F 1 "4700pF/1KV" H 13050 6100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 12950 6200 50  0001 C CNN
F 3 "~" H 12950 6200 50  0001 C CNN
	1    12950 6200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6107197F
P 13150 6200
F 0 "C4" H 12950 6200 50  0000 L CNN
F 1 "4700pF/1kV" H 12650 6100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D7.0mm_W2.5mm_P5.00mm" H 13150 6200 50  0001 C CNN
F 3 "~" H 13150 6200 50  0001 C CNN
	1    13150 6200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 610B5DF6
P 12950 6300
F 0 "#PWR0115" H 12950 6050 50  0001 C CNN
F 1 "GND" H 12955 6127 50  0000 C CNN
F 2 "" H 12950 6300 50  0001 C CNN
F 3 "" H 12950 6300 50  0001 C CNN
	1    12950 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13150 6300 12950 6300
Connection ~ 12950 6300
Text Label 13100 5800 2    50   ~ 0
TD+
Text Label 13100 5600 2    50   ~ 0
TD-
Text Label 13100 5400 2    50   ~ 0
RD+
Text Label 13100 5200 2    50   ~ 0
RD-
Wire Wire Line
	11600 5800 11600 5900
Connection ~ 11600 5800
Wire Wire Line
	12100 5300 11950 5300
Wire Wire Line
	11950 5300 11950 6100
Wire Wire Line
	12900 5700 12950 5700
Wire Wire Line
	12950 5700 12950 6100
Wire Wire Line
	13150 5300 13150 6100
Wire Wire Line
	12900 5300 13150 5300
Wire Wire Line
	11250 4500 11600 4500
Wire Wire Line
	9900 4500 10950 4500
Wire Wire Line
	9900 4800 10950 4800
Wire Wire Line
	9900 5100 11100 5100
Wire Wire Line
	9900 5400 11100 5400
Wire Wire Line
	9900 5600 10950 5600
Wire Wire Line
	9900 5900 10950 5900
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 60EA4120
P 2750 3600
F 0 "J2" H 2800 4117 50  0000 C CNN
F 1 "DATA_BUS" H 2800 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2750 3600 50  0001 C CNN
F 3 "~" H 2750 3600 50  0001 C CNN
	1    2750 3600
	1    0    0    -1  
$EndComp
Entry Wire Line
	2200 4950 2300 4850
Entry Wire Line
	2200 5050 2300 4950
Entry Wire Line
	3300 4850 3400 4950
Text Label 2300 4850 0    50   ~ 0
AB1
Text Label 3150 4850 0    50   ~ 0
AB2
Text Label 2300 4950 0    50   ~ 0
AB3
NoConn ~ 3050 5250
NoConn ~ 3050 5350
Text Label 2300 3300 0    50   ~ 0
DB0
Entry Wire Line
	2200 3400 2300 3300
Text Label 3100 3300 0    50   ~ 0
DB1
Entry Wire Line
	2200 5150 2300 5050
Entry Wire Line
	3300 5150 3400 5250
Entry Wire Line
	2200 5350 2300 5250
Text Label 3100 5150 0    50   ~ 0
~RD
Text Label 2300 5050 0    50   ~ 0
~RESET
Text Label 2300 3400 0    50   ~ 0
DB2
Text Label 3100 3400 0    50   ~ 0
DB3
Text Label 2300 3500 0    50   ~ 0
DB4
Text Label 3100 3500 0    50   ~ 0
DB5
Text Label 2300 3600 0    50   ~ 0
DB6
Text Label 3100 3600 0    50   ~ 0
DB7
Text Label 2300 3700 0    50   ~ 0
DB8
Text Label 2300 3800 0    50   ~ 0
DB10
Text Label 2300 3900 0    50   ~ 0
DB12
Text Label 2300 4000 0    50   ~ 0
DB14
Wire Wire Line
	2300 3300 2550 3300
Wire Wire Line
	2300 3400 2550 3400
Wire Wire Line
	2300 3500 2550 3500
Wire Wire Line
	2300 3600 2550 3600
Wire Wire Line
	2300 3700 2550 3700
Wire Wire Line
	2300 3800 2550 3800
Wire Wire Line
	2300 3900 2550 3900
Wire Wire Line
	2300 4000 2550 4000
Text Label 3100 3700 0    50   ~ 0
DB9
Text Label 3100 3800 0    50   ~ 0
DB11
Text Label 3100 3900 0    50   ~ 0
DB13
Text Label 3100 4000 0    50   ~ 0
DB15
Connection ~ 3400 4250
Wire Bus Line
	3400 4250 5400 4250
Wire Wire Line
	3050 3300 3300 3300
Wire Wire Line
	3050 3400 3300 3400
Wire Wire Line
	3050 3500 3300 3500
Wire Wire Line
	3050 3600 3300 3600
Wire Wire Line
	3050 3700 3300 3700
Wire Wire Line
	3050 3800 3300 3800
Wire Wire Line
	3050 3900 3300 3900
Wire Wire Line
	3050 4000 3300 4000
Wire Bus Line
	2200 4250 3400 4250
Connection ~ 3400 5700
Wire Bus Line
	3300 5700 3400 5700
Wire Wire Line
	3050 4850 3300 4850
Wire Wire Line
	2300 4850 2550 4850
Wire Wire Line
	2300 4950 2550 4950
Wire Bus Line
	2200 5700 3400 5700
Wire Wire Line
	2300 5050 2550 5050
Wire Wire Line
	2300 5250 2550 5250
Wire Wire Line
	3050 5150 3300 5150
Entry Wire Line
	2200 5450 2300 5350
Wire Wire Line
	2300 5350 2550 5350
Text Label 2300 5350 0    50   ~ 0
PF0
Text Label 2300 5250 0    50   ~ 0
~CSB0
Wire Bus Line
	3400 5700 5000 5700
Wire Wire Line
	5800 5400 6100 5400
Wire Wire Line
	5800 5500 6100 5500
Wire Wire Line
	5800 5600 6100 5600
Entry Wire Line
	2200 5250 2300 5150
Text Label 2300 5150 0    50   ~ 0
~UWE
Wire Wire Line
	6100 2650 6100 4100
Wire Wire Line
	6000 4200 6100 4200
$Comp
L 74xGxx:74LVC1G00 U3
U 1 1 60D72977
P 4350 7450
F 0 "U3" H 4500 7700 50  0000 C CNN
F 1 "TC7SH00FU" H 4600 7600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 4350 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4350 7450 50  0001 C CNN
	1    4350 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G32 U1
U 1 1 60D7B57C
P 4350 6200
F 0 "U1" H 4100 6450 50  0000 C CNN
F 1 "TC7S32FU" H 4100 6350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 4350 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4350 6200 50  0001 C CNN
	1    4350 6200
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC1G32 U2
U 1 1 60D7C280
P 4350 6650
F 0 "U2" H 4100 6950 50  0000 C CNN
F 1 "TC7S32FU" H 4100 6850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 4350 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 4350 6650 50  0001 C CNN
	1    4350 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6700 3900 6700
Wire Wire Line
	3500 6150 4050 6150
Wire Wire Line
	4050 6250 3900 6250
Wire Wire Line
	3900 6250 3900 6700
Connection ~ 3900 6700
Wire Wire Line
	3900 6700 4050 6700
Entry Wire Line
	3400 6700 3500 6600
Wire Wire Line
	3500 6600 4050 6600
Text Label 3500 6150 0    50   ~ 0
~UWE
Text Label 3500 6600 0    50   ~ 0
~RD
Text Label 3500 6700 0    50   ~ 0
~CSB0
Wire Wire Line
	4600 6200 5100 6200
Wire Wire Line
	5100 6200 5100 6400
Wire Bus Line
	5000 2550 5000 5700
Wire Wire Line
	5100 6500 5100 6650
Wire Wire Line
	5100 6650 4600 6650
Entry Wire Line
	3300 4950 3400 5050
Wire Wire Line
	3050 4950 3300 4950
Text Label 3150 4950 0    50   ~ 0
AB4
Wire Wire Line
	2300 5150 2550 5150
Entry Wire Line
	3300 5050 3400 5150
Wire Wire Line
	3050 5050 3300 5050
Text Label 3100 5050 0    50   ~ 0
~IRQ5
Wire Wire Line
	4050 7400 4050 7500
Entry Wire Line
	3950 7000 4050 7100
Wire Wire Line
	4050 7100 4050 7400
Connection ~ 4050 7400
Text Label 4050 7150 0    50   ~ 0
~RESET
Wire Wire Line
	5700 7050 5100 7050
Wire Wire Line
	5100 7050 5100 7450
Wire Wire Line
	5100 7450 4600 7450
Entry Wire Line
	7400 2550 7500 2650
Wire Wire Line
	7500 2650 7500 3200
Text Label 7500 2800 1    50   ~ 0
AB4
$Comp
L power:GND #PWR0102
U 1 1 60E48A2E
P 6100 5300
F 0 "#PWR0102" H 6100 5050 50  0001 C CNN
F 1 "GND" V 6050 5200 50  0000 R CNN
F 2 "" H 6100 5300 50  0001 C CNN
F 3 "" H 6100 5300 50  0001 C CNN
	1    6100 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60E552AE
P 3050 2750
F 0 "#PWR0106" H 3050 2500 50  0001 C CNN
F 1 "GND" H 3055 2577 50  0000 C CNN
F 2 "" H 3050 2750 50  0001 C CNN
F 3 "" H 3050 2750 50  0001 C CNN
	1    3050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60E57460
P 2050 2600
F 0 "#FLG0101" H 2050 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 2773 50  0000 C CNN
F 2 "" H 2050 2600 50  0001 C CNN
F 3 "~" H 2050 2600 50  0001 C CNN
	1    2050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0117
U 1 1 60E55A95
P 3050 2550
F 0 "#PWR0117" H 3050 2400 50  0001 C CNN
F 1 "VDD" H 3065 2723 50  0000 C CNN
F 2 "" H 3050 2550 50  0001 C CNN
F 3 "" H 3050 2550 50  0001 C CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0118
U 1 1 60E627AC
P 2050 2600
F 0 "#PWR0118" H 2050 2450 50  0001 C CNN
F 1 "VDD" H 2065 2773 50  0000 C CNN
F 2 "" H 2050 2600 50  0001 C CNN
F 3 "" H 2050 2600 50  0001 C CNN
	1    2050 2600
	1    0    0    1   
$EndComp
$Comp
L power:VDD #PWR0101
U 1 1 60D94EC6
P 4350 6100
F 0 "#PWR0101" H 4350 5950 50  0001 C CNN
F 1 "VDD" H 4450 6200 50  0000 C CNN
F 2 "" H 4350 6100 50  0001 C CNN
F 3 "" H 4350 6100 50  0001 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0119
U 1 1 60D95A5E
P 4350 6550
F 0 "#PWR0119" H 4350 6400 50  0001 C CNN
F 1 "VDD" H 4450 6600 50  0000 C CNN
F 2 "" H 4350 6550 50  0001 C CNN
F 3 "" H 4350 6550 50  0001 C CNN
	1    4350 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60D96698
P 4350 6750
F 0 "#PWR0120" H 4350 6500 50  0001 C CNN
F 1 "GND" H 4450 6650 50  0000 C CNN
F 2 "" H 4350 6750 50  0001 C CNN
F 3 "" H 4350 6750 50  0001 C CNN
	1    4350 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 60D97376
P 4350 6300
F 0 "#PWR0121" H 4350 6050 50  0001 C CNN
F 1 "GND" H 4450 6200 50  0000 C CNN
F 2 "" H 4350 6300 50  0001 C CNN
F 3 "" H 4350 6300 50  0001 C CNN
	1    4350 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 60D97583
P 4350 7550
F 0 "#PWR0122" H 4350 7300 50  0001 C CNN
F 1 "GND" H 4355 7377 50  0000 C CNN
F 2 "" H 4350 7550 50  0001 C CNN
F 3 "" H 4350 7550 50  0001 C CNN
	1    4350 7550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0123
U 1 1 60D97EED
P 4350 7350
F 0 "#PWR0123" H 4350 7200 50  0001 C CNN
F 1 "VDD" H 4365 7523 50  0000 C CNN
F 2 "" H 4350 7350 50  0001 C CNN
F 3 "" H 4350 7350 50  0001 C CNN
	1    4350 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 610A9A6F
P 11600 4350
F 0 "D1" V 11639 4232 50  0000 R CNN
F 1 "LINK LED" V 11548 4232 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 11600 4350 50  0001 C CNN
F 3 "~" H 11600 4350 50  0001 C CNN
	1    11600 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 610ABCCB
P 12350 4350
F 0 "D2" V 12389 4232 50  0000 R CNN
F 1 "LAN LED" V 12298 4232 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 12350 4350 50  0001 C CNN
F 3 "~" H 12350 4350 50  0001 C CNN
	1    12350 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11250 4800 12350 4800
Wire Wire Line
	12350 4800 12350 4500
Wire Wire Line
	11600 4200 12350 4200
$Comp
L power:VDD #PWR0116
U 1 1 610FC494
P 12350 4200
F 0 "#PWR0116" H 12350 4050 50  0001 C CNN
F 1 "VDD" H 12365 4373 50  0000 C CNN
F 2 "" H 12350 4200 50  0001 C CNN
F 3 "" H 12350 4200 50  0001 C CNN
	1    12350 4200
	1    0    0    -1  
$EndComp
Connection ~ 12350 4200
Connection ~ 5000 5700
Wire Bus Line
	5000 5700 5700 5700
Wire Bus Line
	5000 5700 5000 7000
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J3
U 1 1 6119ED49
P 2750 5050
F 0 "J3" H 2800 5467 50  0000 C CNN
F 1 "CTRL_BUS" H 2800 5376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 2750 5050 50  0001 C CNN
F 3 "~" H 2750 5050 50  0001 C CNN
	1    2750 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 610715C4
P 2750 2650
F 0 "J4" H 2800 2967 50  0000 C CNN
F 1 "PWR" H 2800 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2750 2650 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0124
U 1 1 6107D54C
P 2550 2550
F 0 "#PWR0124" H 2550 2400 50  0001 C CNN
F 1 "VDD" H 2565 2723 50  0000 C CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
	1    2550 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6108644A
P 2550 2750
F 0 "#PWR0125" H 2550 2500 50  0001 C CNN
F 1 "GND" H 2555 2577 50  0000 C CNN
F 2 "" H 2550 2750 50  0001 C CNN
F 3 "" H 2550 2750 50  0001 C CNN
	1    2550 2750
	1    0    0    -1  
$EndComp
NoConn ~ 3050 2650
NoConn ~ 2550 2650
$Comp
L Device:C_Small C1
U 1 1 610D11A4
P 3400 2650
F 0 "C1" H 3350 2850 50  0000 L CNN
F 1 "0.1uF" H 3300 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3400 2650 50  0001 C CNN
F 3 "~" H 3400 2650 50  0001 C CNN
	1    3400 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 610D1C4D
P 3650 2650
F 0 "C2" H 3600 2850 50  0000 L CNN
F 1 "0.1uF" H 3550 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3650 2650 50  0001 C CNN
F 3 "~" H 3650 2650 50  0001 C CNN
	1    3650 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 610D258F
P 3900 2650
F 0 "C9" H 3850 2850 50  0000 L CNN
F 1 "0.1uF" H 3800 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3900 2650 50  0001 C CNN
F 3 "~" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 3400 2550
Connection ~ 3050 2550
Connection ~ 3400 2550
Wire Wire Line
	3400 2550 3650 2550
Connection ~ 3650 2550
Wire Wire Line
	3650 2550 3900 2550
Wire Wire Line
	3050 2750 3400 2750
Connection ~ 3050 2750
Connection ~ 3400 2750
Wire Wire Line
	3400 2750 3650 2750
Connection ~ 3650 2750
Wire Wire Line
	3650 2750 3900 2750
Wire Wire Line
	7600 3200 7700 3200
Wire Wire Line
	6500 3200 6600 3200
Wire Wire Line
	6400 7400 6500 7400
Wire Wire Line
	8300 7400 8400 7400
$Comp
L DragonOne_lan:CS8900A U4
U 1 1 611E5CD9
P 8000 5300
F 0 "U4" H 7350 5600 118 0000 L CNN
F 1 "CS8900A-CQ3Z" H 7350 5300 118 0000 L CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 6600 7500 50  0001 C CNN
F 3 "" H 8000 5300 60  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3200 7400 3200
Wire Wire Line
	6100 5900 6100 6000
Connection ~ 6100 6100
Wire Wire Line
	7300 7400 7400 7400
Connection ~ 6400 7400
Wire Wire Line
	9400 7400 9500 7400
Connection ~ 6500 3200
Connection ~ 9500 7400
$Comp
L DragonOne_lan:E2023EL TR1
U 1 1 61202C7B
P 12500 5500
F 0 "TR1" H 12500 6042 50  0000 C CNN
F 1 "E2023EL" H 12500 5951 50  0000 C CNN
F 2 "Transformer_SMD:Transformer_Ethernet_Bourns_PT61017PEL" H 12500 5000 50  0001 C CNN
F 3 "" H 11800 5850 50  0001 C CNN
	1    12500 5500
	1    0    0    1   
$EndComp
Wire Wire Line
	6600 3200 6700 3200
Connection ~ 6600 3200
Connection ~ 6700 3200
Wire Wire Line
	6700 3200 6800 3200
Connection ~ 6800 3200
Wire Wire Line
	6800 3200 6900 3200
Connection ~ 6900 3200
Wire Wire Line
	6900 3200 7000 3200
Connection ~ 7000 3200
Wire Wire Line
	7000 3200 7100 3200
Wire Wire Line
	7300 7400 7200 7400
Connection ~ 7300 7400
Connection ~ 6500 7400
Connection ~ 6600 7400
Wire Wire Line
	6600 7400 6500 7400
Connection ~ 6700 7400
Wire Wire Line
	6700 7400 6600 7400
Connection ~ 6800 7400
Wire Wire Line
	6800 7400 6700 7400
Connection ~ 6900 7400
Wire Wire Line
	6900 7400 6800 7400
Connection ~ 7000 7400
Wire Wire Line
	7000 7400 6900 7400
Connection ~ 7100 7400
Wire Wire Line
	7100 7400 7000 7400
Connection ~ 7200 7400
Wire Wire Line
	7200 7400 7100 7400
Wire Wire Line
	8400 7400 8500 7400
Connection ~ 8400 7400
Connection ~ 9400 7400
Connection ~ 8500 7400
Wire Wire Line
	8500 7400 8600 7400
Connection ~ 8600 7400
Wire Wire Line
	8600 7400 8700 7400
Connection ~ 8700 7400
Wire Wire Line
	8700 7400 8800 7400
Connection ~ 8800 7400
Wire Wire Line
	8800 7400 8900 7400
Connection ~ 8900 7400
Wire Wire Line
	8900 7400 9000 7400
Connection ~ 9000 7400
Wire Wire Line
	9000 7400 9100 7400
Connection ~ 9100 7400
Wire Wire Line
	9100 7400 9200 7400
Connection ~ 9200 7400
Wire Wire Line
	9200 7400 9300 7400
Connection ~ 9300 7400
Wire Wire Line
	9300 7400 9400 7400
Wire Wire Line
	7300 3200 7200 3200
Connection ~ 7300 3200
Connection ~ 7100 3200
Connection ~ 7200 3200
Wire Wire Line
	7200 3200 7100 3200
Wire Wire Line
	7700 3200 7800 3200
Connection ~ 7700 3200
Connection ~ 7800 3200
Wire Wire Line
	6100 5700 6100 5800
Connection ~ 6100 5700
Connection ~ 6100 5900
Connection ~ 6100 5800
Wire Wire Line
	6100 5800 6100 5900
Wire Wire Line
	12100 5700 12100 6100
$Comp
L Connector:8P8C_Shielded J1
U 1 1 6121AB65
P 13950 5500
F 0 "J1" H 13620 5539 50  0000 R CNN
F 1 "8P8C_Shielded" H 13620 5448 50  0000 R CNN
F 2 "DragonOne_lan:RJ45_Akizuki_7810-8P8C" V 13950 5525 50  0001 C CNN
F 3 "~" V 13950 5525 50  0001 C CNN
	1    13950 5500
	-1   0    0    -1  
$EndComp
Wire Bus Line
	3400 7000 5000 7000
Wire Bus Line
	5700 5500 5700 5700
Wire Bus Line
	3400 6250 3400 7000
Wire Bus Line
	5000 2550 8900 2550
Wire Bus Line
	3400 4950 3400 5700
Wire Bus Line
	2200 4950 2200 5700
Wire Bus Line
	5400 7850 8100 7850
Wire Bus Line
	5400 4250 5400 7850
Wire Bus Line
	2200 3400 2200 4250
Wire Bus Line
	3400 3400 3400 4250
$EndSCHEMATC
