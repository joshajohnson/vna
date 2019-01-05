EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Gain Block Dev Board"
Date "2019-01-05"
Rev "0"
Comp "Josh Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VNA_Symbols:PE43711 U1
U 1 1 5C301E7A
P 3700 2750
F 0 "U1" H 3150 3500 50  0000 C CNN
F 1 "PE43711" H 3250 3400 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.7x2.6mm_ThermalVias" H 3750 3400 50  0001 C CNN
F 3 "" H 3750 3400 50  0001 C CNN
	1    3700 2750
	1    0    0    -1  
$EndComp
$Comp
L VNA_Symbols:HMC313 U5
U 1 1 5C301EF1
P 5700 2450
F 0 "U5" H 5700 2825 50  0000 C CNN
F 1 "HMC313" H 5700 2734 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6150 2650 50  0001 L CNN
F 3 "" H 6150 2550 50  0001 L CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5C30265B
P 1550 2300
F 0 "J2" H 1550 2550 50  0000 C CNN
F 1 "RF_IN" H 1480 2447 50  0000 C CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 1550 2300 50  0001 C CNN
F 3 " ~" H 1550 2300 50  0001 C CNN
	1    1550 2300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5C3026E8
P 10550 2300
F 0 "J4" H 10450 2550 50  0000 L CNN
F 1 "RF_OUT" H 10450 2450 50  0000 L CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 10550 2300 50  0001 C CNN
F 3 " ~" H 10550 2300 50  0001 C CNN
	1    10550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C3028C7
P 1550 2500
F 0 "#PWR0101" H 1550 2250 50  0001 C CNN
F 1 "GND" H 1555 2327 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C302970
P 10550 2500
F 0 "#PWR0102" H 10550 2250 50  0001 C CNN
F 1 "GND" H 10555 2327 50  0000 C CNN
F 2 "" H 10550 2500 50  0001 C CNN
F 3 "" H 10550 2500 50  0001 C CNN
	1    10550 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x08 SW1
U 1 1 5C302CAE
P 1150 3500
F 0 "SW1" H 1150 4167 50  0000 C CNN
F 1 "SW_DIP_x08" H 1150 4076 50  0000 C CNN
F 2 "VNA_Footprints:SW_DIP_SPSTx08_Slide_9.9x21.7mm_W7.8mm_P2.54mm" H 1150 3500 50  0001 C CNN
F 3 "" H 1150 3500 50  0001 C CNN
	1    1150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3100 1500 3100
Wire Wire Line
	850  3700 750  3700
Wire Wire Line
	750  3700 750  3600
Wire Wire Line
	850  3100 750  3100
Connection ~ 750  3100
Wire Wire Line
	750  3100 750  2900
Wire Wire Line
	850  3200 750  3200
Connection ~ 750  3200
Wire Wire Line
	750  3200 750  3100
Wire Wire Line
	850  3300 750  3300
Connection ~ 750  3300
Wire Wire Line
	750  3300 750  3200
Wire Wire Line
	850  3400 750  3400
Connection ~ 750  3400
Wire Wire Line
	750  3400 750  3300
Wire Wire Line
	850  3500 750  3500
Connection ~ 750  3500
Wire Wire Line
	750  3500 750  3400
Wire Wire Line
	850  3600 750  3600
Connection ~ 750  3600
Wire Wire Line
	750  3600 750  3500
$Comp
L power:+3.3V #PWR0103
U 1 1 5C303A08
P 750 2900
F 0 "#PWR0103" H 750 2750 50  0001 C CNN
F 1 "+3.3V" H 765 3073 50  0000 C CNN
F 2 "" H 750 2900 50  0001 C CNN
F 3 "" H 750 2900 50  0001 C CNN
	1    750  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2750 4800 2750
Text Label 4800 2750 2    50   ~ 0
nP_S
Text Label 2900 3800 2    50   ~ 0
nP_S
Wire Wire Line
	850  3800 750  3800
Wire Wire Line
	750  3800 750  3700
Connection ~ 750  3700
$Comp
L Device:R R1
U 1 1 5C304AE4
P 1500 4100
F 0 "R1" H 1500 4250 50  0000 L CNN
F 1 "10k" V 1500 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1430 4100 50  0001 C CNN
F 3 "~" H 1500 4100 50  0001 C CNN
	1    1500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3950 1500 3100
Connection ~ 1500 3100
Wire Wire Line
	1500 3100 2100 3100
Wire Wire Line
	1650 3950 1650 3200
Wire Wire Line
	1800 3300 1800 3950
Wire Wire Line
	1950 3400 1950 3950
Wire Wire Line
	2100 3500 2100 3950
Wire Wire Line
	2250 3600 2250 3950
Wire Wire Line
	2400 3700 2400 3950
Wire Wire Line
	2550 3800 2550 3950
Wire Wire Line
	2550 4250 2550 4350
Wire Wire Line
	1500 4350 1500 4250
Wire Wire Line
	1650 4250 1650 4350
Wire Wire Line
	1800 4250 1800 4350
Wire Wire Line
	1950 4250 1950 4350
Wire Wire Line
	2100 4250 2100 4350
Wire Wire Line
	2250 4250 2250 4350
Wire Wire Line
	2400 4250 2400 4350
$Comp
L power:GND #PWR0104
U 1 1 5C30BEA9
P 2550 4350
F 0 "#PWR0104" H 2550 4100 50  0001 C CNN
F 1 "GND" H 2555 4177 50  0000 C CNN
F 2 "" H 2550 4350 50  0001 C CNN
F 3 "" H 2550 4350 50  0001 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
Connection ~ 2550 4350
$Comp
L Device:R R2
U 1 1 5C30BF5D
P 1650 4100
F 0 "R2" H 1650 4250 50  0000 L CNN
F 1 "10k" V 1650 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1580 4100 50  0001 C CNN
F 3 "~" H 1650 4100 50  0001 C CNN
	1    1650 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C30BF7D
P 1800 4100
F 0 "R3" H 1800 4250 50  0000 L CNN
F 1 "10k" V 1800 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 4100 50  0001 C CNN
F 3 "~" H 1800 4100 50  0001 C CNN
	1    1800 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C30BF9F
P 1950 4100
F 0 "R4" H 1950 4250 50  0000 L CNN
F 1 "10k" V 1950 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 4100 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C30BFC3
P 2100 4100
F 0 "R5" H 2100 4250 50  0000 L CNN
F 1 "10k" V 2100 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 4100 50  0001 C CNN
F 3 "~" H 2100 4100 50  0001 C CNN
	1    2100 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C30BFE9
P 2250 4100
F 0 "R6" H 2250 4250 50  0000 L CNN
F 1 "10k" V 2250 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 4100 50  0001 C CNN
F 3 "~" H 2250 4100 50  0001 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C30C011
P 2400 4100
F 0 "R7" H 2400 4250 50  0000 L CNN
F 1 "10k" V 2400 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 4100 50  0001 C CNN
F 3 "~" H 2400 4100 50  0001 C CNN
	1    2400 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C30C03B
P 2550 4100
F 0 "R8" H 2550 4250 50  0000 L CNN
F 1 "10k" V 2550 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2480 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7000 2650 6950
Text Label 1600 7000 0    50   ~ 0
SI
Text Label 1600 7100 0    50   ~ 0
LE
Text Label 1600 7200 0    50   ~ 0
CLK
Text Label 4800 2900 2    50   ~ 0
SI
Text Label 4800 3000 2    50   ~ 0
LE
Text Label 4800 3100 2    50   ~ 0
CLK
Wire Wire Line
	4500 2900 4800 2900
Wire Wire Line
	4500 3000 4800 3000
Wire Wire Line
	4500 3100 4800 3100
$Comp
L power:+5V #PWR0105
U 1 1 5C31F078
P 2650 6950
F 0 "#PWR0105" H 2650 6800 50  0001 C CNN
F 1 "+5V" H 2665 7123 50  0000 C CNN
F 2 "" H 2650 6950 50  0001 C CNN
F 3 "" H 2650 6950 50  0001 C CNN
	1    2650 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C3207F6
P 2650 7250
F 0 "#PWR0106" H 2650 7000 50  0001 C CNN
F 1 "GND" H 2655 7077 50  0000 C CNN
F 2 "" H 2650 7250 50  0001 C CNN
F 3 "" H 2650 7250 50  0001 C CNN
	1    2650 7250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5C32095C
P 3950 6950
F 0 "U2" H 3950 7192 50  0000 C CNN
F 1 "AMS1117-3.3" H 3950 7101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3950 7150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4050 6700 50  0001 C CNN
	1    3950 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C3209C5
P 3300 7100
F 0 "C1" H 3415 7146 50  0000 L CNN
F 1 "10u" H 3415 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 6950 50  0001 C CNN
F 3 "~" H 3300 7100 50  0001 C CNN
	1    3300 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5C320B00
P 4500 7100
F 0 "C4" H 4615 7146 50  0000 L CNN
F 1 "22u" H 4615 7055 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4500 7100 50  0001 C CNN
F 3 "~" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6950 4500 6950
Wire Wire Line
	4500 7250 4500 7350
Wire Wire Line
	4500 7350 3950 7350
Wire Wire Line
	3300 7350 3300 7250
$Comp
L power:GND #PWR0107
U 1 1 5C32567F
P 3950 7350
F 0 "#PWR0107" H 3950 7100 50  0001 C CNN
F 1 "GND" H 3955 7177 50  0000 C CNN
F 2 "" H 3950 7350 50  0001 C CNN
F 3 "" H 3950 7350 50  0001 C CNN
	1    3950 7350
	1    0    0    -1  
$EndComp
Connection ~ 3950 7350
Wire Wire Line
	3950 7350 3300 7350
Wire Wire Line
	3950 7250 3950 7350
Wire Wire Line
	3300 6950 3100 6950
Wire Wire Line
	3100 6950 3100 6850
Connection ~ 3300 6950
$Comp
L power:+5V #PWR0108
U 1 1 5C3291C5
P 3100 6850
F 0 "#PWR0108" H 3100 6700 50  0001 C CNN
F 1 "+5V" H 3115 7023 50  0000 C CNN
F 2 "" H 3100 6850 50  0001 C CNN
F 3 "" H 3100 6850 50  0001 C CNN
	1    3100 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6950 4700 6950
Wire Wire Line
	4700 6950 4700 6850
Connection ~ 4500 6950
$Comp
L power:+3.3V #PWR0109
U 1 1 5C32D2D1
P 4700 6850
F 0 "#PWR0109" H 4700 6700 50  0001 C CNN
F 1 "+3.3V" H 4715 7023 50  0000 C CNN
F 2 "" H 4700 6850 50  0001 C CNN
F 3 "" H 4700 6850 50  0001 C CNN
	1    4700 6850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP5907MFX-1.8 U3
U 1 1 5C32D405
P 6000 7100
F 0 "U3" H 6000 7467 50  0000 C CNN
F 1 "LP5907MFX-3.3" H 6000 7376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6000 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5907.pdf" H 6000 7600 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7100 5600 7100
Wire Wire Line
	5600 7100 5600 7000
Wire Wire Line
	5600 7000 5700 7000
$Comp
L Device:C C6
U 1 1 5C333F51
P 5350 7150
F 0 "C6" H 5465 7196 50  0000 L CNN
F 1 "1u" H 5465 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5388 7000 50  0001 C CNN
F 3 "~" H 5350 7150 50  0001 C CNN
	1    5350 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C333F91
P 6500 7150
F 0 "C7" H 6615 7196 50  0000 L CNN
F 1 "1u" H 6615 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 7000 50  0001 C CNN
F 3 "~" H 6500 7150 50  0001 C CNN
	1    6500 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7000 5350 7000
Wire Wire Line
	5200 7000 5200 6850
Connection ~ 5600 7000
Connection ~ 5350 7000
Wire Wire Line
	5350 7000 5200 7000
Wire Wire Line
	6300 7000 6500 7000
Wire Wire Line
	6750 7000 6750 6850
Connection ~ 6500 7000
Wire Wire Line
	6500 7000 6750 7000
Wire Wire Line
	6500 7300 6500 7500
Wire Wire Line
	6000 7400 6000 7500
Connection ~ 6000 7500
Wire Wire Line
	6000 7500 6500 7500
Wire Wire Line
	5350 7300 5350 7500
Wire Wire Line
	5350 7500 6000 7500
$Comp
L power:GND #PWR0110
U 1 1 5C340756
P 6000 7500
F 0 "#PWR0110" H 6000 7250 50  0001 C CNN
F 1 "GND" H 6005 7327 50  0000 C CNN
F 2 "" H 6000 7500 50  0001 C CNN
F 3 "" H 6000 7500 50  0001 C CNN
	1    6000 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5C3407BC
P 5200 6850
F 0 "#PWR0111" H 5200 6700 50  0001 C CNN
F 1 "+5V" H 5215 7023 50  0000 C CNN
F 2 "" H 5200 6850 50  0001 C CNN
F 3 "" H 5200 6850 50  0001 C CNN
	1    5200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0112
U 1 1 5C340824
P 6750 6850
F 0 "#PWR0112" H 6750 6700 50  0001 C CNN
F 1 "+3.3VA" H 6765 7023 50  0000 C CNN
F 2 "" H 6750 6850 50  0001 C CNN
F 3 "" H 6750 6850 50  0001 C CNN
	1    6750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 3200 3700
Wire Wire Line
	3200 3700 3300 3700
Wire Wire Line
	4200 3700 4200 3650
Wire Wire Line
	4100 3650 4100 3700
Connection ~ 4100 3700
Wire Wire Line
	4100 3700 4200 3700
Wire Wire Line
	4000 3650 4000 3700
Connection ~ 4000 3700
Wire Wire Line
	4000 3700 4100 3700
Wire Wire Line
	3900 3650 3900 3700
Connection ~ 3900 3700
Wire Wire Line
	3900 3700 4000 3700
Wire Wire Line
	3800 3650 3800 3700
Connection ~ 3800 3700
Wire Wire Line
	3800 3700 3900 3700
Wire Wire Line
	3700 3650 3700 3700
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 3800 3700
Wire Wire Line
	3600 3650 3600 3700
Connection ~ 3600 3700
Wire Wire Line
	3600 3700 3700 3700
Wire Wire Line
	3500 3650 3500 3700
Connection ~ 3500 3700
Wire Wire Line
	3500 3700 3600 3700
Wire Wire Line
	3400 3650 3400 3700
Connection ~ 3400 3700
Wire Wire Line
	3400 3700 3500 3700
Wire Wire Line
	3300 3650 3300 3700
Connection ~ 3300 3700
Wire Wire Line
	3300 3700 3400 3700
$Comp
L power:GND #PWR0113
U 1 1 5C364909
P 4200 3700
F 0 "#PWR0113" H 4200 3450 50  0001 C CNN
F 1 "GND" H 4205 3527 50  0000 C CNN
F 2 "" H 4200 3700 50  0001 C CNN
F 3 "" H 4200 3700 50  0001 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
Connection ~ 4200 3700
$Comp
L Device:C C3
U 1 1 5C364A45
P 3850 1700
F 0 "C3" V 3800 1600 50  0000 C CNN
F 1 "100p" V 4000 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3888 1550 50  0001 C CNN
F 3 "~" H 3850 1700 50  0001 C CNN
	1    3850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5C364B92
P 3850 1350
F 0 "C2" V 3800 1250 50  0000 C CNN
F 1 "100n" V 4000 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3888 1200 50  0001 C CNN
F 3 "~" H 3850 1350 50  0001 C CNN
	1    3850 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1250 3700 1350
$Comp
L power:GND #PWR0114
U 1 1 5C36FE30
P 4000 1800
F 0 "#PWR0114" H 4000 1550 50  0001 C CNN
F 1 "GND" H 4005 1627 50  0000 C CNN
F 2 "" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0115
U 1 1 5C36FEA3
P 3700 1250
F 0 "#PWR0115" H 3700 1100 50  0001 C CNN
F 1 "+3.3VA" H 3715 1423 50  0000 C CNN
F 2 "" H 3700 1250 50  0001 C CNN
F 3 "" H 3700 1250 50  0001 C CNN
	1    3700 1250
	1    0    0    -1  
$EndComp
Connection ~ 3700 1350
Wire Wire Line
	4000 1700 4000 1800
Connection ~ 3700 1700
Wire Wire Line
	3700 1350 3700 1700
Wire Wire Line
	4000 1350 4000 1700
Connection ~ 4000 1700
Wire Wire Line
	3700 1700 3700 1950
$Comp
L Device:L L1
U 1 1 5C38F660
P 6450 2000
F 0 "L1" H 6503 2046 50  0000 L CNN
F 1 "22n" H 6503 1955 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6450 2000 50  0001 C CNN
F 3 "~" H 6450 2000 50  0001 C CNN
	1    6450 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C38F9A7
P 6600 1550
F 0 "C8" V 6450 1550 50  0000 C CNN
F 1 "100p" V 6750 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6638 1400 50  0001 C CNN
F 3 "~" H 6600 1550 50  0001 C CNN
	1    6600 1550
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5C393C74
P 6450 1400
F 0 "#PWR0116" H 6450 1250 50  0001 C CNN
F 1 "+5V" H 6465 1573 50  0000 C CNN
F 2 "" H 6450 1400 50  0001 C CNN
F 3 "" H 6450 1400 50  0001 C CNN
	1    6450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6450 2300
$Comp
L power:GND #PWR0117
U 1 1 5C3A065B
P 6800 1650
F 0 "#PWR0117" H 6800 1400 50  0001 C CNN
F 1 "GND" H 6805 1477 50  0000 C CNN
F 2 "" H 6800 1650 50  0001 C CNN
F 3 "" H 6800 1650 50  0001 C CNN
	1    6800 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C3A9467
P 6800 2300
F 0 "C9" V 6650 2300 50  0000 C CNN
F 1 "100p" V 6950 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6838 2150 50  0001 C CNN
F 3 "~" H 6800 2300 50  0001 C CNN
	1    6800 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 1400 6450 1550
Connection ~ 6450 1550
Wire Wire Line
	6450 1550 6450 1850
Wire Wire Line
	6800 1550 6800 1650
Wire Wire Line
	6750 1550 6800 1550
Wire Wire Line
	6300 2300 6450 2300
$Comp
L Device:C C5
U 1 1 5C3D52B3
P 4800 2300
F 0 "C5" V 4650 2300 50  0000 C CNN
F 1 "100p" V 4950 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4838 2150 50  0001 C CNN
F 3 "~" H 4800 2300 50  0001 C CNN
	1    4800 2300
	0    1    1    0   
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C3EBA9A
P 900 7050
F 0 "J1" H 955 7517 50  0000 C CNN
F 1 "USB_B_Micro" H 955 7426 50  0000 C CNN
F 2 "VNA_Footprints:MicroUSB_Aliexpress" H 1050 7000 50  0001 C CNN
F 3 "~" H 1050 7000 50  0001 C CNN
	1    900  7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 5C3F0439
P 1300 6750
F 0 "#PWR0118" H 1300 6600 50  0001 C CNN
F 1 "+5V" H 1315 6923 50  0000 C CNN
F 2 "" H 1300 6750 50  0001 C CNN
F 3 "" H 1300 6750 50  0001 C CNN
	1    1300 6750
	1    0    0    -1  
$EndComp
NoConn ~ 1200 7050
NoConn ~ 1200 7150
NoConn ~ 1200 7250
Wire Wire Line
	900  7450 900  7500
Wire Wire Line
	900  7500 850  7500
Wire Wire Line
	800  7500 800  7450
$Comp
L power:GND #PWR0119
U 1 1 5C407405
P 850 7500
F 0 "#PWR0119" H 850 7250 50  0001 C CNN
F 1 "GND" H 855 7327 50  0000 C CNN
F 2 "" H 850 7500 50  0001 C CNN
F 3 "" H 850 7500 50  0001 C CNN
	1    850  7500
	1    0    0    -1  
$EndComp
Connection ~ 850  7500
Wire Wire Line
	850  7500 800  7500
Wire Wire Line
	1300 6750 1300 6850
Wire Wire Line
	1300 6850 1200 6850
Text Notes 2800 900  0    100  ~ 0
Programmable Attenuator
Text Notes 5150 900  0    100  ~ 0
Amplifier (+17dB, P1dB = +14dBm)
Wire Wire Line
	5850 2800 5850 2850
Wire Wire Line
	5850 2850 5750 2850
Wire Wire Line
	5550 2850 5550 2800
Wire Wire Line
	5650 2800 5650 2850
Connection ~ 5650 2850
Wire Wire Line
	5650 2850 5550 2850
Wire Wire Line
	5750 2800 5750 2850
Connection ~ 5750 2850
Wire Wire Line
	5750 2850 5650 2850
$Comp
L power:GND #PWR0120
U 1 1 5C43E190
P 5850 2850
F 0 "#PWR0120" H 5850 2600 50  0001 C CNN
F 1 "GND" H 5855 2677 50  0000 C CNN
F 2 "" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
Connection ~ 5850 2850
Wire Wire Line
	1750 2300 2900 2300
Wire Wire Line
	2100 3100 2100 2500
Wire Wire Line
	2100 2500 2900 2500
Wire Wire Line
	2200 3200 2200 2600
Wire Wire Line
	2200 2600 2900 2600
Wire Wire Line
	2900 2700 2300 2700
Wire Wire Line
	2300 2700 2300 3300
Wire Wire Line
	2400 3400 2400 2800
Wire Wire Line
	2400 2800 2900 2800
Wire Wire Line
	2900 2900 2500 2900
Wire Wire Line
	2500 2900 2500 3500
Wire Wire Line
	2600 3600 2600 3000
Wire Wire Line
	2600 3000 2900 3000
Wire Wire Line
	2900 3100 2700 3100
Wire Wire Line
	2700 3100 2700 3700
$Comp
L Device:R R9
U 1 1 5C4A808E
P 7300 2300
F 0 "R9" V 7200 2300 50  0000 C CNN
F 1 "16" V 7400 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7230 2300 50  0001 C CNN
F 3 "~" H 7300 2300 50  0001 C CNN
	1    7300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5C4A8200
P 7800 2300
F 0 "R11" V 7700 2300 50  0000 C CNN
F 1 "16" V 7900 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7730 2300 50  0001 C CNN
F 3 "~" H 7800 2300 50  0001 C CNN
	1    7800 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5C4A825C
P 7550 2550
F 0 "R10" H 7480 2504 50  0000 R CNN
F 1 "16" H 7480 2595 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7480 2550 50  0001 C CNN
F 3 "~" H 7550 2550 50  0001 C CNN
	1    7550 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2300 7550 2300
Wire Wire Line
	7550 2400 7550 2300
Connection ~ 7550 2300
Wire Wire Line
	7550 2300 7650 2300
Wire Wire Line
	6650 2300 6450 2300
Connection ~ 6450 2300
Wire Wire Line
	6950 2300 7150 2300
Connection ~ 2550 3800
Wire Wire Line
	2550 3800 2900 3800
Wire Wire Line
	1450 3800 2550 3800
Connection ~ 2400 3700
Wire Wire Line
	2400 3700 2700 3700
Wire Wire Line
	1450 3700 2400 3700
Connection ~ 2250 3600
Wire Wire Line
	2250 3600 2600 3600
Wire Wire Line
	1450 3600 2250 3600
Connection ~ 2100 3500
Wire Wire Line
	2100 3500 2500 3500
Wire Wire Line
	1450 3500 2100 3500
Connection ~ 1950 3400
Wire Wire Line
	1950 3400 2400 3400
Wire Wire Line
	1450 3400 1950 3400
Connection ~ 1800 3300
Wire Wire Line
	1800 3300 2300 3300
Wire Wire Line
	1450 3300 1800 3300
Connection ~ 1650 3200
Wire Wire Line
	1650 3200 2200 3200
Wire Wire Line
	1450 3200 1650 3200
Wire Wire Line
	1500 4350 1650 4350
Connection ~ 1650 4350
Wire Wire Line
	1650 4350 1800 4350
Connection ~ 1800 4350
Wire Wire Line
	1800 4350 1950 4350
Connection ~ 1950 4350
Wire Wire Line
	1950 4350 2100 4350
Connection ~ 2100 4350
Wire Wire Line
	2100 4350 2250 4350
Connection ~ 2250 4350
Wire Wire Line
	2250 4350 2400 4350
Connection ~ 2400 4350
$Comp
L Device:R R13
U 1 1 5C524F09
P 8100 3250
F 0 "R13" V 8000 3250 50  0000 C CNN
F 1 "0" V 8200 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8030 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C52527E
P 7800 3400
F 0 "R12" H 7870 3446 50  0000 L CNN
F 1 "OPT" H 7870 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7730 3400 50  0001 C CNN
F 3 "~" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5C5252F2
P 8400 3400
F 0 "R14" H 8470 3446 50  0000 L CNN
F 1 "OPT" H 8470 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8330 3400 50  0001 C CNN
F 3 "~" H 8400 3400 50  0001 C CNN
	1    8400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3250 7950 3250
Wire Wire Line
	8250 3250 8400 3250
Wire Wire Line
	7800 3550 7800 3600
Wire Wire Line
	8400 3550 8400 3600
$Comp
L power:GND #PWR0121
U 1 1 5C55131F
P 8400 3600
F 0 "#PWR0121" H 8400 3350 50  0001 C CNN
F 1 "GND" H 8405 3427 50  0000 C CNN
F 2 "" H 8400 3600 50  0001 C CNN
F 3 "" H 8400 3600 50  0001 C CNN
	1    8400 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C551375
P 7800 3600
F 0 "#PWR0122" H 7800 3350 50  0001 C CNN
F 1 "GND" H 7805 3427 50  0000 C CNN
F 2 "" H 7800 3600 50  0001 C CNN
F 3 "" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3250 10250 3350
$Comp
L power:GND #PWR0123
U 1 1 5C599A0C
P 10250 3350
F 0 "#PWR0123" H 10250 3100 50  0001 C CNN
F 1 "GND" H 10255 3177 50  0000 C CNN
F 2 "" H 10250 3350 50  0001 C CNN
F 3 "" H 10250 3350 50  0001 C CNN
	1    10250 3350
	1    0    0    -1  
$EndComp
$Comp
L VNA_Symbols:AD8319 U4
U 1 1 5C620E03
P 9350 4150
F 0 "U4" H 9150 4550 50  0000 C CNN
F 1 "AD8319" H 9250 4450 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_2x3mm_P0.5mm_EP0.61x2.2mm" H 9350 4300 50  0001 C CNN
F 3 "" H 9350 4300 50  0001 C CNN
	1    9350 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5C6210F2
P 9350 3250
F 0 "R16" V 9250 3250 50  0000 C CNN
F 1 "52.3" V 9450 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9280 3250 50  0001 C CNN
F 3 "~" H 9350 3250 50  0001 C CNN
	1    9350 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5C6211A5
P 8850 3450
F 0 "C11" H 8965 3496 50  0000 L CNN
F 1 "47n" H 8965 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8888 3300 50  0001 C CNN
F 3 "~" H 8850 3450 50  0001 C CNN
	1    8850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5C62124D
P 9850 3450
F 0 "C12" H 9965 3496 50  0000 L CNN
F 1 "47n" H 9965 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9888 3300 50  0001 C CNN
F 3 "~" H 9850 3450 50  0001 C CNN
	1    9850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3950 8850 3950
Wire Wire Line
	9200 3250 8850 3250
Wire Wire Line
	8850 3250 8850 3300
Wire Wire Line
	9500 3250 9850 3250
Wire Wire Line
	9850 3250 9850 3300
Wire Wire Line
	9850 3950 9800 3950
Wire Wire Line
	9850 3250 10250 3250
Connection ~ 9850 3250
Wire Wire Line
	9400 4700 9400 4750
Wire Wire Line
	9400 4750 9350 4750
Wire Wire Line
	9300 4750 9300 4700
$Comp
L power:GND #PWR0124
U 1 1 5C662411
P 9350 4750
F 0 "#PWR0124" H 9350 4500 50  0001 C CNN
F 1 "GND" H 9355 4577 50  0000 C CNN
F 2 "" H 9350 4750 50  0001 C CNN
F 3 "" H 9350 4750 50  0001 C CNN
	1    9350 4750
	1    0    0    -1  
$EndComp
Connection ~ 9350 4750
Wire Wire Line
	9350 4750 9300 4750
Wire Wire Line
	9800 4050 10050 4050
$Comp
L power:+3.3VA #PWR0125
U 1 1 5C66B084
P 10450 3400
F 0 "#PWR0125" H 10450 3250 50  0001 C CNN
F 1 "+3.3VA" H 10465 3573 50  0000 C CNN
F 2 "" H 10450 3400 50  0001 C CNN
F 3 "" H 10450 3400 50  0001 C CNN
	1    10450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3600 9850 3950
Wire Wire Line
	8850 3600 8850 3950
Wire Wire Line
	9800 4150 10150 4150
Text Label 11050 4150 2    50   ~ 0
RF_PWR
$Comp
L Device:R R17
U 1 1 5C69F385
P 10150 4300
F 0 "R17" H 10220 4346 50  0000 L CNN
F 1 "OPT" H 10220 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10080 4300 50  0001 C CNN
F 3 "~" H 10150 4300 50  0001 C CNN
	1    10150 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5C69F495
P 10150 4700
F 0 "R18" H 10220 4746 50  0000 L CNN
F 1 "OPT" H 10220 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10080 4700 50  0001 C CNN
F 3 "~" H 10150 4700 50  0001 C CNN
	1    10150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4250 9800 4500
Wire Wire Line
	9800 4500 10150 4500
Wire Wire Line
	10150 4500 10150 4450
Wire Wire Line
	10150 4500 10150 4550
Connection ~ 10150 4500
Wire Wire Line
	10150 4850 10150 4900
$Comp
L power:GND #PWR0126
U 1 1 5C6BA857
P 10150 4900
F 0 "#PWR0126" H 10150 4650 50  0001 C CNN
F 1 "GND" H 10155 4727 50  0000 C CNN
F 2 "" H 10150 4900 50  0001 C CNN
F 3 "" H 10150 4900 50  0001 C CNN
	1    10150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5C6BABB1
P 8800 4350
F 0 "R15" H 8870 4396 50  0000 L CNN
F 1 "18k" H 8870 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8730 4350 50  0001 C CNN
F 3 "~" H 8800 4350 50  0001 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4150 8800 4150
Wire Wire Line
	8800 4150 8800 4200
Wire Wire Line
	8800 4500 8800 4550
$Comp
L power:GND #PWR0127
U 1 1 5C6CD6D3
P 8800 4550
F 0 "#PWR0127" H 8800 4300 50  0001 C CNN
F 1 "GND" H 8805 4377 50  0000 C CNN
F 2 "" H 8800 4550 50  0001 C CNN
F 3 "" H 8800 4550 50  0001 C CNN
	1    8800 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C6D7011
P 8500 4350
F 0 "C10" H 8500 4450 50  0000 L CNN
F 1 "8.2p" H 8500 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8538 4200 50  0001 C CNN
F 3 "~" H 8500 4350 50  0001 C CNN
	1    8500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4050 8500 4200
Wire Wire Line
	8500 4500 8500 4550
$Comp
L power:GND #PWR0128
U 1 1 5C6E0DA1
P 8500 4550
F 0 "#PWR0128" H 8500 4300 50  0001 C CNN
F 1 "GND" H 8505 4377 50  0000 C CNN
F 2 "" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0001 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4050 8900 4050
Wire Wire Line
	8850 3250 8400 3250
Connection ~ 8850 3250
Connection ~ 8400 3250
Wire Wire Line
	4500 2300 4650 2300
Wire Wire Line
	4950 2300 5100 2300
Wire Wire Line
	7550 2700 7550 3250
Wire Wire Line
	7550 3250 7800 3250
Connection ~ 7800 3250
Text Label 2650 7100 2    50   ~ 0
RF_PWR
$Comp
L Device:R R19
U 1 1 5C8033AA
P 10500 4150
F 0 "R19" V 10400 4150 50  0000 C CNN
F 1 "1k" V 10600 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10430 4150 50  0001 C CNN
F 3 "~" H 10500 4150 50  0001 C CNN
	1    10500 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 4150 10350 4150
Connection ~ 10150 4150
Wire Wire Line
	7950 2300 10350 2300
Wire Wire Line
	10650 4150 11050 4150
Text Notes 8700 2950 0    100  ~ 0
Power Detector\n
Text Notes 3450 6300 0    100  ~ 0
Digital LDO
Text Notes 5700 6350 0    100  ~ 0
RF LDO
Text Notes 1150 6300 0    100  ~ 0
Connectors\n
Wire Wire Line
	3300 6950 3650 6950
$Comp
L Device:C C13
U 1 1 5C8CEAD3
P 10650 3550
F 0 "C13" V 10600 3650 50  0000 C CNN
F 1 "100n" V 10700 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10688 3400 50  0001 C CNN
F 3 "~" H 10650 3550 50  0001 C CNN
	1    10650 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 5C8D8939
P 10650 3750
F 0 "C14" V 10600 3850 50  0000 C CNN
F 1 "100p" V 10700 3900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10688 3600 50  0001 C CNN
F 3 "~" H 10650 3750 50  0001 C CNN
	1    10650 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	10450 3400 10450 3550
Wire Wire Line
	10450 3900 10050 3900
Wire Wire Line
	10050 3900 10050 4050
Connection ~ 10450 3550
$Comp
L power:GND #PWR0129
U 1 1 5C8F609E
P 10950 3800
F 0 "#PWR0129" H 10950 3550 50  0001 C CNN
F 1 "GND" H 10955 3627 50  0000 C CNN
F 2 "" H 10950 3800 50  0001 C CNN
F 3 "" H 10950 3800 50  0001 C CNN
	1    10950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3550 10950 3750
Wire Wire Line
	10450 3550 10500 3550
Wire Wire Line
	10450 3550 10450 3750
Wire Wire Line
	10450 3750 10500 3750
Connection ~ 10450 3750
Wire Wire Line
	10450 3750 10450 3900
Wire Wire Line
	10800 3550 10950 3550
Wire Wire Line
	10800 3750 10950 3750
Connection ~ 10950 3750
Wire Wire Line
	10950 3750 10950 3800
Wire Wire Line
	2450 4350 2550 4350
Wire Wire Line
	2400 4350 2550 4350
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C93D3BA
P 7400 5650
F 0 "H2" H 7500 5701 50  0000 L CNN
F 1 "MountingHole_Pad" H 7500 5610 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7400 5650 50  0001 C CNN
F 3 "~" H 7400 5650 50  0001 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5C93D531
P 7400 5750
F 0 "#PWR0130" H 7400 5500 50  0001 C CNN
F 1 "GND" H 7405 5577 50  0000 C CNN
F 2 "" H 7400 5750 50  0001 C CNN
F 3 "" H 7400 5750 50  0001 C CNN
	1    7400 5750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C93D5F4
P 7400 5150
F 0 "H1" H 7500 5201 50  0000 L CNN
F 1 "MountingHole_Pad" H 7500 5110 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 7400 5150 50  0001 C CNN
F 3 "~" H 7400 5150 50  0001 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5C93D5FB
P 7400 5250
F 0 "#PWR0131" H 7400 5000 50  0001 C CNN
F 1 "GND" H 7405 5077 50  0000 C CNN
F 2 "" H 7400 5250 50  0001 C CNN
F 3 "" H 7400 5250 50  0001 C CNN
	1    7400 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C9477A9
P 8350 5150
F 0 "H3" H 8450 5201 50  0000 L CNN
F 1 "MountingHole_Pad" H 8450 5110 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8350 5150 50  0001 C CNN
F 3 "~" H 8350 5150 50  0001 C CNN
	1    8350 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5C9477B0
P 8350 5250
F 0 "#PWR0132" H 8350 5000 50  0001 C CNN
F 1 "GND" H 8355 5077 50  0000 C CNN
F 2 "" H 8350 5250 50  0001 C CNN
F 3 "" H 8350 5250 50  0001 C CNN
	1    8350 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C951965
P 8350 5650
F 0 "H4" H 8450 5701 50  0000 L CNN
F 1 "MountingHole_Pad" H 8450 5610 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 8350 5650 50  0001 C CNN
F 3 "~" H 8350 5650 50  0001 C CNN
	1    8350 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5C95196C
P 8350 5750
F 0 "#PWR0133" H 8350 5500 50  0001 C CNN
F 1 "GND" H 8355 5577 50  0000 C CNN
F 2 "" H 8350 5750 50  0001 C CNN
F 3 "" H 8350 5750 50  0001 C CNN
	1    8350 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5C95CFB8
P 2050 7100
F 0 "J3" H 2100 7417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 2100 7326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2050 7100 50  0001 C CNN
F 3 "~" H 2050 7100 50  0001 C CNN
	1    2050 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7100 2350 7100
Wire Wire Line
	1850 7000 1600 7000
Wire Wire Line
	1850 7100 1600 7100
Wire Wire Line
	1850 7200 1600 7200
Wire Wire Line
	2650 7000 2350 7000
Wire Wire Line
	2350 7200 2650 7200
Wire Wire Line
	2650 7200 2650 7250
$EndSCHEMATC
