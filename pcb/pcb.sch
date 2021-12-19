EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_Array:ULN2003 U3
U 1 1 6073501E
P 6300 2500
F 0 "U3" H 6300 3167 50  0000 C CNN
F 1 "ULN2003" H 6300 3076 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 6350 1950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 6400 2300 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003 U4
U 1 1 60736108
P 6300 4000
F 0 "U4" H 6300 4667 50  0000 C CNN
F 1 "ULN2003" H 6300 4576 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 6350 3450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 6400 3800 50  0001 C CNN
	1    6300 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003 U5
U 1 1 60737509
P 6300 5500
F 0 "U5" H 6300 6167 50  0000 C CNN
F 1 "ULN2003" H 6300 6076 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 6350 4950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 6400 5300 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3100 6300 3250
Wire Wire Line
	6300 3250 5750 3250
Wire Wire Line
	5750 3250 5750 4750
Wire Wire Line
	5750 4750 6300 4750
Wire Wire Line
	6300 4750 6300 4600
Wire Wire Line
	5750 4750 5750 6250
Wire Wire Line
	5750 6250 6300 6250
Wire Wire Line
	6300 6250 6300 6100
Connection ~ 5750 4750
$Comp
L power:+5V #PWR04
U 1 1 60741C4B
P 850 950
F 0 "#PWR04" H 850 800 50  0001 C CNN
F 1 "+5V" H 865 1123 50  0000 C CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "" H 850 950 50  0001 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60742F2B
P 750 1650
F 0 "#PWR03" H 750 1400 50  0001 C CNN
F 1 "GND" H 755 1477 50  0000 C CNN
F 2 "" H 750 1650 50  0001 C CNN
F 3 "" H 750 1650 50  0001 C CNN
	1    750  1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 6074383C
P 1350 1300
F 0 "C1" H 1468 1346 50  0000 L CNN
F 1 "220uF" H 1468 1255 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-20_AVX-F" H 1388 1150 50  0001 C CNN
F 3 "~" H 1350 1300 50  0001 C CNN
	1    1350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60744CB1
P 1100 1050
F 0 "R1" V 893 1050 50  0000 C CNN
F 1 "4.7" V 984 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1030 1050 50  0001 C CNN
F 3 "~" H 1100 1050 50  0001 C CNN
	1    1100 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	850  950  850  1050
Wire Wire Line
	850  1050 950  1050
Wire Wire Line
	1250 1050 1350 1050
Wire Wire Line
	1350 1050 1350 1150
Wire Wire Line
	1350 1550 1350 1450
Text GLabel 1350 950  1    50   Input ~ 0
5VDC
Connection ~ 1350 1050
Text GLabel 1950 1550 0    50   Input ~ 0
PWR_EN
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 6075E35E
P 2600 1150
F 0 "Q1" V 2851 1150 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 2851 1150 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2800 1250 50  0001 C CNN
F 3 "~" H 2600 1150 50  0001 C CNN
	1    2600 1150
	0    1    -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 60761616
P 2300 1300
F 0 "R4" H 2230 1254 50  0000 R CNN
F 1 "1k" H 2230 1345 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2230 1300 50  0001 C CNN
F 3 "~" H 2300 1300 50  0001 C CNN
	1    2300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1350 2600 1550
Wire Wire Line
	2800 1050 2900 1050
Text GLabel 2900 950  1    50   Input ~ 0
PWR
Wire Wire Line
	2900 950  2900 1050
Wire Wire Line
	1350 950  1350 1050
Wire Wire Line
	750  1650 750  1550
Wire Wire Line
	750  1550 1350 1550
Wire Notes Line
	550  600  550  1950
Wire Notes Line
	550  1950 4250 1950
Wire Notes Line
	4250 1950 4250 600 
Wire Notes Line
	4250 600  550  600 
Text Notes 550  600  0    50   ~ 0
POWER SUPPLY\n
$Comp
L power:+12V #PWR05
U 1 1 6076D41B
P 3450 1050
F 0 "#PWR05" H 3450 900 50  0001 C CNN
F 1 "+12V" H 3465 1223 50  0000 C CNN
F 2 "" H 3450 1050 50  0001 C CNN
F 3 "" H 3450 1050 50  0001 C CNN
	1    3450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 6076DFD3
P 3700 1050
F 0 "#PWR06" H 3700 900 50  0001 C CNN
F 1 "+5V" H 3715 1223 50  0000 C CNN
F 2 "" H 3700 1050 50  0001 C CNN
F 3 "" H 3700 1050 50  0001 C CNN
	1    3700 1050
	1    0    0    -1  
$EndComp
Text GLabel 3950 1050 1    50   Input ~ 0
PWR
Wire Wire Line
	3350 1150 3450 1150
Wire Wire Line
	3450 1150 3450 1050
Wire Wire Line
	3350 1250 3700 1250
Wire Wire Line
	3350 1350 3950 1350
Wire Wire Line
	3950 1350 3950 1050
Text GLabel 3500 2650 0    50   Input ~ 0
5VDC
Wire Wire Line
	3700 2850 3700 2750
Wire Wire Line
	3700 2750 3600 2750
Wire Wire Line
	3600 2750 3600 2850
Connection ~ 3600 2750
$Comp
L power:GND #PWR07
U 1 1 6077CADF
P 6300 6250
F 0 "#PWR07" H 6300 6000 50  0001 C CNN
F 1 "GND" V 6305 6122 50  0000 R CNN
F 2 "" H 6300 6250 50  0001 C CNN
F 3 "" H 6300 6250 50  0001 C CNN
	1    6300 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5850 3600 6250
Wire Wire Line
	3600 6250 5750 6250
$Comp
L MCU_Microchip_ATmega:ATmega168PA-PU U2
U 1 1 607894EA
P 3600 4350
F 0 "U2" H 2957 4396 50  0000 R CNN
F 1 "ATmega168PA-PU" H 2957 4305 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3600 4350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48PA_88PA_168PA-Data-Sheet-40002011A.pdf" H 3600 4350 50  0001 C CNN
	1    3600 4350
	1    0    0    -1  
$EndComp
Text GLabel 4300 4650 2    50   Input ~ 0
RST
Wire Wire Line
	4200 4650 4300 4650
Text GLabel 2700 6250 0    50   Input ~ 0
RST
$Comp
L Device:R R3
U 1 1 6078BF1E
P 2800 6000
F 0 "R3" H 2730 5954 50  0000 R CNN
F 1 "10k" H 2730 6045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 6000 50  0001 C CNN
F 3 "~" H 2800 6000 50  0001 C CNN
	1    2800 6000
	-1   0    0    1   
$EndComp
Text GLabel 2700 5750 0    50   Input ~ 0
5VDC
Wire Wire Line
	2700 6250 2800 6250
Wire Wire Line
	2800 6250 2800 6150
Wire Wire Line
	2700 5750 2800 5750
Wire Wire Line
	2800 5750 2800 5850
$Comp
L Switch:SW_SPST SW1
U 1 1 6078F5F6
P 3200 6250
F 0 "SW1" H 3200 6485 50  0000 C CNN
F 1 "SW_SPST" H 3200 6394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 3200 6250 50  0001 C CNN
F 3 "~" H 3200 6250 50  0001 C CNN
	1    3200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6250 3600 6250
Connection ~ 3600 6250
Wire Wire Line
	3000 6250 2800 6250
Connection ~ 2800 6250
Text GLabel 4300 4850 2    50   Input ~ 0
TXD
Text GLabel 4300 4950 2    50   Input ~ 0
RXD
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 607997EC
P 1200 2350
F 0 "J1" H 1092 2062 50  0000 R CNN
F 1 "Conn_01x04_Female" V 1047 2062 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1200 2350 50  0001 C CNN
F 3 "~" H 1200 2350 50  0001 C CNN
	1    1200 2350
	1    0    0    1   
$EndComp
Text GLabel 900  2350 0    50   Input ~ 0
TXD
Text GLabel 900  2250 0    50   Input ~ 0
RXD
Text GLabel 900  2150 0    50   Input ~ 0
5VDC
$Comp
L power:GND #PWR01
U 1 1 6079A846
P 900 2450
F 0 "#PWR01" H 900 2200 50  0001 C CNN
F 1 "GND" H 905 2277 50  0000 C CNN
F 2 "" H 900 2450 50  0001 C CNN
F 3 "" H 900 2450 50  0001 C CNN
	1    900  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2150 1000 2150
Wire Wire Line
	900  2250 1000 2250
Wire Wire Line
	900  2350 1000 2350
Wire Wire Line
	900  2450 1000 2450
Connection ~ 5750 6250
Wire Notes Line
	550  2050 550  2700
Wire Notes Line
	550  2700 1300 2700
Wire Notes Line
	1300 2700 1300 2050
Wire Notes Line
	1300 2050 550  2050
Wire Wire Line
	4300 4850 4200 4850
Wire Wire Line
	4200 4950 4300 4950
Wire Wire Line
	4200 5250 4800 5250
Text GLabel 4300 5150 2    50   Input ~ 0
PWR_EN
Wire Wire Line
	4300 5150 4200 5150
Text GLabel 4300 5050 2    50   Input ~ 0
IR
Wire Wire Line
	4300 5050 4200 5050
$Comp
L Interface_Optical:TSOP21xx U1
U 1 1 6096A1B1
P 1900 5100
F 0 "U1" H 1888 5525 50  0000 C CNN
F 1 "TSOP21xx" H 1888 5434 50  0000 C CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 1850 4725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82460/tsop45.pdf" H 2550 5400 50  0001 C CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5300 2300 6400
Wire Wire Line
	2300 6400 3600 6400
Wire Wire Line
	3600 6400 3600 6250
$Comp
L Device:CP C2
U 1 1 60978284
P 2600 5100
F 0 "C2" H 2718 5146 50  0000 L CNN
F 1 "CP" H 2718 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2638 4950 50  0001 C CNN
F 3 "~" H 2600 5100 50  0001 C CNN
	1    2600 5100
	1    0    0    -1  
$EndComp
Text GLabel 2350 5100 2    50   Input ~ 0
IR
Wire Wire Line
	2300 5100 2350 5100
Wire Wire Line
	2600 4950 2600 4900
Wire Wire Line
	2600 4900 2300 4900
Wire Wire Line
	2300 5300 2600 5300
Wire Wire Line
	2600 5300 2600 5250
Connection ~ 2300 5300
Wire Wire Line
	2300 4900 2300 2750
Connection ~ 2300 4900
Wire Wire Line
	2300 2750 3600 2750
Wire Wire Line
	3500 2650 3600 2650
Wire Wire Line
	3600 2650 3600 2750
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 6099EC5F
P 7450 2350
F 0 "J3" H 7478 2326 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 2235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 2350 50  0001 C CNN
F 3 "~" H 7450 2350 50  0001 C CNN
	1    7450 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 6099F2BC
P 7450 2850
F 0 "J4" H 7478 2826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 2735 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 2850 50  0001 C CNN
F 3 "~" H 7450 2850 50  0001 C CNN
	1    7450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2250 7150 2250
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 609A4B7F
P 7450 3800
F 0 "J5" H 7478 3776 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 3685 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 3800 50  0001 C CNN
F 3 "~" H 7450 3800 50  0001 C CNN
	1    7450 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 609A5477
P 7450 4450
F 0 "J6" H 7478 4426 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 4335 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 4450 50  0001 C CNN
F 3 "~" H 7450 4450 50  0001 C CNN
	1    7450 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 609A58EE
P 7450 5250
F 0 "J7" H 7478 5226 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 5135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 5250 50  0001 C CNN
F 3 "~" H 7450 5250 50  0001 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J8
U 1 1 609A5F03
P 7450 5800
F 0 "J8" H 7478 5776 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7478 5685 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7450 5800 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2750 7150 2750
Wire Wire Line
	7150 2250 7150 2750
Wire Wire Line
	7150 4350 7250 4350
Wire Wire Line
	7150 4350 7150 5150
Wire Wire Line
	7150 5150 7250 5150
Wire Wire Line
	7150 5150 7150 5700
Wire Wire Line
	7150 5700 7250 5700
Connection ~ 7150 5150
Wire Wire Line
	7150 2250 7150 2150
Connection ~ 7150 2250
Wire Wire Line
	6700 2700 7050 2700
Wire Wire Line
	7050 2700 7050 2850
Wire Wire Line
	7050 2850 7250 2850
Wire Wire Line
	6700 2800 6950 2800
Wire Wire Line
	6950 2800 6950 2950
Wire Wire Line
	6950 2950 7250 2950
Wire Wire Line
	6700 2900 6850 2900
Wire Wire Line
	6850 2900 6850 3050
Wire Wire Line
	6850 3050 7250 3050
Connection ~ 7150 2750
Wire Wire Line
	6700 4200 7050 4200
Wire Wire Line
	7050 4200 7050 4450
Wire Wire Line
	7050 4450 7250 4450
Wire Wire Line
	6700 4300 6950 4300
Wire Wire Line
	6950 4300 6950 4550
Wire Wire Line
	6950 4550 7250 4550
Wire Wire Line
	6700 4400 6850 4400
Wire Wire Line
	6850 4400 6850 4650
Wire Wire Line
	6850 4650 7250 4650
Connection ~ 7150 4350
Wire Wire Line
	6700 5500 7050 5500
Wire Wire Line
	7050 5500 7050 5450
Wire Wire Line
	7050 5450 7250 5450
Wire Wire Line
	6700 5400 6950 5400
Wire Wire Line
	6950 5400 6950 5350
Wire Wire Line
	6950 5350 7250 5350
Wire Wire Line
	6700 5300 6850 5300
Wire Wire Line
	6850 5300 6850 5250
Wire Wire Line
	6850 5250 7250 5250
Wire Wire Line
	6700 5700 7050 5700
Wire Wire Line
	7050 5700 7050 5800
Wire Wire Line
	7050 5800 7250 5800
Wire Wire Line
	6700 5800 6950 5800
Wire Wire Line
	6950 5800 6950 5900
Wire Wire Line
	6950 5900 7250 5900
Wire Wire Line
	6850 5900 6850 6000
Wire Wire Line
	6850 6000 7250 6000
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 608DD435
P 3150 1350
F 0 "J2" H 3042 1062 50  0000 R CNN
F 1 "Conn_01x04_Female" V 2997 1062 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3150 1350 50  0001 C CNN
F 3 "~" H 3150 1350 50  0001 C CNN
	1    3150 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 608DE292
P 3450 1550
F 0 "#PWR08" H 3450 1300 50  0001 C CNN
F 1 "GND" H 3455 1377 50  0000 C CNN
F 2 "" H 3450 1550 50  0001 C CNN
F 3 "" H 3450 1550 50  0001 C CNN
	1    3450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1450 3450 1450
Wire Wire Line
	3450 1450 3450 1550
Wire Wire Line
	6850 5900 6700 5900
Wire Wire Line
	4800 5900 5900 5900
Wire Wire Line
	4800 5250 4800 5900
Wire Wire Line
	4200 3750 4900 3750
Wire Wire Line
	4900 3750 4900 5800
Wire Wire Line
	4900 5800 5900 5800
Wire Wire Line
	4200 3850 5000 3850
Wire Wire Line
	5000 3850 5000 5700
Wire Wire Line
	5000 5700 5900 5700
Wire Wire Line
	4200 5450 5550 5450
Wire Wire Line
	5550 5450 5550 5400
Wire Wire Line
	5550 5400 5900 5400
Wire Wire Line
	5900 5500 5650 5500
Wire Wire Line
	5650 5500 5650 5550
Wire Wire Line
	5650 5550 4400 5550
Wire Wire Line
	4400 5550 4400 5350
Wire Wire Line
	4400 5350 4200 5350
Wire Wire Line
	4200 5550 4300 5550
Wire Wire Line
	4300 5550 4300 5650
Wire Wire Line
	4300 5650 4700 5650
Wire Wire Line
	4700 5650 4700 5350
Wire Wire Line
	4700 5350 5450 5350
Wire Wire Line
	5450 5350 5450 5300
Wire Wire Line
	5450 5300 5900 5300
Wire Wire Line
	2300 1150 2300 1050
Wire Wire Line
	2300 1050 2400 1050
Connection ~ 2300 1050
Wire Wire Line
	2300 1450 2300 1550
Wire Wire Line
	2300 1550 2600 1550
Connection ~ 2300 1550
Wire Wire Line
	4200 3150 5800 3150
Wire Wire Line
	5800 3150 5800 2900
Wire Wire Line
	5800 2900 5900 2900
Wire Wire Line
	4200 3250 5700 3250
Wire Wire Line
	5700 3250 5700 2800
Wire Wire Line
	5700 2800 5900 2800
Wire Wire Line
	4200 3350 5600 3350
Wire Wire Line
	5600 3350 5600 2700
Wire Wire Line
	5600 2700 5900 2700
Wire Wire Line
	7250 2350 6900 2350
Wire Wire Line
	6900 2350 6900 2300
Wire Wire Line
	6900 2300 6700 2300
Wire Wire Line
	7250 2450 6900 2450
Wire Wire Line
	6900 2450 6900 2400
Wire Wire Line
	6900 2400 6700 2400
Wire Wire Line
	7250 2550 6900 2550
Wire Wire Line
	6900 2550 6900 2500
Wire Wire Line
	6900 2500 6700 2500
Wire Wire Line
	4200 3450 5500 3450
Wire Wire Line
	5500 3450 5500 2500
Wire Wire Line
	5500 2500 5900 2500
Wire Wire Line
	4200 3550 5400 3550
Wire Wire Line
	5400 3550 5400 2400
Wire Wire Line
	5400 2400 5900 2400
Wire Wire Line
	4200 3650 5300 3650
Wire Wire Line
	5300 3650 5300 2300
Wire Wire Line
	5300 2300 5900 2300
Wire Wire Line
	7150 2750 7150 3700
Wire Wire Line
	6700 3800 7250 3800
Wire Wire Line
	6700 3900 7250 3900
Wire Wire Line
	6700 4000 7250 4000
Wire Wire Line
	7250 3700 7150 3700
Connection ~ 7150 3700
Wire Wire Line
	7150 3700 7150 4350
Wire Wire Line
	4200 4350 5300 4350
Wire Wire Line
	5300 4350 5300 4000
Wire Wire Line
	5300 4000 5900 4000
Wire Wire Line
	4200 4450 5200 4450
Wire Wire Line
	5200 4450 5200 3900
Wire Wire Line
	5200 3900 5900 3900
Wire Wire Line
	5900 3800 5100 3800
Wire Wire Line
	5100 3800 5100 4550
Wire Wire Line
	5100 4550 4200 4550
Wire Wire Line
	4200 4050 5800 4050
Wire Wire Line
	5800 4050 5800 4400
Wire Wire Line
	5800 4400 5900 4400
Wire Wire Line
	4200 4150 5700 4150
Wire Wire Line
	5700 4150 5700 4300
Wire Wire Line
	5700 4300 5900 4300
Wire Wire Line
	4200 4250 5600 4250
Wire Wire Line
	5600 4250 5600 4200
Wire Wire Line
	5600 4200 5900 4200
$Comp
L power:+12V #PWR0101
U 1 1 60C8D1DE
P 7150 2150
F 0 "#PWR0101" H 7150 2000 50  0001 C CNN
F 1 "+12V" H 7165 2323 50  0000 C CNN
F 2 "" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1050 3700 1250
NoConn ~ 6700 2600
NoConn ~ 6700 4100
NoConn ~ 6700 5600
Connection ~ 6300 6250
NoConn ~ 6700 2100
NoConn ~ 6700 3600
NoConn ~ 6700 5100
$Comp
L Device:LED D1
U 1 1 609AB719
P 1850 900
F 0 "D1" H 1843 645 50  0000 C CNN
F 1 "LED" H 1843 736 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 1850 900 50  0001 C CNN
F 3 "~" H 1850 900 50  0001 C CNN
	1    1850 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1050 1600 1050
Wire Wire Line
	1700 900  1600 900 
Wire Wire Line
	1600 900  1600 1050
Connection ~ 1600 1050
Wire Wire Line
	1600 1050 2300 1050
Wire Wire Line
	2000 900  2100 900 
Wire Wire Line
	1950 1550 2100 1550
$Comp
L Device:R R2
U 1 1 609E605F
P 2100 1300
F 0 "R2" H 2030 1254 50  0000 R CNN
F 1 "1.8k" H 2030 1345 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2030 1300 50  0001 C CNN
F 3 "~" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1150 2100 900 
Wire Wire Line
	2100 1450 2100 1550
Connection ~ 2100 1550
Wire Wire Line
	2100 1550 2300 1550
$Comp
L Device:CP C3
U 1 1 60A448AD
P 2850 5100
F 0 "C3" H 2968 5146 50  0000 L CNN
F 1 "CP" H 2968 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2888 4950 50  0001 C CNN
F 3 "~" H 2850 5100 50  0001 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4950 2850 4900
Wire Wire Line
	2850 4900 2600 4900
Connection ~ 2600 4900
Wire Wire Line
	2850 5250 2850 5300
Wire Wire Line
	2850 5300 2600 5300
Connection ~ 2600 5300
$EndSCHEMATC