EESchema Schematic File Version 4
LIBS:Ecal-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VNA Ecal"
Date "2019-06-18"
Rev "0"
Comp "Josh Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5C2A4464
P 8725 2750
F 0 "J3" H 8675 2950 50  0000 L CNN
F 1 "SMA" H 8625 2850 50  0000 L CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 8725 2750 50  0001 C CNN
F 3 " ~" H 8725 2750 50  0001 C CNN
	1    8725 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 2950 8725 2975
$Comp
L power:GND #PWR024
U 1 1 5C2A4626
P 8725 2975
F 0 "#PWR024" H 8725 2725 50  0001 C CNN
F 1 "GND" H 8730 2802 50  0000 C CNN
F 2 "" H 8725 2975 50  0001 C CNN
F 3 "" H 8725 2975 50  0001 C CNN
	1    8725 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3450 6950 3500
Wire Wire Line
	6950 3500 6850 3500
Wire Wire Line
	6250 3450 6250 3500
Wire Wire Line
	6350 3450 6350 3500
Connection ~ 6350 3500
Wire Wire Line
	6350 3500 6250 3500
Wire Wire Line
	6450 3450 6450 3500
Connection ~ 6450 3500
Wire Wire Line
	6450 3500 6350 3500
Wire Wire Line
	6550 3450 6550 3500
Connection ~ 6550 3500
Wire Wire Line
	6550 3500 6450 3500
Wire Wire Line
	6650 3450 6650 3500
Connection ~ 6650 3500
Wire Wire Line
	6650 3500 6550 3500
Wire Wire Line
	6750 3450 6750 3500
Connection ~ 6750 3500
Wire Wire Line
	6750 3500 6650 3500
Wire Wire Line
	6850 3450 6850 3500
Connection ~ 6850 3500
Wire Wire Line
	6850 3500 6750 3500
$Comp
L power:GND #PWR019
U 1 1 5C2A4744
P 6250 3500
F 0 "#PWR019" H 6250 3250 50  0001 C CNN
F 1 "GND" H 6255 3327 50  0000 C CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	-1   0    0    -1  
$EndComp
Connection ~ 6250 3500
NoConn ~ 6150 3450
$Comp
L Device:C C3
U 1 1 5C2A474C
P 5425 2650
F 0 "C3" V 5275 2650 50  0000 C CNN
F 1 "1n" V 5575 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5463 2500 50  0001 C CNN
F 3 "~" H 5425 2650 50  0001 C CNN
	1    5425 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 2200 6800 2300
$Comp
L power:GND #PWR021
U 1 1 5C2A475D
P 6800 2300
F 0 "#PWR021" H 6800 2050 50  0001 C CNN
F 1 "GND" H 6805 2127 50  0000 C CNN
F 2 "" H 6800 2300 50  0001 C CNN
F 3 "" H 6800 2300 50  0001 C CNN
	1    6800 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5C2A4764
P 4975 2650
F 0 "J2" H 5025 2850 50  0000 L CNN
F 1 "SMA" H 4975 2750 50  0000 L CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 4975 2650 50  0001 C CNN
F 3 " ~" H 4975 2650 50  0001 C CNN
	1    4975 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4975 2850 4975 2900
$Comp
L power:GND #PWR018
U 1 1 5C2A476C
P 4975 2900
F 0 "#PWR018" H 4975 2650 50  0001 C CNN
F 1 "GND" H 4980 2727 50  0000 C CNN
F 2 "" H 4975 2900 50  0001 C CNN
F 3 "" H 4975 2900 50  0001 C CNN
	1    4975 2900
	-1   0    0    -1  
$EndComp
Text Label 7675 2650 2    50   ~ 0
OPEN
Text Label 7675 2850 2    50   ~ 0
SHORT
Text Label 7675 2950 2    50   ~ 0
LOAD
Wire Wire Line
	7300 2650 7675 2650
Wire Wire Line
	6500 2050 6500 2200
Wire Wire Line
	5175 2650 5275 2650
Wire Wire Line
	5575 2650 5850 2650
$Comp
L Device:C C4
U 1 1 5C3FF7F1
P 6650 2200
F 0 "C4" V 6500 2200 50  0000 C CNN
F 1 "10n" V 6800 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6688 2050 50  0001 C CNN
F 3 "~" H 6650 2200 50  0001 C CNN
	1    6650 2200
	0    1    1    0   
$EndComp
Connection ~ 6500 2200
Wire Wire Line
	6500 2200 6500 2350
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C2B5FA4
P 625 6950
F 0 "H1" H 725 7001 50  0000 L CNN
F 1 "M3 Via" H 725 6910 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 625 6950 50  0001 C CNN
F 3 "~" H 625 6950 50  0001 C CNN
	1    625  6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C2B61C5
P 625 7050
F 0 "#PWR01" H 625 6800 50  0001 C CNN
F 1 "GND" H 630 6877 50  0000 C CNN
F 2 "" H 625 7050 50  0001 C CNN
F 3 "" H 625 7050 50  0001 C CNN
	1    625  7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C2BA3A5
P 625 7450
F 0 "H2" H 725 7501 50  0000 L CNN
F 1 "M3 Via" H 725 7410 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 625 7450 50  0001 C CNN
F 3 "~" H 625 7450 50  0001 C CNN
	1    625  7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C2BA3AC
P 625 7550
F 0 "#PWR02" H 625 7300 50  0001 C CNN
F 1 "GND" H 630 7377 50  0000 C CNN
F 2 "" H 625 7550 50  0001 C CNN
F 3 "" H 625 7550 50  0001 C CNN
	1    625  7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C2BE533
P 1275 6950
F 0 "H3" H 1375 7001 50  0000 L CNN
F 1 "M3 Via" H 1375 6910 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1275 6950 50  0001 C CNN
F 3 "~" H 1275 6950 50  0001 C CNN
	1    1275 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C2BE53A
P 1275 7050
F 0 "#PWR06" H 1275 6800 50  0001 C CNN
F 1 "GND" H 1280 6877 50  0000 C CNN
F 2 "" H 1275 7050 50  0001 C CNN
F 3 "" H 1275 7050 50  0001 C CNN
	1    1275 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C2C26B4
P 1275 7450
F 0 "H4" H 1375 7501 50  0000 L CNN
F 1 "M3 Via" H 1375 7410 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1275 7450 50  0001 C CNN
F 3 "~" H 1275 7450 50  0001 C CNN
	1    1275 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C2C26BB
P 1275 7550
F 0 "#PWR07" H 1275 7300 50  0001 C CNN
F 1 "GND" H 1280 7377 50  0000 C CNN
F 2 "" H 1275 7550 50  0001 C CNN
F 3 "" H 1275 7550 50  0001 C CNN
	1    1275 7550
	1    0    0    -1  
$EndComp
Text Notes 4800 2400 0    50   ~ 0
PORT 1
Text Notes 8600 2500 0    50   ~ 0
PORT 2
Text Label 7675 2750 2    50   ~ 0
THRU
NoConn ~ 7675 2650
$Comp
L power:GND #PWR023
U 1 1 5D0B383F
P 8100 2875
F 0 "#PWR023" H 8100 2625 50  0001 C CNN
F 1 "GND" H 8105 2702 50  0000 C CNN
F 2 "" H 8100 2875 50  0001 C CNN
F 3 "" H 8100 2875 50  0001 C CNN
	1    8100 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2850 8100 2875
Wire Wire Line
	7300 2850 8100 2850
$Comp
L Device:R R3
U 1 1 5D0B40F1
P 7950 3325
F 0 "R3" H 8020 3371 50  0000 L CNN
F 1 "49R9" H 8020 3280 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7880 3325 50  0001 C CNN
F 3 "~" H 7950 3325 50  0001 C CNN
	1    7950 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2950 7950 3175
Wire Wire Line
	7300 2950 7950 2950
Wire Wire Line
	7950 3475 7950 3500
$Comp
L power:GND #PWR022
U 1 1 5D0B5066
P 7950 3500
F 0 "#PWR022" H 7950 3250 50  0001 C CNN
F 1 "GND" H 7955 3327 50  0000 C CNN
F 2 "" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C990C57
P 1000 1650
F 0 "J1" H 850 2100 50  0000 C CNN
F 1 "USB_B_Micro" H 1057 2026 50  0000 C CNN
F 2 "VNA_Footprints:MicroUSB_Aliexpress" H 1150 1600 50  0001 C CNN
F 3 "~" H 1150 1600 50  0001 C CNN
	1    1000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2050 900  2100
Wire Wire Line
	900  2100 950  2100
Wire Wire Line
	1000 2100 1000 2050
Wire Wire Line
	950  2100 950  2150
Connection ~ 950  2100
Wire Wire Line
	950  2100 1000 2100
NoConn ~ 1300 1850
Wire Wire Line
	1300 1650 1500 1650
Wire Wire Line
	1300 1750 1500 1750
Text Label 1500 1650 2    50   ~ 0
SDA
Text Label 1500 1750 2    50   ~ 0
SCL
Wire Wire Line
	1300 1450 1400 1450
Wire Wire Line
	1400 1450 1400 1300
$Comp
L power:VBUS #PWR010
U 1 1 5C9A9F73
P 1400 1300
F 0 "#PWR010" H 1400 1150 50  0001 C CNN
F 1 "VBUS" H 1415 1473 50  0000 C CNN
F 2 "" H 1400 1300 50  0001 C CNN
F 3 "" H 1400 1300 50  0001 C CNN
	1    1400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C9AA68E
P 950 2150
F 0 "#PWR03" H 950 1900 50  0001 C CNN
F 1 "GND" H 955 1977 50  0000 C CNN
F 2 "" H 950 2150 50  0001 C CNN
F 3 "" H 950 2150 50  0001 C CNN
	1    950  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2875 1350 2875
Wire Wire Line
	1350 2875 1350 3075
Wire Wire Line
	1350 3075 1400 3075
Connection ~ 1350 2875
$Comp
L Device:C C1
U 1 1 5CFAD891
P 1050 3075
F 0 "C1" H 1165 3121 50  0000 L CNN
F 1 "1u" H 1165 3030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 2925 50  0001 C CNN
F 3 "~" H 1050 3075 50  0001 C CNN
	1    1050 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3225 1050 3275
$Comp
L Ecal-rescue:LP5912-VNA_Symbols U1
U 1 1 5CFAAA40
P 1700 3125
F 0 "U1" H 1550 3575 49  0000 C CNN
F 1 "LP5912" H 1650 3475 49  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.65mm_EP1x1.6mm" H 1650 3475 49  0001 C CNN
F 3 "" H 1650 3475 49  0001 C CNN
	1    1700 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3175 2050 3175
Wire Wire Line
	2050 3175 2050 3275
Wire Wire Line
	2000 3375 2050 3375
Connection ~ 2050 3375
Wire Wire Line
	2050 3375 2050 3475
Wire Wire Line
	2000 3275 2050 3275
Connection ~ 2050 3275
Wire Wire Line
	2050 3275 2050 3375
$Comp
L power:GND #PWR014
U 1 1 5CFB000E
P 2050 3475
F 0 "#PWR014" H 2050 3225 50  0001 C CNN
F 1 "GND" H 2055 3302 50  0000 C CNN
F 2 "" H 2050 3475 50  0001 C CNN
F 3 "" H 2050 3475 50  0001 C CNN
	1    2050 3475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CFB05E8
P 1050 3275
F 0 "#PWR05" H 1050 3025 50  0001 C CNN
F 1 "GND" H 1055 3102 50  0000 C CNN
F 2 "" H 1050 3275 50  0001 C CNN
F 3 "" H 1050 3275 50  0001 C CNN
	1    1050 3275
	1    0    0    -1  
$EndComp
Text Notes 2100 2525 2    100  ~ 0
3V3A LDO
Wire Wire Line
	950  2775 950  2875
Wire Wire Line
	2700 2875 2700 2775
Wire Wire Line
	2400 2875 2700 2875
Connection ~ 2400 2875
Wire Wire Line
	2400 2875 2400 2925
Wire Wire Line
	2000 2875 2400 2875
$Comp
L power:GND #PWR015
U 1 1 5CFB1601
P 2400 3275
F 0 "#PWR015" H 2400 3025 50  0001 C CNN
F 1 "GND" H 2405 3102 50  0000 C CNN
F 2 "" H 2400 3275 50  0001 C CNN
F 3 "" H 2400 3275 50  0001 C CNN
	1    2400 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3225 2400 3275
$Comp
L Device:C C2
U 1 1 5CFB15FA
P 2400 3075
F 0 "C2" H 2515 3121 50  0000 L CNN
F 1 "1u" H 2515 3030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 2925 50  0001 C CNN
F 3 "~" H 2400 3075 50  0001 C CNN
	1    2400 3075
	1    0    0    -1  
$EndComp
NoConn ~ 2000 3075
$Comp
L Device:Polyfuse_Small F1
U 1 1 5CFF4CE3
P 2225 1325
AR Path="/5CFF4CE3" Ref="F1"  Part="1" 
AR Path="/5CA96610/5CFF4CE3" Ref="F?"  Part="1" 
F 0 "F1" V 2125 1325 50  0000 C CNN
F 1 "100mA Polyfuse" V 2325 1325 50  0000 C CNN
F 2 "VNA_Footprints:Fuse_0805_2012Metric" H 2275 1125 50  0001 L CNN
F 3 "~" H 2225 1325 50  0001 C CNN
	1    2225 1325
	0    1    1    0   
$EndComp
Wire Wire Line
	2325 1325 2625 1325
Text Notes 1025 950  0    100  ~ 0
Power Input
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CAD0E34
P 2725 1425
F 0 "#FLG01" H 2725 1500 50  0001 C CNN
F 1 "PWR_FLAG" V 2725 1553 50  0000 L CNN
F 2 "" H 2725 1425 50  0001 C CNN
F 3 "~" H 2725 1425 50  0001 C CNN
	1    2725 1425
	0    1    1    0   
$EndComp
Wire Wire Line
	2625 1425 2625 1325
Connection ~ 2625 1325
Wire Wire Line
	2625 1325 2725 1325
Wire Wire Line
	2625 1425 2725 1425
Wire Wire Line
	950  2875 1050 2875
Wire Wire Line
	1050 2925 1050 2875
Connection ~ 1050 2875
Wire Wire Line
	1050 2875 1350 2875
Text Notes 900  3900 0    100  ~ 0
Voltage Rail LEDs
Wire Wire Line
	1700 4300 1700 4250
Wire Wire Line
	1700 4650 1700 4600
Wire Wire Line
	1700 4950 1700 5000
$Comp
L Device:LED D2
U 1 1 5D0BC4C9
P 1700 4800
F 0 "D2" V 1739 4683 50  0000 R CNN
F 1 "LED" V 1648 4683 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1700 4800 50  0001 C CNN
F 3 "~" H 1700 4800 50  0001 C CNN
	1    1700 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D0BC4CF
P 1700 4450
F 0 "R2" H 1770 4496 50  0000 L CNN
F 1 "1K" H 1770 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 4450 50  0001 C CNN
F 3 "~" H 1700 4450 50  0001 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D0BC4D5
P 1700 5000
F 0 "#PWR012" H 1700 4750 50  0001 C CNN
F 1 "GND" H 1705 4827 50  0000 C CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR013
U 1 1 5D0E30D9
P 1775 1300
F 0 "#PWR013" H 1775 1150 50  0001 C CNN
F 1 "VBUS" H 1790 1473 50  0000 C CNN
F 2 "" H 1775 1300 50  0001 C CNN
F 3 "" H 1775 1300 50  0001 C CNN
	1    1775 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 1300 1775 1325
Wire Wire Line
	1775 1325 2125 1325
$Comp
L power:+3.3VA #PWR016
U 1 1 5D0E7613
P 2700 2775
F 0 "#PWR016" H 2700 2625 50  0001 C CNN
F 1 "+3.3VA" H 2715 2948 50  0000 C CNN
F 2 "" H 2700 2775 50  0001 C CNN
F 3 "" H 2700 2775 50  0001 C CNN
	1    2700 2775
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR020
U 1 1 5D0EE161
P 6500 2050
F 0 "#PWR020" H 6500 1900 50  0001 C CNN
F 1 "+3.3VA" H 6515 2223 50  0000 C CNN
F 2 "" H 6500 2050 50  0001 C CNN
F 3 "" H 6500 2050 50  0001 C CNN
	1    6500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5D0F164A
P 950 2775
F 0 "#PWR04" H 950 2625 50  0001 C CNN
F 1 "+5V" H 965 2948 50  0000 C CNN
F 2 "" H 950 2775 50  0001 C CNN
F 3 "" H 950 2775 50  0001 C CNN
	1    950  2775
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5D0F1BBE
P 2725 1300
F 0 "#PWR017" H 2725 1150 50  0001 C CNN
F 1 "+5V" H 2740 1473 50  0000 C CNN
F 2 "" H 2725 1300 50  0001 C CNN
F 3 "" H 2725 1300 50  0001 C CNN
	1    2725 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 1300 2725 1325
$Comp
L power:+3.3VA #PWR011
U 1 1 5D0F3C60
P 1700 4250
F 0 "#PWR011" H 1700 4100 50  0001 C CNN
F 1 "+3.3VA" H 1715 4423 50  0000 C CNN
F 2 "" H 1700 4250 50  0001 C CNN
F 3 "" H 1700 4250 50  0001 C CNN
	1    1700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2950 5600 2950
Wire Wire Line
	5850 2850 5600 2850
Text Label 5600 2950 0    50   ~ 0
SDA
Text Label 5600 2850 0    50   ~ 0
SCL
$Comp
L Device:C C5
U 1 1 5D1271E4
P 8300 2750
F 0 "C5" V 8150 2750 50  0000 C CNN
F 1 "1n" V 8450 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8338 2600 50  0001 C CNN
F 3 "~" H 8300 2750 50  0001 C CNN
	1    8300 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 2750 8150 2750
Wire Wire Line
	8450 2750 8525 2750
Text Notes 7025 4775 0    50   ~ 0
NOTE: SDA and SCL are named as\nmicrocontroller can be configured\nto talk over I2C on these pins, will \nhowever be configured as GPIO as \nonly two pins required.
Text Notes 6200 1400 0    100  ~ 0
RF Switch
Text Label 5600 2650 0    50   ~ 0
IN
$Comp
L VNA_Symbols:PE42440 U?
U 1 1 5DA1D073
P 6600 3000
F 0 "U?" H 7100 3575 50  0000 C CNN
F 1 "PE42440" H 6975 3500 50  0000 C CNN
F 2 "" H 6300 3500 50  0001 C CNN
F 3 "" H 6300 3500 50  0001 C CNN
	1    6600 3000
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
