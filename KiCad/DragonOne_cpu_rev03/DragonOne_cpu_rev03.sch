EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "DragonOne MC68EZ328 SBC"
Date "2021-09-19"
Rev "0.3"
Comp "kanpapa.com"
Comment1 "KiCad version by Kazuhiro Ouchi @kanpapa"
Comment2 "DragonOne / Based on EZ328SIMM Copyright Khaled Hassounah"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mc68ez328:MC68EZ328 U1
U 2 1 604688D5
P 800 1100
F 0 "U1" H 1165 1146 50  0000 L CNN
F 1 "MC68EZ328" H 1165 1055 50  0000 L CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 800 1250 50  0001 C CNN
F 3 "" H 800 1100 50  0001 C CNN
	2    800  1100
	1    0    0    -1  
$EndComp
Connection ~ 800  1400
Connection ~ 800  800 
$Comp
L power:GND #PWR0101
U 1 1 6046C674
P 800 1400
F 0 "#PWR0101" H 800 1150 50  0001 C CNN
F 1 "GND" H 805 1227 50  0000 C CNN
F 2 "" H 800 1400 50  0001 C CNN
F 3 "" H 800 1400 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 6046CF08
P 800 800
F 0 "#PWR0102" H 800 650 50  0001 C CNN
F 1 "VDD" H 815 973 50  0000 C CNN
F 2 "" H 800 800 50  0001 C CNN
F 3 "" H 800 800 50  0001 C CNN
	1    800  800 
	1    0    0    -1  
$EndComp
$Comp
L mc68ez328:AM29LV033 U4
U 1 1 60470A65
P 2750 7650
F 0 "U4" H 2950 9000 50  0000 C CNN
F 1 "AM29LV033" H 3100 8900 50  0000 C CNN
F 2 "DragonOne_rev00:TSOP-I-40_18.4x10mm_P0.5mm" H 2750 6750 50  0001 C CNN
F 3 "" H 2750 6750 50  0001 C CNN
	1    2750 7650
	1    0    0    -1  
$EndComp
$Comp
L mc68ez328:AM29LV033 U3
U 1 1 60473237
P 5100 7650
F 0 "U3" H 5300 9000 50  0000 C CNN
F 1 "AM29LV033" H 5450 8900 50  0000 C CNN
F 2 "DragonOne_rev00:TSOP-I-40_18.4x10mm_P0.5mm" H 5100 6750 50  0001 C CNN
F 3 "" H 5100 6750 50  0001 C CNN
	1    5100 7650
	1    0    0    -1  
$EndComp
$Comp
L mt4lc4m16r6:MT4LC4M16R6 U2
U 1 1 604784CF
P 7950 7600
F 0 "U2" H 8200 8900 50  0000 C CNN
F 1 "MT4LC4M16R6" H 8400 8800 50  0000 C CNN
F 2 "DragonOne_rev00:TSOP-II-50_21x10.16mm_P0.8mm" H 7950 7600 50  0001 C CIN
F 3 "" H 7950 7350 50  0001 C CNN
	1    7950 7600
	1    0    0    -1  
$EndComp
Entry Wire Line
	2850 5550 2950 5650
Wire Wire Line
	2850 4850 2850 5550
Connection ~ 3750 5650
Entry Wire Line
	5950 7250 6050 7150
Entry Wire Line
	5950 7250 6050 7150
Entry Wire Line
	5950 7150 6050 7050
Entry Wire Line
	5950 7050 6050 6950
Entry Wire Line
	5950 6950 6050 6850
Entry Wire Line
	5950 6850 6050 6750
Entry Wire Line
	5950 6750 6050 6650
Entry Wire Line
	5950 6650 6050 6550
Entry Wire Line
	5950 6550 6050 6450
Wire Wire Line
	5800 6550 5950 6550
Wire Wire Line
	5800 6650 5950 6650
Wire Wire Line
	5800 6750 5950 6750
Wire Wire Line
	5950 6850 5800 6850
Wire Wire Line
	5800 6950 5950 6950
Wire Wire Line
	5950 7050 5800 7050
Wire Wire Line
	5800 7150 5950 7150
Wire Wire Line
	5950 7250 5800 7250
Entry Wire Line
	3650 7250 3750 7150
Entry Wire Line
	3650 7150 3750 7050
Entry Wire Line
	3650 7050 3750 6950
Entry Wire Line
	3650 6950 3750 6850
Entry Wire Line
	3650 6850 3750 6750
Entry Wire Line
	3650 6750 3750 6650
Entry Wire Line
	3650 6650 3750 6550
Entry Wire Line
	3650 6550 3750 6450
Wire Wire Line
	3450 6550 3650 6550
Wire Wire Line
	3650 6650 3450 6650
Wire Wire Line
	3450 6750 3650 6750
Wire Wire Line
	3650 6850 3450 6850
Wire Wire Line
	3450 6950 3650 6950
Wire Wire Line
	3650 7050 3450 7050
Wire Wire Line
	3450 7150 3650 7150
Wire Wire Line
	3650 7250 3450 7250
Entry Wire Line
	2950 5550 3050 5650
Entry Wire Line
	3050 5550 3150 5650
Entry Wire Line
	3150 5550 3250 5650
Entry Wire Line
	3250 5550 3350 5650
Entry Wire Line
	3350 5550 3450 5650
Entry Wire Line
	3450 5550 3550 5650
Entry Wire Line
	3550 5550 3650 5650
Entry Wire Line
	3850 5550 3950 5650
Entry Wire Line
	3750 5550 3850 5650
Entry Wire Line
	4450 5550 4550 5650
Entry Wire Line
	4350 5550 4450 5650
Entry Wire Line
	4250 5550 4350 5650
Entry Wire Line
	4150 5550 4250 5650
Entry Wire Line
	4050 5550 4150 5650
Entry Wire Line
	3950 5550 4050 5650
Wire Wire Line
	4450 4850 4450 5550
Wire Wire Line
	4350 4850 4350 5550
Wire Wire Line
	4250 4850 4250 5550
Wire Wire Line
	4150 5550 4150 4850
Wire Wire Line
	4050 4850 4050 5550
Wire Wire Line
	3950 5550 3950 4850
Wire Wire Line
	3850 4850 3850 5550
Wire Wire Line
	3750 5550 3750 4850
Wire Wire Line
	3550 4850 3550 5550
Wire Wire Line
	3450 5550 3450 4850
Wire Wire Line
	3350 4850 3350 5550
Wire Wire Line
	3250 5550 3250 4850
Wire Wire Line
	3150 4850 3150 5550
Wire Wire Line
	3050 5550 3050 4850
Wire Wire Line
	2950 4850 2950 5550
Wire Wire Line
	5100 6150 5200 6150
Wire Wire Line
	2750 6150 2850 6150
$Comp
L power:VDD #PWR0103
U 1 1 604931E9
P 5100 6150
F 0 "#PWR0103" H 5100 6000 50  0001 C CNN
F 1 "VDD" H 5115 6323 50  0000 C CNN
F 2 "" H 5100 6150 50  0001 C CNN
F 3 "" H 5100 6150 50  0001 C CNN
	1    5100 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 60494FAB
P 2750 6150
F 0 "#PWR0104" H 2750 6000 50  0001 C CNN
F 1 "VDD" H 2765 6323 50  0000 C CNN
F 2 "" H 2750 6150 50  0001 C CNN
F 3 "" H 2750 6150 50  0001 C CNN
	1    2750 6150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 60496262
P 7750 6300
F 0 "#PWR0105" H 7750 6150 50  0001 C CNN
F 1 "VDD" H 7765 6473 50  0000 C CNN
F 2 "" H 7750 6300 50  0001 C CNN
F 3 "" H 7750 6300 50  0001 C CNN
	1    7750 6300
	1    0    0    -1  
$EndComp
Wire Bus Line
	6050 5650 9250 5650
Connection ~ 6050 5650
Entry Wire Line
	9150 8050 9250 7950
Entry Wire Line
	9150 7950 9250 7850
Entry Wire Line
	9150 7850 9250 7750
Entry Wire Line
	9150 7750 9250 7650
Entry Wire Line
	9150 7650 9250 7550
Entry Wire Line
	9150 7550 9250 7450
Entry Wire Line
	9150 7450 9250 7350
Entry Wire Line
	9150 7350 9250 7250
Entry Wire Line
	9150 7250 9250 7150
Entry Wire Line
	9150 7150 9250 7050
Entry Wire Line
	9150 7050 9250 6950
Entry Wire Line
	9150 6950 9250 6850
Entry Wire Line
	9150 6850 9250 6750
Entry Wire Line
	9150 6750 9250 6650
Entry Wire Line
	9150 6650 9250 6550
Entry Wire Line
	9150 6550 9250 6450
Wire Wire Line
	8750 6550 9150 6550
Wire Wire Line
	9150 6650 8750 6650
Wire Wire Line
	8750 8050 9150 8050
Wire Wire Line
	8750 6750 9150 6750
Wire Wire Line
	9150 6850 8750 6850
Wire Wire Line
	8750 6950 9150 6950
Wire Wire Line
	9150 7050 8750 7050
Wire Wire Line
	8750 7150 9150 7150
Wire Wire Line
	8750 7250 9150 7250
Wire Wire Line
	9150 7350 8750 7350
Wire Wire Line
	9150 7450 8750 7450
Wire Wire Line
	8750 7550 9150 7550
Wire Wire Line
	9150 7650 8750 7650
Wire Wire Line
	8750 7750 9150 7750
Wire Wire Line
	9150 7850 8750 7850
Wire Wire Line
	8750 7950 9150 7950
Wire Bus Line
	1650 5850 4100 5850
Entry Wire Line
	6800 7650 6900 7750
Wire Wire Line
	6900 7750 7150 7750
Entry Wire Line
	6800 7550 6900 7650
Entry Wire Line
	6800 7450 6900 7550
Entry Wire Line
	6800 6450 6900 6550
Entry Wire Line
	6800 6550 6900 6650
Entry Wire Line
	6800 6650 6900 6750
Entry Wire Line
	6800 6750 6900 6850
Entry Wire Line
	6800 6850 6900 6950
Entry Wire Line
	6800 6950 6900 7050
Entry Wire Line
	6800 7050 6900 7150
Entry Wire Line
	6800 7150 6900 7250
Entry Wire Line
	6800 7250 6900 7350
Entry Wire Line
	6800 7350 6900 7450
Wire Wire Line
	6900 6550 7150 6550
Wire Wire Line
	7150 6650 6900 6650
Wire Wire Line
	6900 6750 7150 6750
Wire Wire Line
	7150 6850 6900 6850
Wire Wire Line
	6900 6950 7150 6950
Wire Wire Line
	7150 7050 6900 7050
Wire Wire Line
	6900 7150 7150 7150
Wire Wire Line
	7150 7250 6900 7250
Wire Wire Line
	6900 7350 7150 7350
Wire Wire Line
	6900 7450 7150 7450
Wire Wire Line
	7150 7550 6900 7550
Wire Wire Line
	6900 7650 7150 7650
Connection ~ 4100 5850
Wire Bus Line
	4100 5850 6800 5850
Entry Wire Line
	4100 8550 4200 8650
Entry Wire Line
	4100 8450 4200 8550
Entry Wire Line
	4100 8350 4200 8450
Entry Wire Line
	4100 8250 4200 8350
Entry Wire Line
	4100 8150 4200 8250
Entry Wire Line
	4100 8050 4200 8150
Entry Wire Line
	4100 7950 4200 8050
Entry Wire Line
	4100 7850 4200 7950
Entry Wire Line
	4100 7750 4200 7850
Entry Wire Line
	4100 7650 4200 7750
Entry Wire Line
	4100 7550 4200 7650
Entry Wire Line
	4100 7450 4200 7550
Entry Wire Line
	4100 7350 4200 7450
Entry Wire Line
	4100 7250 4200 7350
Entry Wire Line
	4100 7150 4200 7250
Entry Wire Line
	4100 7050 4200 7150
Entry Wire Line
	4100 6950 4200 7050
Entry Wire Line
	4100 6850 4200 6950
Entry Wire Line
	4100 6750 4200 6850
Entry Wire Line
	4100 6650 4200 6750
Entry Wire Line
	4100 6550 4200 6650
Entry Wire Line
	4100 6450 4200 6550
Wire Wire Line
	4200 6550 4400 6550
Wire Wire Line
	4400 6650 4200 6650
Wire Wire Line
	4200 6750 4400 6750
Wire Wire Line
	4400 6850 4200 6850
Wire Wire Line
	4200 6950 4400 6950
Wire Wire Line
	4400 7050 4200 7050
Wire Wire Line
	4200 7150 4400 7150
Wire Wire Line
	4400 7250 4200 7250
Wire Wire Line
	4200 7350 4400 7350
Wire Wire Line
	4400 7450 4200 7450
Wire Wire Line
	4200 7550 4400 7550
Wire Wire Line
	4400 7650 4200 7650
Wire Wire Line
	4200 7750 4400 7750
Wire Wire Line
	4400 7850 4200 7850
Wire Wire Line
	4200 7950 4400 7950
Wire Wire Line
	4400 8050 4200 8050
Wire Wire Line
	4200 8150 4400 8150
Wire Wire Line
	4400 8250 4200 8250
Wire Wire Line
	4200 8350 4400 8350
Wire Wire Line
	4400 8450 4200 8450
Wire Wire Line
	4200 8650 4400 8650
Wire Wire Line
	4200 8550 4400 8550
Entry Wire Line
	1650 8550 1750 8650
Entry Wire Line
	1650 8450 1750 8550
Entry Wire Line
	1650 8350 1750 8450
Entry Wire Line
	1650 8250 1750 8350
Entry Wire Line
	1650 8150 1750 8250
Entry Wire Line
	1650 8050 1750 8150
Wire Wire Line
	1750 8650 2050 8650
Wire Wire Line
	2050 8550 1750 8550
Wire Wire Line
	1750 8450 2050 8450
Wire Wire Line
	2050 8350 1750 8350
Wire Wire Line
	1750 8250 2050 8250
Wire Wire Line
	2050 8150 1750 8150
Entry Wire Line
	1650 6450 1750 6550
Wire Wire Line
	1750 6550 2050 6550
Wire Wire Line
	1750 6650 2050 6650
Wire Wire Line
	2050 6750 1750 6750
Entry Wire Line
	1650 6550 1750 6650
Entry Wire Line
	1650 6650 1750 6750
Entry Wire Line
	1650 6750 1750 6850
Entry Wire Line
	1650 6850 1750 6950
Entry Wire Line
	1650 6950 1750 7050
Entry Wire Line
	1650 7050 1750 7150
Entry Wire Line
	1650 7150 1750 7250
Entry Wire Line
	1650 7250 1750 7350
Entry Wire Line
	1650 7350 1750 7450
Entry Wire Line
	1650 7450 1750 7550
Entry Wire Line
	1650 7550 1750 7650
Entry Wire Line
	1650 7650 1750 7750
Entry Wire Line
	1650 7750 1750 7850
Entry Wire Line
	1650 7850 1750 7950
Entry Wire Line
	1650 7950 1750 8050
Wire Wire Line
	1750 6850 2050 6850
Wire Wire Line
	2050 6950 1750 6950
Wire Wire Line
	1750 7050 2050 7050
Wire Wire Line
	2050 7150 1750 7150
Wire Wire Line
	1750 7250 2050 7250
Wire Wire Line
	1750 7350 2050 7350
Wire Wire Line
	2050 7450 1750 7450
Wire Wire Line
	1750 7550 2050 7550
Wire Wire Line
	2050 7650 1750 7650
Wire Wire Line
	1750 7750 2050 7750
Wire Wire Line
	2050 7850 1750 7850
Wire Wire Line
	1750 7950 2050 7950
Wire Wire Line
	2050 8050 1750 8050
Entry Wire Line
	4850 1600 4950 1500
Entry Wire Line
	4750 1600 4850 1500
Entry Wire Line
	4650 1600 4750 1500
Entry Wire Line
	4550 1600 4650 1500
Entry Wire Line
	4450 1600 4550 1500
Entry Wire Line
	4350 1600 4450 1500
Entry Wire Line
	4250 1600 4350 1500
Entry Wire Line
	4150 1600 4250 1500
Entry Wire Line
	4050 1600 4150 1500
Entry Wire Line
	3950 1600 4050 1500
Entry Wire Line
	3850 1600 3950 1500
Entry Wire Line
	3750 1600 3850 1500
Entry Wire Line
	3650 1600 3750 1500
Entry Wire Line
	3550 1600 3650 1500
Entry Wire Line
	3450 1600 3550 1500
Entry Wire Line
	3350 1600 3450 1500
Entry Wire Line
	3250 1600 3350 1500
Entry Wire Line
	3150 1600 3250 1500
Entry Wire Line
	3050 1600 3150 1500
Entry Wire Line
	2950 1600 3050 1500
Entry Wire Line
	2850 1600 2950 1500
Entry Wire Line
	2750 1600 2850 1500
Wire Wire Line
	4850 1750 4850 1600
Wire Wire Line
	4750 1600 4750 1750
Wire Wire Line
	4650 1750 4650 1600
Wire Wire Line
	4550 1600 4550 1750
Wire Wire Line
	4450 1750 4450 1600
Wire Wire Line
	4350 1600 4350 1750
Wire Wire Line
	4250 1750 4250 1600
Wire Wire Line
	4150 1600 4150 1750
Wire Wire Line
	4050 1600 4050 1750
Wire Wire Line
	3950 1600 3950 1750
Wire Wire Line
	3850 1600 3850 1750
Wire Wire Line
	3750 1600 3750 1750
Wire Wire Line
	3650 1600 3650 1750
Wire Wire Line
	3550 1600 3550 1750
Wire Wire Line
	3450 1600 3450 1750
Wire Wire Line
	3350 1600 3350 1750
Wire Wire Line
	3250 1600 3250 1750
Wire Wire Line
	3150 1600 3150 1750
Wire Wire Line
	3050 1600 3050 1750
Wire Wire Line
	2950 1600 2950 1750
Wire Wire Line
	2850 1600 2850 1750
Wire Wire Line
	2750 1600 2750 1750
Connection ~ 6800 5850
Wire Wire Line
	5100 9250 5200 9250
Wire Wire Line
	2750 9250 2850 9250
$Comp
L power:GND #PWR0106
U 1 1 606CE1A2
P 7950 8900
F 0 "#PWR0106" H 7950 8650 50  0001 C CNN
F 1 "GND" H 7955 8727 50  0000 C CNN
F 2 "" H 7950 8900 50  0001 C CNN
F 3 "" H 7950 8900 50  0001 C CNN
	1    7950 8900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 606CE43D
P 5200 9250
F 0 "#PWR0107" H 5200 9000 50  0001 C CNN
F 1 "GND" H 5205 9077 50  0000 C CNN
F 2 "" H 5200 9250 50  0001 C CNN
F 3 "" H 5200 9250 50  0001 C CNN
	1    5200 9250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 606CE847
P 2850 9250
F 0 "#PWR0108" H 2850 9000 50  0001 C CNN
F 1 "GND" H 2855 9077 50  0000 C CNN
F 2 "" H 2850 9250 50  0001 C CNN
F 3 "" H 2850 9250 50  0001 C CNN
	1    2850 9250
	1    0    0    -1  
$EndComp
Wire Bus Line
	1350 9600 3750 9600
Entry Wire Line
	6350 7550 6450 7650
Wire Wire Line
	5800 7550 6350 7550
Entry Wire Line
	6450 8050 6550 7950
Wire Wire Line
	6550 7950 7150 7950
Entry Wire Line
	6450 8150 6550 8050
Entry Wire Line
	6450 8250 6550 8150
Entry Wire Line
	6450 8350 6550 8250
Entry Wire Line
	6450 8450 6550 8350
Wire Wire Line
	6550 8050 7150 8050
Wire Wire Line
	7150 8150 6550 8150
Wire Wire Line
	6550 8250 7150 8250
Wire Wire Line
	7150 8350 6550 8350
Entry Wire Line
	6350 8050 6450 8150
Entry Wire Line
	6350 8150 6450 8250
Entry Wire Line
	6350 8250 6450 8350
Wire Wire Line
	5800 8050 6350 8050
Wire Wire Line
	6350 8150 5800 8150
Wire Wire Line
	5800 8250 6350 8250
Connection ~ 3750 9600
Wire Bus Line
	3750 9600 6450 9600
Entry Wire Line
	3650 7550 3750 7650
Entry Wire Line
	3650 8050 3750 8150
Entry Wire Line
	3650 8150 3750 8250
Entry Wire Line
	3650 8250 3750 8350
Wire Wire Line
	3450 7550 3650 7550
Wire Wire Line
	3650 8050 3450 8050
Wire Wire Line
	3450 8150 3650 8150
Wire Wire Line
	3650 8250 3450 8250
Entry Wire Line
	6350 2050 6450 2150
Entry Wire Line
	6350 2150 6450 2250
Entry Wire Line
	6350 2250 6450 2350
Entry Wire Line
	6350 2350 6450 2450
Entry Wire Line
	6350 2450 6450 2550
Entry Wire Line
	6350 2550 6450 2650
Entry Wire Line
	6350 2650 6450 2750
Entry Wire Line
	6350 2750 6450 2850
Entry Wire Line
	1350 2250 1450 2150
Wire Wire Line
	1450 2150 1950 2150
Entry Wire Line
	1350 2350 1450 2250
Entry Wire Line
	1350 2450 1450 2350
Entry Wire Line
	1350 2550 1450 2450
Entry Wire Line
	1350 2650 1450 2550
Entry Wire Line
	1350 2850 1450 2750
Entry Wire Line
	1350 2950 1450 2850
Wire Wire Line
	1450 2250 1950 2250
Wire Wire Line
	1950 2350 1450 2350
Wire Wire Line
	1450 2450 1950 2450
Wire Wire Line
	1950 2550 1450 2550
Wire Wire Line
	1950 2750 1450 2750
Wire Wire Line
	1450 2850 1950 2850
Entry Wire Line
	6350 3950 6450 4050
NoConn ~ 5850 4050
NoConn ~ 5850 4250
NoConn ~ 5850 4350
NoConn ~ 5850 4450
Entry Wire Line
	6350 4550 6450 4650
Wire Wire Line
	5850 4550 5950 4550
$Comp
L Device:R R2
U 1 1 606CDF3C
P 5950 4400
F 0 "R2" H 6020 4446 50  0000 L CNN
F 1 "3.3K" H 6020 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 4400 50  0001 C CNN
F 3 "~" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
Connection ~ 5950 4550
$Comp
L power:VDD #PWR0109
U 1 1 606CEB53
P 5950 4250
F 0 "#PWR0109" H 5950 4100 50  0001 C CNN
F 1 "VDD" H 6050 4350 50  0000 C CNN
F 2 "" H 5950 4250 50  0001 C CNN
F 3 "" H 5950 4250 50  0001 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 606CF6EE
P 4650 4850
F 0 "#PWR0110" H 4650 4600 50  0001 C CNN
F 1 "GND" H 4655 4677 50  0000 C CNN
F 2 "" H 4650 4850 50  0001 C CNN
F 3 "" H 4650 4850 50  0001 C CNN
	1    4650 4850
	1    0    0    -1  
$EndComp
Entry Wire Line
	6350 4950 6450 5050
Wire Wire Line
	4750 4850 4750 4950
Wire Wire Line
	4750 4950 6350 4950
NoConn ~ 4850 4850
NoConn ~ 5050 4850
Wire Wire Line
	4950 4850 4950 5100
Wire Wire Line
	4950 5100 5400 5100
$Comp
L Device:R R1
U 1 1 6070CF50
P 5800 5100
F 0 "R1" V 5700 5100 50  0000 C CNN
F 1 "430" V 5900 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5730 5100 50  0001 C CNN
F 3 "~" H 5800 5100 50  0001 C CNN
	1    5800 5100
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 6070DF50
P 5950 5100
F 0 "#PWR0111" H 5950 4950 50  0001 C CNN
F 1 "VDD" V 5965 5228 50  0000 L CNN
F 2 "" H 5950 5100 50  0001 C CNN
F 3 "" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6071EB05
P 4950 5200
F 0 "C4" H 5042 5246 50  0000 L CNN
F 1 "0.1uf" H 5042 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4950 5200 50  0001 C CNN
F 3 "~" H 4950 5200 50  0001 C CNN
	1    4950 5200
	1    0    0    -1  
$EndComp
Connection ~ 4950 5100
$Comp
L Device:CP1_Small C18
U 1 1 6071F78C
P 5400 5200
F 0 "C18" H 5491 5246 50  0000 L CNN
F 1 "2.2uf" H 5491 5155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5400 5200 50  0001 C CNN
F 3 "~" H 5400 5200 50  0001 C CNN
	1    5400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6072060B
P 5400 5300
F 0 "#PWR0112" H 5400 5050 50  0001 C CNN
F 1 "GND" H 5405 5127 50  0000 C CNN
F 2 "" H 5400 5300 50  0001 C CNN
F 3 "" H 5400 5300 50  0001 C CNN
	1    5400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60720ABE
P 4950 5300
F 0 "#PWR0113" H 4950 5050 50  0001 C CNN
F 1 "GND" H 4955 5127 50  0000 C CNN
F 2 "" H 4950 5300 50  0001 C CNN
F 3 "" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
Entry Wire Line
	6350 3050 6450 3150
Entry Wire Line
	6350 3150 6450 3250
Entry Wire Line
	6350 3250 6450 3350
Entry Wire Line
	6350 3350 6450 3450
Entry Wire Line
	6350 3450 6450 3550
Entry Wire Line
	6350 3550 6450 3650
Entry Wire Line
	6350 3650 6450 3750
Entry Wire Line
	6350 3750 6450 3850
Text Label 6050 3950 0    50   ~ 0
PWM0
Text Label 6050 3750 0    50   ~ 0
~CTS
Text Label 6050 3650 0    50   ~ 0
~RTS
Text Label 6050 3550 0    50   ~ 0
TXD
Text Label 6050 3450 0    50   ~ 0
RXD
Text Label 6050 3350 0    50   ~ 0
~DWE
Text Label 6050 3250 0    50   ~ 0
SCLK
Text Label 6050 3150 0    50   ~ 0
SRXD
Text Label 6050 3050 0    50   ~ 0
STXD
Text Label 6050 2050 0    50   ~ 0
PD0
Text Label 6050 2150 0    50   ~ 0
PD1
Text Label 6050 2250 0    50   ~ 0
PD2
Text Label 6050 2350 0    50   ~ 0
PD3
Text Label 6050 2450 0    50   ~ 0
PD4
Text Label 6050 2550 0    50   ~ 0
PD5
Text Label 6050 2650 0    50   ~ 0
PD6
Text Label 6050 2750 0    50   ~ 0
PD7
Entry Wire Line
	1350 3250 1450 3150
Entry Wire Line
	1350 3350 1450 3250
Entry Wire Line
	1350 3450 1450 3350
Entry Wire Line
	1350 3550 1450 3450
Entry Wire Line
	1350 3750 1450 3650
Entry Wire Line
	1350 3850 1450 3750
Entry Wire Line
	1350 3950 1450 3850
Entry Wire Line
	1350 4050 1450 3950
Entry Wire Line
	1350 4150 1450 4050
Entry Wire Line
	1350 4250 1450 4150
Entry Wire Line
	1350 4350 1450 4250
Entry Wire Line
	1350 4450 1450 4350
Entry Wire Line
	1350 4550 1450 4450
Wire Wire Line
	1950 3150 1450 3150
Wire Wire Line
	1450 3250 1950 3250
Wire Wire Line
	1950 3350 1450 3350
Wire Wire Line
	1450 3450 1950 3450
Wire Wire Line
	1450 3650 1950 3650
Wire Wire Line
	1950 3750 1450 3750
Wire Wire Line
	1450 3850 1950 3850
Wire Wire Line
	1950 3950 1450 3950
Wire Wire Line
	1450 4050 1950 4050
Wire Wire Line
	1450 4150 1950 4150
Wire Wire Line
	1950 4250 1450 4250
Wire Wire Line
	1450 4350 1950 4350
Wire Wire Line
	1950 4450 1450 4450
Text Label 1500 4450 0    50   ~ 0
LCON
Text Label 1500 4350 0    50   ~ 0
LACD
Text Label 1500 4250 0    50   ~ 0
LCLK
Text Label 1500 4150 0    50   ~ 0
LLP
Text Label 1500 4050 0    50   ~ 0
LFLM
Text Label 1500 3950 0    50   ~ 0
LD3
Text Label 1500 3850 0    50   ~ 0
LD2
Text Label 1500 3750 0    50   ~ 0
LD1
Text Label 1500 3650 0    50   ~ 0
LD0
Text Label 1500 3350 0    50   ~ 0
~UWE
Text Label 1500 3250 0    50   ~ 0
~LWE
Text Label 1500 3150 0    50   ~ 0
~PRSET
Text Label 1500 2850 0    50   ~ 0
~CAS1
Text Label 1500 2750 0    50   ~ 0
~CAS0
NoConn ~ 1950 2650
Text Label 1500 2150 0    50   ~ 0
~CSA0
Text Label 1500 2250 0    50   ~ 0
~SRSET
Text Label 1500 2350 0    50   ~ 0
~EXTRN
Text Label 1500 2450 0    50   ~ 0
TIME
Text Label 1500 2550 0    50   ~ 0
~RAS0
Wire Bus Line
	1350 1250 6450 1250
Text Label 3450 7550 0    50   ~ 0
~RESET
NoConn ~ 3450 7650
NoConn ~ 3450 7750
Text Label 3450 8050 0    50   ~ 0
~UWE
Text Label 3450 8150 0    50   ~ 0
~RD
Text Label 3450 8250 0    50   ~ 0
~CSA0
NoConn ~ 5800 7650
NoConn ~ 5800 7750
Text Label 6100 7550 0    50   ~ 0
~RESET
Text Label 6100 8050 0    50   ~ 0
~LWE
Text Label 6100 8150 0    50   ~ 0
~RD
Text Label 6100 8250 0    50   ~ 0
~CSA0
Text Label 6600 7950 0    50   ~ 0
~RAS0
Text Label 6600 8350 0    50   ~ 0
~DWE
Text Label 6600 8250 0    50   ~ 0
~RD
Text Label 6600 8050 0    50   ~ 0
~CAS1
Text Label 6600 8150 0    50   ~ 0
~CAS0
Text Label 3450 6550 0    50   ~ 0
D8
Text Label 3450 6650 0    50   ~ 0
D9
Text Label 3450 6750 0    50   ~ 0
D10
Text Label 3450 6850 0    50   ~ 0
D11
Text Label 3450 6950 0    50   ~ 0
D12
Text Label 3450 7050 0    50   ~ 0
D13
Text Label 3450 7150 0    50   ~ 0
D14
Text Label 3450 7250 0    50   ~ 0
D15
Text Label 5800 6550 0    50   ~ 0
D0
Text Label 5800 6650 0    50   ~ 0
D1
Text Label 5800 6750 0    50   ~ 0
D2
Text Label 5800 6850 0    50   ~ 0
D3
Text Label 5800 6950 0    50   ~ 0
D4
Text Label 5800 7050 0    50   ~ 0
D5
Text Label 5800 7150 0    50   ~ 0
D6
Text Label 5800 7250 0    50   ~ 0
D7
Connection ~ 5400 5100
Wire Wire Line
	5400 5100 5650 5100
Text Label 1500 3450 0    50   ~ 0
~RD
Text Label 2850 5400 1    50   ~ 0
D0
Text Label 2950 5400 1    50   ~ 0
D1
Text Label 3050 5400 1    50   ~ 0
D2
Text Label 3150 5400 1    50   ~ 0
D3
Text Label 3250 5400 1    50   ~ 0
D4
Text Label 3350 5400 1    50   ~ 0
D5
Text Label 3450 5400 1    50   ~ 0
D6
Text Label 3550 5400 1    50   ~ 0
D7
Text Label 3750 5400 1    50   ~ 0
D8
Text Label 3850 5400 1    50   ~ 0
D9
Text Label 3950 5400 1    50   ~ 0
D10
Text Label 4050 5400 1    50   ~ 0
D11
Text Label 4150 5400 1    50   ~ 0
D12
Text Label 4250 5400 1    50   ~ 0
D13
Text Label 4350 5400 1    50   ~ 0
D14
Text Label 4450 5400 1    50   ~ 0
D15
Text Label 9000 6550 0    50   ~ 0
D15
Text Label 9000 6650 0    50   ~ 0
D14
Text Label 9000 6750 0    50   ~ 0
D13
Text Label 9000 6850 0    50   ~ 0
D12
Text Label 9000 6950 0    50   ~ 0
D11
Text Label 9000 7050 0    50   ~ 0
D10
Text Label 9000 7150 0    50   ~ 0
D9
Text Label 9000 7250 0    50   ~ 0
D8
Text Label 9000 7350 0    50   ~ 0
D0
Text Label 9000 7450 0    50   ~ 0
D1
Text Label 9000 7550 0    50   ~ 0
D2
Text Label 9000 7650 0    50   ~ 0
D3
Text Label 9000 7750 0    50   ~ 0
D4
Text Label 9000 7850 0    50   ~ 0
D5
Text Label 9000 7950 0    50   ~ 0
D6
Text Label 9000 8050 0    50   ~ 0
D7
NoConn ~ 2650 1750
Text Label 2750 1700 1    50   ~ 0
A1
Text Label 2850 1700 1    50   ~ 0
A2
Text Label 2950 1700 1    50   ~ 0
A3
Text Label 3050 1700 1    50   ~ 0
A4
Text Label 3150 1700 1    50   ~ 0
A5
Text Label 3250 1700 1    50   ~ 0
A6
Text Label 3350 1700 1    50   ~ 0
A7
Text Label 3450 1700 1    50   ~ 0
A8
Text Label 3550 1700 1    50   ~ 0
A9
Text Label 3650 1700 1    50   ~ 0
A10
Text Label 3750 1700 1    50   ~ 0
A11
Text Label 3850 1700 1    50   ~ 0
A12
Text Label 3950 1700 1    50   ~ 0
A13
Text Label 4050 1700 1    50   ~ 0
A14
Text Label 4150 1700 1    50   ~ 0
A15
Text Label 4250 1700 1    50   ~ 0
A16
Text Label 4350 1700 1    50   ~ 0
A17
Text Label 4450 1700 1    50   ~ 0
A18
Text Label 4550 1700 1    50   ~ 0
A19
Text Label 4650 1700 1    50   ~ 0
A20
Text Label 4750 1700 1    50   ~ 0
A21
Text Label 4850 1700 1    50   ~ 0
A22
Text Label 1800 6550 0    50   ~ 0
A1
Text Label 1800 6650 0    50   ~ 0
A2
Text Label 1800 6750 0    50   ~ 0
A3
Text Label 1800 6850 0    50   ~ 0
A4
Text Label 1800 6950 0    50   ~ 0
A5
Text Label 1800 7050 0    50   ~ 0
A6
Text Label 1800 7150 0    50   ~ 0
A7
Text Label 1800 7250 0    50   ~ 0
A8
Text Label 1800 7350 0    50   ~ 0
A9
Text Label 1800 7450 0    50   ~ 0
A10
Text Label 1800 7550 0    50   ~ 0
A11
Text Label 1800 7650 0    50   ~ 0
A12
Text Label 1800 7750 0    50   ~ 0
A13
Text Label 1800 7850 0    50   ~ 0
A14
Text Label 1800 7950 0    50   ~ 0
A15
Text Label 1800 8050 0    50   ~ 0
A16
Text Label 1800 8150 0    50   ~ 0
A17
Text Label 1800 8250 0    50   ~ 0
A18
Text Label 1800 8350 0    50   ~ 0
A19
Text Label 1800 8450 0    50   ~ 0
A20
Text Label 1800 8550 0    50   ~ 0
A21
Text Label 1800 8650 0    50   ~ 0
A22
Text Label 6950 6550 0    50   ~ 0
A1
Text Label 6950 6650 0    50   ~ 0
A2
Text Label 6950 6750 0    50   ~ 0
A3
Text Label 6950 6850 0    50   ~ 0
A4
Text Label 6950 6950 0    50   ~ 0
A5
Text Label 6950 7050 0    50   ~ 0
A6
Text Label 6950 7150 0    50   ~ 0
A7
Text Label 6950 7250 0    50   ~ 0
A8
Text Label 6950 7350 0    50   ~ 0
A9
Text Label 6950 7450 0    50   ~ 0
A10
Text Label 6950 7550 0    50   ~ 0
A11
Text Label 6950 7650 0    50   ~ 0
A12
Text Label 6950 7750 0    50   ~ 0
A13
NoConn ~ 4950 1750
Text Label 4250 6550 0    50   ~ 0
A1
Text Label 4250 6650 0    50   ~ 0
A2
Text Label 4250 6750 0    50   ~ 0
A3
Text Label 4250 6850 0    50   ~ 0
A4
Text Label 4250 6950 0    50   ~ 0
A5
Text Label 4250 7050 0    50   ~ 0
A6
Text Label 4250 7150 0    50   ~ 0
A7
Text Label 4250 7250 0    50   ~ 0
A8
Text Label 4250 7350 0    50   ~ 0
A9
Text Label 4250 7450 0    50   ~ 0
A10
Text Label 4250 7550 0    50   ~ 0
A11
Text Label 4250 7650 0    50   ~ 0
A12
Text Label 4250 7750 0    50   ~ 0
A13
Text Label 4250 7850 0    50   ~ 0
A14
Text Label 4250 7950 0    50   ~ 0
A15
Text Label 4250 8050 0    50   ~ 0
A16
Text Label 4250 8150 0    50   ~ 0
A17
Text Label 4250 8250 0    50   ~ 0
A18
Text Label 4250 8350 0    50   ~ 0
A19
Text Label 4250 8450 0    50   ~ 0
A20
Text Label 4250 8550 0    50   ~ 0
A21
Text Label 4250 8650 0    50   ~ 0
A22
Text Notes 8250 8900 0    50   ~ 0
4M x 16bit
Text Notes 5350 9100 0    50   ~ 0
4M x 8bit
Text Notes 3000 9100 0    50   ~ 0
4M x 8bit
Wire Bus Line
	6450 1250 10500 1250
Wire Bus Line
	10500 3500 12000 3500
Connection ~ 6450 1250
$Comp
L mc68ez328:DS1306 U10
U 1 1 604BD48B
P 10900 4550
F 0 "U10" H 10900 5267 50  0000 C CNN
F 1 "DS1306" H 10900 5176 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 10900 3950 50  0001 C CNN
F 3 "" H 10900 4400 50  0001 C CNN
	1    10900 4550
	1    0    0    -1  
$EndComp
Entry Wire Line
	11900 4300 12000 4200
Wire Wire Line
	11400 4300 11900 4300
Wire Wire Line
	11500 4000 11500 4100
Wire Wire Line
	11500 5000 11400 5000
$Comp
L power:VDD #PWR0114
U 1 1 604F9FDD
P 11500 4000
F 0 "#PWR0114" H 11500 3850 50  0001 C CNN
F 1 "VDD" H 11515 4173 50  0000 C CNN
F 2 "" H 11500 4000 50  0001 C CNN
F 3 "" H 11500 4000 50  0001 C CNN
	1    11500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 4100 11500 4100
Wire Wire Line
	11400 4400 11500 4400
Entry Wire Line
	11900 4500 12000 4400
Entry Wire Line
	11900 4600 12000 4500
Entry Wire Line
	11900 4700 12000 4600
Entry Wire Line
	11900 4900 12000 4800
Wire Wire Line
	11400 4900 11900 4900
Wire Wire Line
	11900 4700 11400 4700
Wire Wire Line
	11400 4600 11900 4600
Wire Wire Line
	11900 4500 11400 4500
$Comp
L Device:Crystal_Small Q1
U 1 1 60589A6C
P 10250 4400
F 0 "Q1" V 10250 4200 50  0000 L CNN
F 1 "32.768kHz" V 10400 4050 50  0000 L CNN
F 2 "Crystal:Crystal_DS26_D2.0mm_L6.0mm_Horizontal" H 10250 4400 50  0001 C CNN
F 3 "~" H 10250 4400 50  0001 C CNN
	1    10250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 4300 10400 4300
Wire Wire Line
	10250 4500 10400 4500
NoConn ~ 10400 4700
NoConn ~ 10400 4800
NoConn ~ 10400 4900
$Comp
L Device:Battery_Cell BT1
U 1 1 6065B731
P 9900 4200
F 0 "BT1" V 9645 4250 50  0000 C CNN
F 1 "3V" V 9736 4250 50  0000 C CNN
F 2 "DragonOne_rev00:CH74-2032LF" V 9900 4260 50  0001 C CNN
F 3 "~" V 9900 4260 50  0001 C CNN
	1    9900 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 4200 10400 4200
$Comp
L power:GND #PWR0115
U 1 1 60687CB7
P 9800 4200
F 0 "#PWR0115" H 9800 3950 50  0001 C CNN
F 1 "GND" H 9805 4027 50  0000 C CNN
F 2 "" H 9800 4200 50  0001 C CNN
F 3 "" H 9800 4200 50  0001 C CNN
	1    9800 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 606887D7
P 10400 5000
F 0 "#PWR0116" H 10400 4750 50  0001 C CNN
F 1 "GND" H 10405 4827 50  0000 C CNN
F 2 "" H 10400 5000 50  0001 C CNN
F 3 "" H 10400 5000 50  0001 C CNN
	1    10400 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 60688D45
P 10400 4100
F 0 "#PWR0117" H 10400 3850 50  0001 C CNN
F 1 "GND" V 10405 3972 50  0000 R CNN
F 2 "" H 10400 4100 50  0001 C CNN
F 3 "" H 10400 4100 50  0001 C CNN
	1    10400 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	11500 4100 11500 4400
Connection ~ 11500 4100
Connection ~ 11500 4400
Wire Wire Line
	11500 4400 11500 5000
Text Label 11650 4700 0    50   ~ 0
SCLK
Text Label 11650 4600 0    50   ~ 0
STXD
Text Label 11650 4500 0    50   ~ 0
SRXD
Text Label 11650 4300 0    50   ~ 0
CLOCK
Text Label 5950 4950 0    50   ~ 0
CLOCK
Text Label 11650 4900 0    50   ~ 0
TIME
Wire Wire Line
	11200 2300 11200 2500
Wire Wire Line
	11200 2500 12550 2500
Wire Wire Line
	12550 2500 12550 2850
Entry Wire Line
	10500 1750 10600 1850
Wire Wire Line
	12550 1850 12550 2200
Entry Wire Line
	10500 2000 10600 2100
Entry Wire Line
	10500 2200 10600 2300
Entry Wire Line
	10500 2750 10600 2850
Connection ~ 11200 2850
$Comp
L Device:CP1_Small C3
U 1 1 60829FA7
P 10900 3100
F 0 "C3" H 10991 3146 50  0000 L CNN
F 1 "2.2uf" H 10991 3055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10900 3100 50  0001 C CNN
F 3 "~" H 10900 3100 50  0001 C CNN
	1    10900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2850 10900 3000
Text Label 10600 2850 0    50   ~ 0
~XRSET
Text Label 10600 2300 0    50   ~ 0
~PRSET
Text Label 10600 2100 0    50   ~ 0
~SRSET
Wire Wire Line
	10600 2850 10900 2850
Wire Wire Line
	10600 2300 11200 2300
Wire Wire Line
	10600 2100 11200 2100
Wire Wire Line
	10600 1850 12550 1850
$Comp
L Device:R R4
U 1 1 608D00C4
P 10900 2650
F 0 "R4" H 10750 2750 50  0000 L CNN
F 1 "3.3k" H 10700 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10830 2650 50  0001 C CNN
F 3 "~" H 10900 2650 50  0001 C CNN
	1    10900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D1
U 1 1 608D09E9
P 11050 2650
F 0 "D1" V 10850 2650 50  0000 L CNN
F 1 "1N4148" V 10950 2650 50  0000 L CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" V 11050 2650 50  0001 C CNN
F 3 "~" V 11050 2650 50  0001 C CNN
	1    11050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	11050 2750 11050 2850
Connection ~ 11050 2850
Wire Wire Line
	11050 2850 11200 2850
Wire Wire Line
	10900 2800 10900 2850
Connection ~ 10900 2850
Wire Wire Line
	10900 2850 11050 2850
Wire Wire Line
	10900 2500 11050 2500
Wire Wire Line
	11050 2500 11050 2550
Text Label 10600 1850 0    50   ~ 0
~RESET
$Comp
L power:GND #PWR0119
U 1 1 609350D8
P 10900 3200
F 0 "#PWR0119" H 10900 2950 50  0001 C CNN
F 1 "GND" H 10905 3027 50  0000 C CNN
F 2 "" H 10900 3200 50  0001 C CNN
F 3 "" H 10900 3200 50  0001 C CNN
	1    10900 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U9
U 1 1 60936B1D
P 11500 2200
F 0 "U9" H 11500 2525 50  0000 C CNN
F 1 "74LCX00" H 11500 2434 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 11500 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 11500 2200 50  0001 C CNN
	1    11500 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U9
U 2 1 60938590
P 12250 2200
F 0 "U9" H 12250 2525 50  0000 C CNN
F 1 "74LCX00" H 12250 2434 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 12250 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 12250 2200 50  0001 C CNN
	2    12250 2200
	1    0    0    -1  
$EndComp
Connection ~ 11200 2300
Wire Wire Line
	11950 2100 11950 2200
Wire Wire Line
	11950 2200 11800 2200
Connection ~ 11950 2200
Wire Wire Line
	11950 2200 11950 2300
$Comp
L 74xx:74HC00 U9
U 3 1 609D059D
P 11500 2850
F 0 "U9" H 11500 3175 50  0000 C CNN
F 1 "74LCX00" H 11500 3084 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 11500 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 11500 2850 50  0001 C CNN
	3    11500 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U9
U 4 1 609D0C95
P 12250 2850
F 0 "U9" H 12250 3175 50  0000 C CNN
F 1 "74LCX00" H 12250 3084 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 12250 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 12250 2850 50  0001 C CNN
	4    12250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 2750 11950 2850
Wire Wire Line
	11950 2850 11800 2850
Connection ~ 11950 2850
Wire Wire Line
	11950 2850 11950 2950
Wire Wire Line
	11200 2750 11200 2850
Wire Wire Line
	11200 2850 11200 2950
$Comp
L 74xx:74HC00 U9
U 5 1 60A35AF8
P 13150 2350
F 0 "U9" H 13380 2396 50  0000 L CNN
F 1 "74LCX00" H 13380 2305 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 13150 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 13150 2350 50  0001 C CNN
	5    13150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 60A698A2
P 13150 2850
F 0 "#PWR0120" H 13150 2600 50  0001 C CNN
F 1 "GND" H 13155 2677 50  0000 C CNN
F 2 "" H 13150 2850 50  0001 C CNN
F 3 "" H 13150 2850 50  0001 C CNN
	1    13150 2850
	1    0    0    -1  
$EndComp
Text Label 6200 4550 0    50   ~ 0
~BDM
$Comp
L Switch:SW_Push SW1
U 1 1 604A50FB
P 12450 3700
F 0 "SW1" H 12450 3985 50  0000 C CNN
F 1 "RESET" H 12450 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 12450 3900 50  0001 C CNN
F 3 "~" H 12450 3900 50  0001 C CNN
	1    12450 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	12000 3600 12100 3700
Wire Wire Line
	12100 3700 12250 3700
$Comp
L power:GND #PWR0122
U 1 1 604D48CC
P 12650 3700
F 0 "#PWR0122" H 12650 3450 50  0001 C CNN
F 1 "GND" H 12655 3527 50  0000 C CNN
F 2 "" H 12650 3700 50  0001 C CNN
F 3 "" H 12650 3700 50  0001 C CNN
	1    12650 3700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 604D5643
P 12450 4200
F 0 "SW2" H 12450 4485 50  0000 C CNN
F 1 "BOOTSTRAP" H 12450 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 12450 4400 50  0001 C CNN
F 3 "~" H 12450 4400 50  0001 C CNN
	1    12450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 4200 12250 4200
$Comp
L power:GND #PWR0123
U 1 1 604D5E00
P 12650 4200
F 0 "#PWR0123" H 12650 3950 50  0001 C CNN
F 1 "GND" H 12655 4027 50  0000 C CNN
F 2 "" H 12650 4200 50  0001 C CNN
F 3 "" H 12650 4200 50  0001 C CNN
	1    12650 4200
	1    0    0    -1  
$EndComp
Entry Wire Line
	12000 4100 12100 4200
Text Label 12100 3700 0    50   ~ 0
~XRSET
Text Label 12100 4200 0    50   ~ 0
~BDM
$Comp
L 74xx:74HC245 U5
U 1 1 604EF9B5
P 8000 2350
F 0 "U5" H 8150 3100 50  0000 C CNN
F 1 "74LCX245" H 8250 3000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8000 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U6
U 1 1 604F08FE
P 8000 4500
F 0 "U6" H 8150 5250 50  0000 C CNN
F 1 "74LCX245" H 8250 5150 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8000 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 8000 4500 50  0001 C CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U7
U 1 1 604F250B
P 10750 6350
F 0 "U7" H 10900 7100 50  0000 C CNN
F 1 "74LCX245" H 11000 7000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 10750 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10750 6350 50  0001 C CNN
	1    10750 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U8
U 1 1 604F4552
P 10750 8450
F 0 "U8" H 10900 9200 50  0000 C CNN
F 1 "74LCX245" H 11000 9100 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 10750 8450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 10750 8450 50  0001 C CNN
	1    10750 8450
	1    0    0    -1  
$EndComp
Entry Wire Line
	9250 5750 9350 5850
Wire Wire Line
	9350 7950 10250 7950
Entry Wire Line
	9250 5850 9350 5950
Entry Wire Line
	9250 5950 9350 6050
Entry Wire Line
	9250 6050 9350 6150
Entry Wire Line
	9250 6150 9350 6250
Entry Wire Line
	9250 6250 9350 6350
Entry Wire Line
	9250 6350 9350 6450
Entry Wire Line
	9250 6450 9350 6550
Wire Wire Line
	10250 8050 9350 8050
Wire Wire Line
	9350 8150 10250 8150
Wire Wire Line
	10250 8250 9350 8250
Wire Wire Line
	9350 8350 10250 8350
Wire Wire Line
	10250 8450 9350 8450
Wire Wire Line
	10250 8550 9350 8550
Wire Wire Line
	9350 8650 10250 8650
Entry Wire Line
	9250 7850 9350 7950
Entry Wire Line
	9250 7950 9350 8050
Entry Wire Line
	9250 8050 9350 8150
Entry Wire Line
	9250 8150 9350 8250
Entry Wire Line
	9250 8250 9350 8350
Entry Wire Line
	9250 8350 9350 8450
Entry Wire Line
	9250 8450 9350 8550
Entry Wire Line
	9250 8550 9350 8650
Wire Wire Line
	9350 5850 10250 5850
Wire Wire Line
	10250 5950 9350 5950
Wire Wire Line
	9350 6050 10250 6050
Wire Wire Line
	10250 6150 9350 6150
Wire Wire Line
	9350 6250 10250 6250
Wire Wire Line
	10250 6350 9350 6350
Wire Wire Line
	9350 6450 10250 6450
Wire Wire Line
	10250 6550 9350 6550
Entry Wire Line
	9950 9050 10050 8950
Entry Wire Line
	9950 8950 10050 8850
Entry Wire Line
	9950 6850 10050 6750
Entry Wire Line
	9950 6950 10050 6850
Wire Wire Line
	10050 6750 10250 6750
Wire Wire Line
	10250 6850 10050 6850
Wire Wire Line
	10050 8850 10250 8850
Wire Wire Line
	10250 8950 10050 8950
Text Label 10050 8950 0    50   ~ 0
~EXTRN
Text Label 10050 8850 0    50   ~ 0
~RD
Text Label 10050 6850 0    50   ~ 0
~EXTRN
Text Label 10050 6750 0    50   ~ 0
~RD
$Comp
L power:GND #PWR0124
U 1 1 608C1B69
P 10750 9250
F 0 "#PWR0124" H 10750 9000 50  0001 C CNN
F 1 "GND" H 10755 9077 50  0000 C CNN
F 2 "" H 10750 9250 50  0001 C CNN
F 3 "" H 10750 9250 50  0001 C CNN
	1    10750 9250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 608C252F
P 10750 7150
F 0 "#PWR0125" H 10750 6900 50  0001 C CNN
F 1 "GND" H 10750 7000 50  0000 C CNN
F 2 "" H 10750 7150 50  0001 C CNN
F 3 "" H 10750 7150 50  0001 C CNN
	1    10750 7150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0126
U 1 1 608C7E17
P 10750 5550
F 0 "#PWR0126" H 10750 5400 50  0001 C CNN
F 1 "VDD" H 10765 5723 50  0000 C CNN
F 2 "" H 10750 5550 50  0001 C CNN
F 3 "" H 10750 5550 50  0001 C CNN
	1    10750 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0127
U 1 1 608C8D57
P 10750 7650
F 0 "#PWR0127" H 10750 7500 50  0001 C CNN
F 1 "VDD" H 10765 7823 50  0000 C CNN
F 2 "" H 10750 7650 50  0001 C CNN
F 3 "" H 10750 7650 50  0001 C CNN
	1    10750 7650
	1    0    0    -1  
$EndComp
Text Label 9400 7950 0    50   ~ 0
D7
Text Label 9400 8050 0    50   ~ 0
D6
Text Label 9400 8150 0    50   ~ 0
D5
Text Label 9400 8250 0    50   ~ 0
D4
Text Label 9400 8350 0    50   ~ 0
D3
Text Label 9400 8450 0    50   ~ 0
D2
Text Label 9400 8550 0    50   ~ 0
D1
Text Label 9400 8650 0    50   ~ 0
D0
Text Label 9400 5850 0    50   ~ 0
D15
Text Label 9400 5950 0    50   ~ 0
D14
Text Label 9400 6050 0    50   ~ 0
D13
Text Label 9400 6150 0    50   ~ 0
D12
Text Label 9400 6250 0    50   ~ 0
D11
Text Label 9400 6350 0    50   ~ 0
D10
Text Label 9400 6450 0    50   ~ 0
D9
Text Label 9400 6550 0    50   ~ 0
D8
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 60910333
P 12100 7350
F 0 "J1" H 12150 7900 50  0000 C CNN
F 1 "DATA_BUS" H 12150 7800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 12100 7350 50  0001 C CNN
F 3 "~" H 12100 7350 50  0001 C CNN
	1    12100 7350
	1    0    0    -1  
$EndComp
Wire Bus Line
	11550 8550 12750 8550
Entry Wire Line
	11550 7150 11650 7050
Entry Wire Line
	11550 7250 11650 7150
Entry Wire Line
	11550 7350 11650 7250
Entry Wire Line
	11550 7450 11650 7350
Entry Wire Line
	11550 7550 11650 7450
Entry Wire Line
	11550 7650 11650 7550
Entry Wire Line
	11550 7750 11650 7650
Entry Wire Line
	11550 7850 11650 7750
Wire Wire Line
	11650 7050 11900 7050
Wire Wire Line
	11900 7150 11650 7150
Wire Wire Line
	11650 7250 11900 7250
Wire Wire Line
	11900 7350 11650 7350
Wire Wire Line
	11650 7450 11900 7450
Wire Wire Line
	11900 7550 11650 7550
Wire Wire Line
	11650 7650 11900 7650
Wire Wire Line
	11650 7750 11900 7750
Entry Wire Line
	12650 7050 12750 7150
Entry Wire Line
	12650 7150 12750 7250
Entry Wire Line
	12650 7250 12750 7350
Entry Wire Line
	12650 7350 12750 7450
Entry Wire Line
	12650 7450 12750 7550
Entry Wire Line
	12650 7550 12750 7650
Entry Wire Line
	12650 7650 12750 7750
Entry Wire Line
	12650 7750 12750 7850
Wire Wire Line
	12400 7050 12650 7050
Wire Wire Line
	12650 7150 12400 7150
Wire Wire Line
	12400 7250 12650 7250
Wire Wire Line
	12650 7350 12400 7350
Wire Wire Line
	12400 7450 12650 7450
Wire Wire Line
	12650 7550 12400 7550
Wire Wire Line
	12400 7650 12650 7650
Wire Wire Line
	12650 7750 12400 7750
Entry Wire Line
	11450 5850 11550 5950
Entry Wire Line
	11450 5950 11550 6050
Entry Wire Line
	11450 6050 11550 6150
Entry Wire Line
	11450 6150 11550 6250
Entry Wire Line
	11450 6250 11550 6350
Entry Wire Line
	11450 6350 11550 6450
Entry Wire Line
	11450 6450 11550 6550
Entry Wire Line
	11450 6550 11550 6650
Wire Wire Line
	11250 7950 11450 7950
Wire Wire Line
	11450 8050 11250 8050
Wire Wire Line
	11250 8150 11450 8150
Wire Wire Line
	11450 8250 11250 8250
Wire Wire Line
	11250 8350 11450 8350
Wire Wire Line
	11450 8450 11250 8450
Wire Wire Line
	11250 8550 11450 8550
Wire Wire Line
	11450 8650 11250 8650
Entry Wire Line
	11450 8650 11550 8550
Wire Wire Line
	11250 6550 11450 6550
Entry Wire Line
	11450 7950 11550 7850
Entry Wire Line
	11450 8050 11550 7950
Entry Wire Line
	11450 8150 11550 8050
Entry Wire Line
	11450 8250 11550 8150
Entry Wire Line
	11450 8350 11550 8250
Entry Wire Line
	11450 8450 11550 8350
Entry Wire Line
	11450 8550 11550 8450
Wire Wire Line
	11250 5850 11450 5850
Wire Wire Line
	11450 5950 11250 5950
Wire Wire Line
	11250 6050 11450 6050
Wire Wire Line
	11250 6150 11450 6150
Wire Wire Line
	11250 6250 11450 6250
Wire Wire Line
	11250 6350 11450 6350
Wire Wire Line
	11250 6450 11450 6450
Wire Bus Line
	9950 9600 6450 9600
Connection ~ 6450 9600
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 60DD2229
P 9500 2350
F 0 "J2" H 9550 2900 50  0000 C CNN
F 1 "ADDR_BUS" H 9550 2800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 9500 2350 50  0001 C CNN
F 3 "~" H 9500 2350 50  0001 C CNN
	1    9500 2350
	1    0    0    -1  
$EndComp
Entry Wire Line
	8950 1950 9050 2050
Entry Wire Line
	8950 2050 9050 2150
Entry Wire Line
	8950 2150 9050 2250
Entry Wire Line
	8950 2250 9050 2350
Entry Wire Line
	8950 2350 9050 2450
Entry Wire Line
	8950 2650 9050 2750
Entry Wire Line
	8950 2550 9050 2650
Entry Wire Line
	8950 2450 9050 2550
Wire Wire Line
	9050 2050 9300 2050
Wire Wire Line
	9300 2150 9050 2150
Wire Wire Line
	9050 2250 9300 2250
Wire Wire Line
	9300 2350 9050 2350
Wire Wire Line
	9050 2450 9300 2450
Wire Wire Line
	9300 2550 9050 2550
Wire Wire Line
	9050 2650 9300 2650
Wire Wire Line
	9050 2750 9300 2750
Entry Wire Line
	10050 2050 10150 1950
Entry Wire Line
	10050 2150 10150 2050
Entry Wire Line
	10050 2250 10150 2150
Entry Wire Line
	10050 2350 10150 2250
Entry Wire Line
	10050 2450 10150 2350
Entry Wire Line
	10050 2550 10150 2450
Entry Wire Line
	10050 2650 10150 2550
Wire Wire Line
	10050 2050 9800 2050
Wire Wire Line
	9800 2150 10050 2150
Wire Wire Line
	10050 2250 9800 2250
Wire Wire Line
	9800 2350 10050 2350
Wire Wire Line
	10050 2450 9800 2450
Wire Wire Line
	9800 2550 10050 2550
Wire Wire Line
	10050 2650 9800 2650
Entry Wire Line
	8850 4700 8950 4600
Entry Wire Line
	8850 4000 8950 3900
Entry Wire Line
	8850 4100 8950 4000
Entry Wire Line
	8850 4200 8950 4100
Entry Wire Line
	8850 4300 8950 4200
Entry Wire Line
	8850 4400 8950 4300
Entry Wire Line
	8850 4500 8950 4400
Entry Wire Line
	8850 4600 8950 4500
Wire Bus Line
	10150 1650 8950 1650
Entry Wire Line
	8850 2550 8950 2450
Entry Wire Line
	8850 1950 8950 1850
Entry Wire Line
	8850 2050 8950 1950
Entry Wire Line
	8850 2150 8950 2050
Entry Wire Line
	8850 2250 8950 2150
Entry Wire Line
	8850 2350 8950 2250
Entry Wire Line
	8850 2450 8950 2350
Wire Wire Line
	8500 4000 8850 4000
Wire Wire Line
	8500 4100 8850 4100
Wire Wire Line
	8500 4200 8850 4200
Wire Wire Line
	8500 4300 8850 4300
Wire Wire Line
	8500 4400 8850 4400
Wire Wire Line
	8500 4500 8850 4500
Wire Wire Line
	8500 4600 8850 4600
Wire Wire Line
	8500 4700 8850 4700
Wire Wire Line
	8500 2550 8850 2550
Wire Wire Line
	8850 2450 8500 2450
Wire Wire Line
	8500 2350 8850 2350
Wire Wire Line
	8850 2250 8500 2250
Wire Wire Line
	8500 2150 8850 2150
Wire Wire Line
	8850 2050 8500 2050
Wire Wire Line
	8500 1950 8850 1950
$Comp
L power:GND #PWR0128
U 1 1 61262803
P 8000 3150
F 0 "#PWR0128" H 8000 2900 50  0001 C CNN
F 1 "GND" H 8005 2977 50  0000 C CNN
F 2 "" H 8000 3150 50  0001 C CNN
F 3 "" H 8000 3150 50  0001 C CNN
	1    8000 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61263299
P 8000 5300
F 0 "#PWR0129" H 8000 5050 50  0001 C CNN
F 1 "GND" H 8005 5127 50  0000 C CNN
F 2 "" H 8000 5300 50  0001 C CNN
F 3 "" H 8000 5300 50  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0130
U 1 1 612E8884
P 8000 1550
F 0 "#PWR0130" H 8000 1400 50  0001 C CNN
F 1 "VDD" H 8015 1723 50  0000 C CNN
F 2 "" H 8000 1550 50  0001 C CNN
F 3 "" H 8000 1550 50  0001 C CNN
	1    8000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0131
U 1 1 612E9CE8
P 8000 3700
F 0 "#PWR0131" H 8000 3550 50  0001 C CNN
F 1 "VDD" H 8015 3873 50  0000 C CNN
F 2 "" H 8000 3700 50  0001 C CNN
F 3 "" H 8000 3700 50  0001 C CNN
	1    8000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 612EC9FC
P 7500 5000
F 0 "#PWR0132" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 612EEC28
P 7500 2850
F 0 "#PWR0133" H 7500 2600 50  0001 C CNN
F 1 "GND" H 7505 2677 50  0000 C CNN
F 2 "" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0134
U 1 1 612EF734
P 7500 2750
F 0 "#PWR0134" H 7500 2600 50  0001 C CNN
F 1 "VDD" V 7515 2877 50  0000 L CNN
F 2 "" H 7500 2750 50  0001 C CNN
F 3 "" H 7500 2750 50  0001 C CNN
	1    7500 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0135
U 1 1 612F02D7
P 7500 4900
F 0 "#PWR0135" H 7500 4750 50  0001 C CNN
F 1 "VDD" V 7515 5027 50  0000 L CNN
F 2 "" H 7500 4900 50  0001 C CNN
F 3 "" H 7500 4900 50  0001 C CNN
	1    7500 4900
	0    -1   -1   0   
$EndComp
Entry Wire Line
	6800 1850 6900 1950
Wire Wire Line
	7500 1950 6900 1950
Entry Wire Line
	6800 1950 6900 2050
Entry Wire Line
	6800 2050 6900 2150
Entry Wire Line
	6800 2150 6900 2250
Entry Wire Line
	6800 2250 6900 2350
Entry Wire Line
	6800 2350 6900 2450
Entry Wire Line
	6800 2450 6900 2550
Wire Wire Line
	6900 2050 7500 2050
Wire Wire Line
	7500 2150 6900 2150
Wire Wire Line
	6900 2250 7500 2250
Wire Wire Line
	7500 2350 6900 2350
Wire Wire Line
	6900 2450 7500 2450
Wire Wire Line
	7500 2550 6900 2550
Entry Wire Line
	6800 3900 6900 4000
Entry Wire Line
	6800 4000 6900 4100
Entry Wire Line
	6800 4100 6900 4200
Entry Wire Line
	6800 4200 6900 4300
Entry Wire Line
	6800 4300 6900 4400
Entry Wire Line
	6800 4400 6900 4500
Entry Wire Line
	6800 4500 6900 4600
Entry Wire Line
	6800 4600 6900 4700
Wire Wire Line
	6900 4000 7500 4000
Wire Wire Line
	7500 4100 6900 4100
Wire Wire Line
	6900 4200 7500 4200
Wire Wire Line
	7500 4300 6900 4300
Wire Wire Line
	6900 4400 7500 4400
Wire Wire Line
	7500 4500 6900 4500
Wire Wire Line
	6900 4600 7500 4600
Wire Wire Line
	7500 4700 6900 4700
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J4
U 1 1 616222FC
P 14100 7400
F 0 "J4" H 14150 7900 50  0000 C CNN
F 1 "PORT1" H 14150 7800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 14100 7400 50  0001 C CNN
F 3 "~" H 14100 7400 50  0001 C CNN
	1    14100 7400
	1    0    0    -1  
$EndComp
Entry Wire Line
	13550 7200 13650 7100
Entry Wire Line
	13550 7300 13650 7200
Entry Wire Line
	13550 7400 13650 7300
Entry Wire Line
	13550 7500 13650 7400
Entry Wire Line
	13550 7600 13650 7500
Entry Wire Line
	13550 7700 13650 7600
Entry Wire Line
	13550 7800 13650 7700
Entry Wire Line
	13550 7900 13650 7800
Wire Wire Line
	13650 7100 13900 7100
Wire Wire Line
	13900 7200 13650 7200
Wire Wire Line
	13650 7300 13900 7300
Wire Wire Line
	13900 7400 13650 7400
Wire Wire Line
	13650 7500 13900 7500
Wire Wire Line
	13900 7600 13650 7600
Wire Wire Line
	13650 7700 13900 7700
Wire Wire Line
	13650 7800 13900 7800
Entry Wire Line
	14650 7100 14750 7200
Entry Wire Line
	14650 7200 14750 7300
Entry Wire Line
	14650 7300 14750 7400
Entry Wire Line
	14650 7400 14750 7500
Entry Wire Line
	14650 7500 14750 7600
Entry Wire Line
	14650 7600 14750 7700
Entry Wire Line
	14650 7700 14750 7800
Entry Wire Line
	14650 7800 14750 7900
Wire Wire Line
	14400 7100 14650 7100
Wire Wire Line
	14650 7200 14400 7200
Wire Wire Line
	14400 7300 14650 7300
Wire Wire Line
	14650 7400 14400 7400
Wire Wire Line
	14400 7500 14650 7500
Wire Wire Line
	14650 7600 14400 7600
Wire Wire Line
	14400 7700 14650 7700
Wire Wire Line
	14650 7800 14400 7800
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 616930F6
P 14100 8550
F 0 "J5" H 14150 9050 50  0000 C CNN
F 1 "PORT2" H 14150 8950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 14100 8550 50  0001 C CNN
F 3 "~" H 14100 8550 50  0001 C CNN
	1    14100 8550
	1    0    0    -1  
$EndComp
Entry Wire Line
	13550 8350 13650 8250
Entry Wire Line
	13550 8450 13650 8350
Entry Wire Line
	13550 8550 13650 8450
Entry Wire Line
	13550 8650 13650 8550
Entry Wire Line
	13550 8750 13650 8650
Entry Wire Line
	13550 8850 13650 8750
Entry Wire Line
	13550 8950 13650 8850
Entry Wire Line
	13550 9050 13650 8950
Wire Wire Line
	13650 8250 13900 8250
Wire Wire Line
	13900 8350 13650 8350
Wire Wire Line
	13650 8450 13900 8450
Wire Wire Line
	13900 8550 13650 8550
Wire Wire Line
	13650 8650 13900 8650
Wire Wire Line
	13900 8750 13650 8750
Wire Wire Line
	13650 8850 13900 8850
Wire Wire Line
	13650 8950 13900 8950
Entry Wire Line
	14650 8250 14750 8350
Entry Wire Line
	14650 8350 14750 8450
Entry Wire Line
	14650 8450 14750 8550
Entry Wire Line
	14650 8550 14750 8650
Entry Wire Line
	14650 8650 14750 8750
Entry Wire Line
	14650 8750 14750 8850
Entry Wire Line
	14650 8850 14750 8950
Entry Wire Line
	14650 8950 14750 9050
Wire Wire Line
	14400 8250 14650 8250
Wire Wire Line
	14650 8350 14400 8350
Wire Wire Line
	14400 8450 14650 8450
Wire Wire Line
	14650 8550 14400 8550
Wire Wire Line
	14400 8650 14650 8650
Wire Wire Line
	14650 8750 14400 8750
Wire Wire Line
	14400 8850 14650 8850
Wire Wire Line
	14650 8950 14400 8950
Connection ~ 9950 9600
Wire Bus Line
	9950 9600 13550 9600
Connection ~ 13550 9600
Wire Bus Line
	13550 9600 14750 9600
NoConn ~ 8500 1850
Text Label 14450 7100 0    50   ~ 0
PD0
Text Label 13650 7100 0    50   ~ 0
PD1
Text Label 14450 7200 0    50   ~ 0
PD2
Text Label 13650 7200 0    50   ~ 0
PD3
Text Label 14450 7300 0    50   ~ 0
PD4
Text Label 13650 7300 0    50   ~ 0
PD5
Text Label 14450 7400 0    50   ~ 0
PD6
Text Label 13650 7400 0    50   ~ 0
PD7
Text Label 14450 7500 0    50   ~ 0
~BDM
Text Label 14450 7600 0    50   ~ 0
~RTS
Text Label 14450 7700 0    50   ~ 0
RXD
Text Label 14450 7800 0    50   ~ 0
SRXD
Text Label 13650 7800 0    50   ~ 0
STXD
Text Label 13650 7700 0    50   ~ 0
SCLK
Text Label 13650 7600 0    50   ~ 0
TXD
Text Label 13650 7500 0    50   ~ 0
~CTS
Text Label 13650 8250 0    50   ~ 0
~RESET
Text Label 13650 8350 0    50   ~ 0
~UWE
Text Label 14450 8250 0    50   ~ 0
~XRSET
Text Label 14450 8350 0    50   ~ 0
~RD
Text Label 14450 8450 0    50   ~ 0
~LWE
Text Label 14450 8550 0    50   ~ 0
PWM0
Text Label 14450 8650 0    50   ~ 0
LD1
Text Label 14450 8750 0    50   ~ 0
LD3
Text Label 14450 8850 0    50   ~ 0
LLP
Text Label 14450 8950 0    50   ~ 0
LACD
Text Label 13650 8450 0    50   ~ 0
~EXTRN
Text Label 13650 8550 0    50   ~ 0
LD0
Text Label 13650 8650 0    50   ~ 0
LD2
Text Label 13650 8750 0    50   ~ 0
LFLM
Text Label 13650 8850 0    50   ~ 0
LCLK
Text Label 13650 8950 0    50   ~ 0
LCON
Text Label 6950 1950 0    50   ~ 0
A1
Text Label 6950 2050 0    50   ~ 0
A2
Text Label 6950 2150 0    50   ~ 0
A3
Text Label 6950 2250 0    50   ~ 0
A4
Text Label 6950 2350 0    50   ~ 0
A5
Text Label 6950 2450 0    50   ~ 0
A6
Text Label 6950 2550 0    50   ~ 0
A7
Text Label 8650 1950 0    50   ~ 0
AB1
Text Label 8650 2050 0    50   ~ 0
AB2
Text Label 8650 2150 0    50   ~ 0
AB3
Text Label 8650 2250 0    50   ~ 0
AB4
Text Label 8650 2350 0    50   ~ 0
AB5
Text Label 8650 2450 0    50   ~ 0
AB6
Text Label 8650 2550 0    50   ~ 0
AB7
Text Label 9100 2050 0    50   ~ 0
AB1
Text Label 9900 2050 0    50   ~ 0
AB2
Text Label 9100 2150 0    50   ~ 0
AB3
Text Label 9900 2150 0    50   ~ 0
AB4
Text Label 9100 2250 0    50   ~ 0
AB5
Text Label 9900 2250 0    50   ~ 0
AB6
Text Label 9100 2350 0    50   ~ 0
AB7
Text Label 9900 2350 0    50   ~ 0
AB8
Text Label 9100 2450 0    50   ~ 0
AB9
Text Label 9900 2450 0    50   ~ 0
AB10
Text Label 9100 2550 0    50   ~ 0
AB11
Text Label 9900 2550 0    50   ~ 0
AB12
Text Label 9100 2650 0    50   ~ 0
AB13
Text Label 9900 2650 0    50   ~ 0
AB14
Text Label 9100 2750 0    50   ~ 0
AB15
Text Label 6950 4000 0    50   ~ 0
A8
Text Label 6950 4100 0    50   ~ 0
A9
Text Label 6950 4200 0    50   ~ 0
A10
Text Label 6950 4300 0    50   ~ 0
A11
Text Label 6950 4400 0    50   ~ 0
A12
Text Label 6950 4500 0    50   ~ 0
A13
Text Label 6950 4600 0    50   ~ 0
A14
Text Label 6950 4700 0    50   ~ 0
A15
Text Label 8650 4000 0    50   ~ 0
AB8
Text Label 8650 4100 0    50   ~ 0
AB9
Text Label 8650 4200 0    50   ~ 0
AB10
Text Label 8650 4300 0    50   ~ 0
AB11
Text Label 8650 4400 0    50   ~ 0
AB12
Text Label 8650 4500 0    50   ~ 0
AB13
Text Label 8650 4600 0    50   ~ 0
AB14
Text Label 8650 4700 0    50   ~ 0
AB15
Text Label 11300 7950 0    50   ~ 0
DB7
Text Label 11300 8050 0    50   ~ 0
DB6
Text Label 11300 8150 0    50   ~ 0
DB5
Text Label 11300 8250 0    50   ~ 0
DB4
Text Label 11300 8350 0    50   ~ 0
DB3
Text Label 11300 8450 0    50   ~ 0
DB2
Text Label 11300 8550 0    50   ~ 0
DB1
Text Label 11300 8650 0    50   ~ 0
DB0
Text Label 11300 5850 0    50   ~ 0
DB15
Text Label 11300 5950 0    50   ~ 0
DB14
Text Label 11300 6050 0    50   ~ 0
DB13
Text Label 11300 6150 0    50   ~ 0
DB12
Text Label 11300 6250 0    50   ~ 0
DB11
Text Label 11300 6350 0    50   ~ 0
DB10
Text Label 11300 6450 0    50   ~ 0
DB9
Text Label 11300 6550 0    50   ~ 0
DB8
Text Label 12450 7050 0    50   ~ 0
DB1
Text Label 11700 7050 0    50   ~ 0
DB0
Text Label 12450 7150 0    50   ~ 0
DB3
Text Label 11700 7150 0    50   ~ 0
DB2
Text Label 12450 7250 0    50   ~ 0
DB5
Text Label 11700 7250 0    50   ~ 0
DB4
Text Label 12450 7350 0    50   ~ 0
DB7
Text Label 11700 7350 0    50   ~ 0
DB6
Text Label 12450 7450 0    50   ~ 0
DB9
Text Label 11700 7450 0    50   ~ 0
DB8
Text Label 12450 7550 0    50   ~ 0
DB11
Text Label 11700 7550 0    50   ~ 0
DB10
Text Label 12450 7650 0    50   ~ 0
DB13
Text Label 11700 7650 0    50   ~ 0
DB12
Text Label 12450 7750 0    50   ~ 0
DB15
Text Label 11700 7750 0    50   ~ 0
DB14
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61C2B5F4
P 12600 950
F 0 "#FLG0102" H 12600 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 12600 1123 50  0000 C CNN
F 2 "" H 12600 950 50  0001 C CNN
F 3 "~" H 12600 950 50  0001 C CNN
	1    12600 950 
	1    0    0    -1  
$EndComp
Connection ~ 7950 8900
Wire Wire Line
	7950 8900 8050 8900
NoConn ~ 9800 2750
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 609842C3
P 14050 3800
F 0 "J3" H 14100 4217 50  0000 C CNN
F 1 "POWER" H 14100 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 14050 3800 50  0001 C CNN
F 3 "~" H 14050 3800 50  0001 C CNN
	1    14050 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 609871E9
P 14550 4000
F 0 "#PWR0136" H 14550 3750 50  0001 C CNN
F 1 "GND" H 14555 3827 50  0000 C CNN
F 2 "" H 14550 4000 50  0001 C CNN
F 3 "" H 14550 4000 50  0001 C CNN
	1    14550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14350 4000 14550 4000
Connection ~ 14550 4000
Wire Wire Line
	14350 3900 14550 3900
Wire Wire Line
	14550 3900 14550 4000
$Comp
L power:VDD #PWR0138
U 1 1 60AB15AB
P 13750 3200
F 0 "#PWR0138" H 13750 3050 50  0001 C CNN
F 1 "VDD" H 13765 3373 50  0000 C CNN
F 2 "" H 13750 3200 50  0001 C CNN
F 3 "" H 13750 3200 50  0001 C CNN
	1    13750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 3200 13750 3250
Wire Wire Line
	13750 3600 13850 3600
Connection ~ 13750 3600
NoConn ~ 14350 3800
$Comp
L Device:C C6
U 1 1 60620097
P 13350 1100
F 0 "C6" H 13350 1200 50  0000 L CNN
F 1 "0.1uf" H 13350 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13388 950 50  0001 C CNN
F 3 "~" H 13350 1100 50  0001 C CNN
	1    13350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60620FD9
P 13600 1100
F 0 "C7" H 13600 1200 50  0000 L CNN
F 1 "0.1uf" H 13600 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13638 950 50  0001 C CNN
F 3 "~" H 13600 1100 50  0001 C CNN
	1    13600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6065D696
P 13850 1100
F 0 "C8" H 13850 1200 50  0000 L CNN
F 1 "0.1uf" H 13850 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13888 950 50  0001 C CNN
F 3 "~" H 13850 1100 50  0001 C CNN
	1    13850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60699AE7
P 14100 1100
F 0 "C9" H 14100 1200 50  0000 L CNN
F 1 "0.1uf" H 14100 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 14138 950 50  0001 C CNN
F 3 "~" H 14100 1100 50  0001 C CNN
	1    14100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 606D60ED
P 14350 1100
F 0 "C10" H 14350 1200 50  0000 L CNN
F 1 "0.1uf" H 14350 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 14388 950 50  0001 C CNN
F 3 "~" H 14350 1100 50  0001 C CNN
	1    14350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 607125A9
P 14600 1100
F 0 "C11" H 14600 1200 50  0000 L CNN
F 1 "0.1uf" H 14600 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 14638 950 50  0001 C CNN
F 3 "~" H 14600 1100 50  0001 C CNN
	1    14600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6074E986
P 14850 1100
F 0 "C12" H 14850 1200 50  0000 L CNN
F 1 "0.1uf" H 14850 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 14888 950 50  0001 C CNN
F 3 "~" H 14850 1100 50  0001 C CNN
	1    14850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 1250 13600 1250
Connection ~ 13600 1250
Wire Wire Line
	13600 1250 13850 1250
Connection ~ 13850 1250
Wire Wire Line
	13850 1250 14100 1250
Connection ~ 14100 1250
Wire Wire Line
	14100 1250 14350 1250
Connection ~ 14350 1250
Wire Wire Line
	14350 1250 14600 1250
Connection ~ 14600 1250
Wire Wire Line
	14600 1250 14850 1250
$Comp
L power:GND #PWR0139
U 1 1 607C805C
P 13100 1250
F 0 "#PWR0139" H 13100 1000 50  0001 C CNN
F 1 "GND" H 13105 1077 50  0000 C CNN
F 2 "" H 13100 1250 50  0001 C CNN
F 3 "" H 13100 1250 50  0001 C CNN
	1    13100 1250
	1    0    0    -1  
$EndComp
Connection ~ 13350 950 
Wire Wire Line
	13350 950  13600 950 
Connection ~ 13600 950 
Wire Wire Line
	13600 950  13850 950 
Connection ~ 13850 950 
Wire Wire Line
	13850 950  14100 950 
Connection ~ 14100 950 
Wire Wire Line
	14100 950  14350 950 
Connection ~ 14350 950 
Wire Wire Line
	14350 950  14600 950 
Connection ~ 14600 950 
Wire Wire Line
	14600 950  14850 950 
$Comp
L Device:C C5
U 1 1 60807EC4
P 13100 1100
F 0 "C5" H 13100 1200 50  0000 L CNN
F 1 "0.1uf" H 13100 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13138 950 50  0001 C CNN
F 3 "~" H 13100 1100 50  0001 C CNN
	1    13100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 950  13350 950 
$Comp
L Device:C C13
U 1 1 60808E7E
P 15100 1100
F 0 "C13" H 15100 1200 50  0000 L CNN
F 1 "0.1uf" H 15100 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 15138 950 50  0001 C CNN
F 3 "~" H 15100 1100 50  0001 C CNN
	1    15100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60809D27
P 15350 1100
F 0 "C14" H 15350 1200 50  0000 L CNN
F 1 "0.1uf" H 15350 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 15388 950 50  0001 C CNN
F 3 "~" H 15350 1100 50  0001 C CNN
	1    15350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 950  15100 950 
Connection ~ 14850 950 
Connection ~ 15100 950 
Wire Wire Line
	15100 950  14850 950 
Wire Wire Line
	14850 1250 15100 1250
Connection ~ 14850 1250
Connection ~ 15100 1250
Wire Wire Line
	15100 1250 15350 1250
Wire Wire Line
	13100 1250 13350 1250
Connection ~ 13100 1250
Connection ~ 13350 1250
$Comp
L Device:C C15
U 1 1 6095AFE5
P 15600 1100
F 0 "C15" H 15600 1200 50  0000 L CNN
F 1 "0.1uf" H 15600 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 15638 950 50  0001 C CNN
F 3 "~" H 15600 1100 50  0001 C CNN
	1    15600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 950  15600 950 
Connection ~ 15350 950 
Wire Wire Line
	15600 1250 15350 1250
Connection ~ 15350 1250
$Comp
L power:VDD #PWR0140
U 1 1 609F7042
P 13100 950
F 0 "#PWR0140" H 13100 800 50  0001 C CNN
F 1 "VDD" H 13115 1123 50  0000 C CNN
F 2 "" H 13100 950 50  0001 C CNN
F 3 "" H 13100 950 50  0001 C CNN
	1    13100 950 
	1    0    0    -1  
$EndComp
Connection ~ 13100 950 
$Comp
L Device:C C16
U 1 1 60651F1E
P 13850 2000
F 0 "C16" H 13850 2100 50  0000 L CNN
F 1 "0.1uf" H 13850 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13888 1850 50  0001 C CNN
F 3 "~" H 13850 2000 50  0001 C CNN
	1    13850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 6065361E
P 13850 2150
F 0 "#PWR0141" H 13850 1900 50  0001 C CNN
F 1 "GND" H 13855 1977 50  0000 C CNN
F 2 "" H 13850 2150 50  0001 C CNN
F 3 "" H 13850 2150 50  0001 C CNN
	1    13850 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0142
U 1 1 60696C4B
P 7500 1850
F 0 "#PWR0142" H 7500 1700 50  0001 C CNN
F 1 "VDD" H 7515 2023 50  0000 C CNN
F 2 "" H 7500 1850 50  0001 C CNN
F 3 "" H 7500 1850 50  0001 C CNN
	1    7500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4550 6350 4550
Wire Wire Line
	5850 3950 6350 3950
Wire Wire Line
	6350 3750 5850 3750
Wire Wire Line
	5850 3650 6350 3650
Wire Wire Line
	6350 3550 5850 3550
Wire Wire Line
	5850 3450 6350 3450
Wire Wire Line
	6350 3350 5850 3350
Wire Wire Line
	5850 3250 6350 3250
Wire Wire Line
	6350 3150 5850 3150
Wire Wire Line
	5850 3050 6350 3050
Wire Wire Line
	6350 2750 5850 2750
Wire Wire Line
	5850 2650 6350 2650
Wire Wire Line
	6350 2550 5850 2550
Wire Wire Line
	5850 2450 6350 2450
Wire Wire Line
	6350 2350 5850 2350
Wire Wire Line
	5850 2250 6350 2250
Wire Wire Line
	6350 2150 5850 2150
Wire Wire Line
	5850 2050 6350 2050
$Comp
L Device:R R3
U 1 1 6079D7B5
P 900 2900
F 0 "R3" H 970 2946 50  0000 L CNN
F 1 "3.3K" H 970 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 830 2900 50  0001 C CNN
F 3 "~" H 900 2900 50  0001 C CNN
	1    900  2900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0143
U 1 1 60837DD7
P 900 2750
F 0 "#PWR0143" H 900 2600 50  0001 C CNN
F 1 "VDD" H 915 2923 50  0000 C CNN
F 2 "" H 900 2750 50  0001 C CNN
F 3 "" H 900 2750 50  0001 C CNN
	1    900  2750
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0121
U 1 1 60847A2C
P 13150 1850
F 0 "#PWR0121" H 13150 1700 50  0001 C CNN
F 1 "VDD" H 13165 2023 50  0000 C CNN
F 2 "" H 13150 1850 50  0001 C CNN
F 3 "" H 13150 1850 50  0001 C CNN
	1    13150 1850
	1    0    0    -1  
$EndComp
Connection ~ 13150 1850
Wire Wire Line
	13150 1850 13850 1850
Wire Wire Line
	12600 950  13100 950 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 609E9F5D
P 12600 1250
F 0 "#FLG0101" H 12600 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 12600 1423 50  0000 C CNN
F 2 "" H 12600 1250 50  0001 C CNN
F 3 "~" H 12600 1250 50  0001 C CNN
	1    12600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 1250 13100 1250
$Comp
L mc68ez328:MC68EZ328 U1
U 1 1 608DB1B4
P 3950 3250
F 0 "U1" H 2100 4800 50  0000 C CNN
F 1 "MC68EZ328" H 2250 4700 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3250 50  0001 C CNN
	1    3950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3050 1950 3050
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J7
U 1 1 613F1D2B
P 14050 5900
F 0 "J7" H 14100 6317 50  0000 C CNN
F 1 "LAN CONTROL" H 14100 6226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 14050 5900 50  0001 C CNN
F 3 "~" H 14050 5900 50  0001 C CNN
	1    14050 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 61480B77
P 14050 4700
F 0 "J6" H 14100 5017 50  0000 C CNN
F 1 "LAN POWER" H 14100 4926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 14050 4700 50  0001 C CNN
F 3 "~" H 14050 4700 50  0001 C CNN
	1    14050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 4800 13850 4900
Wire Wire Line
	13850 4900 14350 4900
Wire Wire Line
	14350 4900 14350 4800
$Comp
L power:GND #PWR0144
U 1 1 614C87C6
P 14350 4900
F 0 "#PWR0144" H 14350 4650 50  0001 C CNN
F 1 "GND" H 14355 4727 50  0000 C CNN
F 2 "" H 14350 4900 50  0001 C CNN
F 3 "" H 14350 4900 50  0001 C CNN
	1    14350 4900
	1    0    0    -1  
$EndComp
Connection ~ 14350 4900
Wire Wire Line
	13750 4600 13850 4600
Wire Wire Line
	13750 4250 14350 4250
Wire Wire Line
	14350 4250 14350 4600
Connection ~ 13750 4250
Wire Wire Line
	13750 4250 13750 4600
NoConn ~ 14350 4700
NoConn ~ 13850 4700
Entry Wire Line
	13550 6300 13650 6200
Entry Wire Line
	13550 6200 13650 6100
Entry Wire Line
	13550 6200 13650 6100
Entry Wire Line
	13550 6100 13650 6000
Entry Wire Line
	13550 6000 13650 5900
Wire Wire Line
	13650 5900 13850 5900
Wire Wire Line
	13850 6000 13650 6000
Wire Wire Line
	13650 6100 13850 6100
Wire Wire Line
	13850 6200 13650 6200
NoConn ~ 14350 6100
NoConn ~ 14350 6200
Entry Wire Line
	13550 5700 13650 5800
Entry Wire Line
	14650 5800 14750 5700
Entry Wire Line
	14650 5700 14750 5600
Entry Wire Line
	13550 5600 13650 5700
Wire Wire Line
	13650 5800 13850 5800
Wire Wire Line
	13850 5700 13650 5700
Wire Bus Line
	8950 5300 13550 5300
Connection ~ 13550 5300
Wire Bus Line
	13500 5300 13550 5300
Entry Wire Line
	14650 6000 14750 6100
Entry Wire Line
	14650 5900 14750 6000
Wire Wire Line
	14350 5900 14650 5900
Wire Wire Line
	14650 6000 14350 6000
Wire Bus Line
	13550 5300 14750 5300
Wire Wire Line
	14350 5700 14650 5700
Wire Wire Line
	14350 5800 14650 5800
Text Label 13650 5700 0    50   ~ 0
AB1
Text Label 14450 5700 0    50   ~ 0
AB2
Text Label 13650 5800 0    50   ~ 0
AB3
Text Label 14450 5800 0    50   ~ 0
AB4
Text Label 13650 5900 0    50   ~ 0
~RESET
Text Label 14450 5900 0    50   ~ 0
~IRQ5
Text Label 14450 6000 0    50   ~ 0
~RD
Text Label 13650 6000 0    50   ~ 0
~UWE
Text Label 13650 6200 0    50   ~ 0
LCON
Text Label 13650 6100 0    50   ~ 0
~EXTRN
Entry Wire Line
	6350 2850 6450 2950
Wire Wire Line
	5850 2850 6350 2850
Text Label 6050 2850 0    50   ~ 0
~IRQ5
$Comp
L power:VDD #PWR0118
U 1 1 6147463D
P 10900 2500
F 0 "#PWR0118" H 10900 2350 50  0001 C CNN
F 1 "VDD" H 10915 2673 50  0000 C CNN
F 2 "" H 10900 2500 50  0001 C CNN
F 3 "" H 10900 2500 50  0001 C CNN
	1    10900 2500
	1    0    0    -1  
$EndComp
Connection ~ 10900 2500
Connection ~ 13750 3250
Wire Wire Line
	13750 3250 13750 3600
Wire Wire Line
	13750 3600 13750 3700
Wire Wire Line
	13750 3700 13850 3700
Connection ~ 13750 3700
Wire Wire Line
	13750 3700 13750 4250
Wire Wire Line
	14350 3250 14350 3600
Connection ~ 14350 3600
Wire Wire Line
	14350 3600 14350 3700
NoConn ~ 13850 3800
Wire Wire Line
	13850 3900 13850 4000
Wire Wire Line
	13850 4150 14350 4150
Wire Wire Line
	14350 4150 14350 4000
Connection ~ 13850 4000
Wire Wire Line
	13850 4000 13850 4150
Connection ~ 14350 4000
Wire Wire Line
	13750 3250 14350 3250
$Comp
L Connector:Barrel_Jack_Switch J8
U 1 1 6142947B
P 15050 2450
F 0 "J8" H 14820 2400 50  0000 R CNN
F 1 "Barrel_Jack_Switch" H 14820 2491 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 15100 2410 50  0001 C CNN
F 3 "~" H 15100 2410 50  0001 C CNN
	1    15050 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	14750 2550 14350 2550
Wire Wire Line
	14350 2550 14350 3250
Connection ~ 14350 3250
$Comp
L power:GND #PWR01
U 1 1 6150C391
P 14550 2150
F 0 "#PWR01" H 14550 1900 50  0001 C CNN
F 1 "GND" H 14555 1977 50  0000 C CNN
F 2 "" H 14550 2150 50  0001 C CNN
F 3 "" H 14550 2150 50  0001 C CNN
	1    14550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 2150 14750 2150
Wire Wire Line
	14750 2150 14750 2350
Connection ~ 14750 2350
Wire Wire Line
	14750 2350 14750 2450
$Comp
L Device:C C1
U 1 1 61494816
P 15850 1100
F 0 "C1" H 15850 1200 50  0000 L CNN
F 1 "0.1uf" H 15850 1000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 15888 950 50  0001 C CNN
F 3 "~" H 15850 1100 50  0001 C CNN
	1    15850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15850 950  15600 950 
Connection ~ 15600 950 
Wire Wire Line
	15600 1250 15850 1250
Connection ~ 15600 1250
Wire Wire Line
	600  1400 800  1400
Wire Wire Line
	800  1400 1000 1400
Wire Wire Line
	600  800  800  800 
Wire Wire Line
	800  800  1000 800 
Wire Wire Line
	7750 6300 8050 6300
Wire Wire Line
	7750 8900 7950 8900
Wire Bus Line
	14750 5300 14750 5700
Wire Bus Line
	13550 5300 13550 5700
Wire Bus Line
	9950 6850 9950 9600
Wire Bus Line
	10500 1250 10500 3500
Wire Bus Line
	3750 7650 3750 9600
Wire Bus Line
	12000 3500 12000 4800
Wire Bus Line
	10150 1650 10150 2550
Wire Bus Line
	12750 7150 12750 8550
Wire Bus Line
	3750 5650 6050 5650
Wire Bus Line
	2950 5650 3750 5650
Wire Bus Line
	3750 5650 3750 7150
Wire Bus Line
	6050 5650 6050 7150
Wire Bus Line
	6800 5850 6800 7650
Wire Bus Line
	14750 6000 14750 9600
Wire Bus Line
	13550 6000 13550 9600
Wire Bus Line
	6800 1500 6800 5850
Wire Bus Line
	8950 1650 8950 5300
Wire Bus Line
	11550 5950 11550 8550
Wire Bus Line
	1350 1250 1350 9600
Wire Bus Line
	4100 5850 4100 8550
Wire Bus Line
	1650 5850 1650 8550
Wire Bus Line
	2850 1500 6800 1500
Wire Bus Line
	6450 1250 6450 9600
Wire Bus Line
	9250 5650 9250 8550
$EndSCHEMATC
