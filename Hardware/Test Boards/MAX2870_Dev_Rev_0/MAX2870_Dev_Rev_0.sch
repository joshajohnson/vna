EESchema Schematic File Version 4
LIBS:MAX2870_Dev_Rev_0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MAX2870/2871 Dev Board"
Date "2018-12-29"
Rev ""
Comp "Josh Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX2870_Dev_Rev_0-rescue:MAX2871-VNA_Symbols U3
U 1 1 5C26E3F2
P 4200 3750
F 0 "U3" H 3450 4750 50  0000 C CNN
F 1 "MAX2871" H 3550 4650 50  0000 C CNN
F 2 "VNA_Footprints:QFN-32-1EP_5x5mm_Pitch0.5mm_Thermal_Vias" H 5400 4900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MAX2871ETJ+.pdf" H 4650 4650 50  0001 L CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C26F0B7
P 950 7250
F 0 "C1" H 1065 7296 50  0000 L CNN
F 1 "10u" H 1065 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 988 7100 50  0001 C CNN
F 3 "~" H 950 7250 50  0001 C CNN
	1    950  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C26F116
P 2000 7250
F 0 "C2" H 2115 7296 50  0000 L CNN
F 1 "22u" H 2115 7205 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 2000 7250 50  0001 C CNN
F 3 "~" H 2000 7250 50  0001 C CNN
	1    2000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7400 950  7500
Wire Wire Line
	950  7500 1500 7500
Wire Wire Line
	2000 7500 2000 7400
Wire Wire Line
	1500 7350 1500 7500
Connection ~ 1500 7500
Wire Wire Line
	1500 7500 1850 7500
$Comp
L power:GND #PWR0101
U 1 1 5C26F1D2
P 1500 7500
F 0 "#PWR0101" H 1500 7250 50  0001 C CNN
F 1 "GND" H 1505 7327 50  0000 C CNN
F 2 "" H 1500 7500 50  0001 C CNN
F 3 "" H 1500 7500 50  0001 C CNN
	1    1500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7050 1050 7050
Wire Wire Line
	950  7050 950  7100
Wire Wire Line
	950  7050 700  7050
Wire Wire Line
	700  7050 700  6950
Connection ~ 950  7050
Wire Wire Line
	1800 7050 2000 7050
Wire Wire Line
	2000 7050 2000 7100
Wire Wire Line
	2000 7050 2250 7050
Wire Wire Line
	2250 7050 2250 6950
Connection ~ 2000 7050
$Comp
L power:+5V #PWR0102
U 1 1 5C26F3A3
P 700 6950
F 0 "#PWR0102" H 700 6800 50  0001 C CNN
F 1 "+5V" H 715 7123 50  0000 C CNN
F 2 "" H 700 6950 50  0001 C CNN
F 3 "" H 700 6950 50  0001 C CNN
	1    700  6950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C26F405
P 1050 6950
F 0 "#FLG0101" H 1050 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 7124 50  0000 C CNN
F 2 "" H 1050 6950 50  0001 C CNN
F 3 "~" H 1050 6950 50  0001 C CNN
	1    1050 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6950 1050 7050
Connection ~ 1050 7050
Wire Wire Line
	1050 7050 950  7050
$Comp
L power:+3.3V #PWR0103
U 1 1 5C26F58D
P 2250 6950
F 0 "#PWR0103" H 2250 6800 50  0001 C CNN
F 1 "+3.3V" H 2265 7123 50  0000 C CNN
F 2 "" H 2250 6950 50  0001 C CNN
F 3 "" H 2250 6950 50  0001 C CNN
	1    2250 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5C26F6DA
P 2650 6950
F 0 "#PWR0104" H 2650 6800 50  0001 C CNN
F 1 "+5V" H 2665 7123 50  0000 C CNN
F 2 "" H 2650 6950 50  0001 C CNN
F 3 "" H 2650 6950 50  0001 C CNN
	1    2650 6950
	1    0    0    -1  
$EndComp
Text Label 2800 3300 0    50   ~ 0
CLK
Text Label 2800 3400 0    50   ~ 0
DATA
Text Label 2800 3500 0    50   ~ 0
LE
Text Label 2800 3600 0    50   ~ 0
CE
Text Label 2800 3750 0    50   ~ 0
RFOUT_EN
Wire Wire Line
	2800 3600 3200 3600
Wire Wire Line
	2800 3750 3200 3750
Wire Wire Line
	4000 2650 4000 2700
$Comp
L Device:C C11
U 1 1 5C2C6D74
P 3550 1600
F 0 "C11" V 3700 1550 50  0000 L CNN
F 1 "10n" V 3400 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3588 1450 50  0001 C CNN
F 3 "~" H 3550 1600 50  0001 C CNN
	1    3550 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C2E2F70
P 3700 2150
F 0 "#PWR0108" H 3700 1900 50  0001 C CNN
F 1 "GND" H 3705 1977 50  0000 C CNN
F 2 "" H 3700 2150 50  0001 C CNN
F 3 "" H 3700 2150 50  0001 C CNN
	1    3700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2050 3700 2150
Wire Wire Line
	3700 1600 3700 2050
Connection ~ 3700 2050
Wire Wire Line
	3400 1600 3400 2050
Connection ~ 3400 2050
$Comp
L Device:C C12
U 1 1 5C2C6D6D
P 3550 2050
F 0 "C12" V 3700 2000 50  0000 L CNN
F 1 "100p" V 3400 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3588 1900 50  0001 C CNN
F 3 "~" H 3550 2050 50  0001 C CNN
	1    3550 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 5C2E307D
P 4000 1600
F 0 "C13" V 4150 1550 50  0000 L CNN
F 1 "10n" V 3850 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4038 1450 50  0001 C CNN
F 3 "~" H 4000 1600 50  0001 C CNN
	1    4000 1600
	0    -1   -1   0   
$EndComp
Connection ~ 3850 1600
$Comp
L power:GND #PWR0109
U 1 1 5C2E3089
P 4150 2150
F 0 "#PWR0109" H 4150 1900 50  0001 C CNN
F 1 "GND" H 4155 1977 50  0000 C CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2050 4150 2150
Wire Wire Line
	4150 1600 4150 2050
Connection ~ 4150 2050
Wire Wire Line
	3850 2050 3850 2450
Wire Wire Line
	3850 1600 3850 2050
Connection ~ 3850 2050
$Comp
L Device:C C14
U 1 1 5C2E3095
P 4000 2050
F 0 "C14" V 4150 2000 50  0000 L CNN
F 1 "100p" V 3850 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4038 1900 50  0001 C CNN
F 3 "~" H 4000 2050 50  0001 C CNN
	1    4000 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 5C2E54F6
P 4450 1600
F 0 "C16" V 4600 1550 50  0000 L CNN
F 1 "10n" V 4300 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4488 1450 50  0001 C CNN
F 3 "~" H 4450 1600 50  0001 C CNN
	1    4450 1600
	0    -1   -1   0   
$EndComp
Connection ~ 4300 1600
$Comp
L power:GND #PWR0110
U 1 1 5C2E5502
P 4600 2150
F 0 "#PWR0110" H 4600 1900 50  0001 C CNN
F 1 "GND" H 4605 1977 50  0000 C CNN
F 2 "" H 4600 2150 50  0001 C CNN
F 3 "" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2050 4600 2150
Wire Wire Line
	4600 1600 4600 2050
Connection ~ 4600 2050
Wire Wire Line
	4300 1600 4300 2050
Connection ~ 4300 2050
$Comp
L Device:C C17
U 1 1 5C2E550E
P 4450 2050
F 0 "C17" V 4600 2000 50  0000 L CNN
F 1 "100p" V 4300 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4488 1900 50  0001 C CNN
F 3 "~" H 4450 2050 50  0001 C CNN
	1    4450 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 2550 4100 2700
Wire Wire Line
	3400 2050 3400 2550
Wire Wire Line
	4200 2450 4200 2700
Wire Wire Line
	4300 2050 4300 2700
Wire Wire Line
	3400 2550 4100 2550
Wire Wire Line
	3850 2450 4200 2450
$Comp
L Device:C C9
U 1 1 5C306196
P 3100 1600
F 0 "C9" V 3250 1550 50  0000 L CNN
F 1 "10n" V 2950 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3138 1450 50  0001 C CNN
F 3 "~" H 3100 1600 50  0001 C CNN
	1    3100 1600
	0    -1   -1   0   
$EndComp
Connection ~ 2950 1600
$Comp
L power:GND #PWR0111
U 1 1 5C3061A0
P 3250 2150
F 0 "#PWR0111" H 3250 1900 50  0001 C CNN
F 1 "GND" H 3255 1977 50  0000 C CNN
F 2 "" H 3250 2150 50  0001 C CNN
F 3 "" H 3250 2150 50  0001 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2050 3250 2150
Wire Wire Line
	3250 1600 3250 2050
Connection ~ 3250 2050
Wire Wire Line
	2950 1600 2950 2050
Connection ~ 2950 2050
$Comp
L Device:C C10
U 1 1 5C3061AB
P 3100 2050
F 0 "C10" V 3250 2000 50  0000 L CNN
F 1 "100p" V 2950 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3138 1900 50  0001 C CNN
F 3 "~" H 3100 2050 50  0001 C CNN
	1    3100 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C18
U 1 1 5C308A0F
P 4900 1600
F 0 "C18" V 5050 1550 50  0000 L CNN
F 1 "10n" V 4750 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4938 1450 50  0001 C CNN
F 3 "~" H 4900 1600 50  0001 C CNN
	1    4900 1600
	0    -1   -1   0   
$EndComp
Connection ~ 4750 1600
Wire Wire Line
	5050 1600 5050 2050
Wire Wire Line
	4750 1600 4750 2050
Connection ~ 4750 2050
$Comp
L Device:C C19
U 1 1 5C308A24
P 4900 2050
F 0 "C19" V 5050 2000 50  0000 L CNN
F 1 "100p" V 4750 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4938 1900 50  0001 C CNN
F 3 "~" H 4900 2050 50  0001 C CNN
	1    4900 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 2050 4750 2550
$Comp
L Device:C C21
U 1 1 5C30B6E7
P 5350 1600
F 0 "C21" V 5500 1550 50  0000 L CNN
F 1 "10n" V 5200 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 1450 50  0001 C CNN
F 3 "~" H 5350 1600 50  0001 C CNN
	1    5350 1600
	0    -1   -1   0   
$EndComp
Connection ~ 5200 1600
$Comp
L power:GND #PWR0113
U 1 1 5C30B6F1
P 5500 2150
F 0 "#PWR0113" H 5500 1900 50  0001 C CNN
F 1 "GND" H 5505 1977 50  0000 C CNN
F 2 "" H 5500 2150 50  0001 C CNN
F 3 "" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2050 5500 2150
Wire Wire Line
	5500 1600 5500 2050
Connection ~ 5500 2050
Wire Wire Line
	5200 1600 5200 2050
Connection ~ 5200 2050
$Comp
L Device:C C22
U 1 1 5C30B6FC
P 5350 2050
F 0 "C22" V 5500 2000 50  0000 L CNN
F 1 "100p" V 5200 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 1900 50  0001 C CNN
F 3 "~" H 5350 2050 50  0001 C CNN
	1    5350 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 2650 4000 2650
Wire Wire Line
	4750 2550 4400 2550
Wire Wire Line
	4400 2550 4400 2700
Wire Wire Line
	5200 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2700
Wire Wire Line
	5200 2050 5200 2650
$Comp
L power:+3.3V #PWR0114
U 1 1 5C318611
P 2950 1300
F 0 "#PWR0114" H 2950 1150 50  0001 C CNN
F 1 "+3.3V" H 2965 1473 50  0000 C CNN
F 2 "" H 2950 1300 50  0001 C CNN
F 3 "" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C31C36F
P 4500 4950
F 0 "#PWR0115" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4505 4777 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4900 4500 4950
Wire Wire Line
	3800 4850 3800 4900
Wire Wire Line
	3800 4900 3900 4900
Wire Wire Line
	4500 4850 4500 4900
Connection ~ 4500 4900
Wire Wire Line
	4400 4850 4400 4900
Connection ~ 4400 4900
Wire Wire Line
	4400 4900 4500 4900
Wire Wire Line
	4300 4850 4300 4900
Connection ~ 4300 4900
Wire Wire Line
	4300 4900 4400 4900
Wire Wire Line
	4200 4850 4200 4900
Connection ~ 4200 4900
Wire Wire Line
	4200 4900 4300 4900
Wire Wire Line
	4100 4850 4100 4900
Connection ~ 4100 4900
Wire Wire Line
	4100 4900 4200 4900
Wire Wire Line
	4000 4850 4000 4900
Connection ~ 4000 4900
Wire Wire Line
	4000 4900 4100 4900
Wire Wire Line
	3900 4850 3900 4900
Connection ~ 3900 4900
Wire Wire Line
	3900 4900 4000 4900
Wire Wire Line
	3200 4300 3000 4300
Wire Wire Line
	3000 4300 3000 4400
Wire Wire Line
	3200 4200 2650 4200
Wire Wire Line
	2650 4200 2650 4400
$Comp
L Device:C C5
U 1 1 5C36C66D
P 2300 4550
F 0 "C5" H 2415 4596 50  0000 L CNN
F 1 "1u" H 2415 4505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2338 4400 50  0001 C CNN
F 3 "~" H 2300 4550 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4100 2300 4100
Wire Wire Line
	2300 4100 2300 4400
Wire Wire Line
	3200 4000 1950 4000
Wire Wire Line
	1950 4000 1950 4400
$Comp
L Device:R R1
U 1 1 5C37BD5B
P 1950 4550
F 0 "R1" H 2020 4596 50  0000 L CNN
F 1 "5.1k" H 2020 4505 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 1880 4550 50  0001 C CNN
F 3 "~" H 1950 4550 50  0001 C CNN
	1    1950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 3000 4750
Wire Wire Line
	2650 4700 2650 4750
Wire Wire Line
	2300 4700 2300 4750
Wire Wire Line
	1950 4700 1950 4750
$Comp
L power:GND #PWR0116
U 1 1 5C39C368
P 1950 4750
F 0 "#PWR0116" H 1950 4500 50  0001 C CNN
F 1 "GND" H 1955 4577 50  0000 C CNN
F 2 "" H 1950 4750 50  0001 C CNN
F 3 "" H 1950 4750 50  0001 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C39C3BA
P 2300 4750
F 0 "#PWR0117" H 2300 4500 50  0001 C CNN
F 1 "GND" H 2305 4577 50  0000 C CNN
F 2 "" H 2300 4750 50  0001 C CNN
F 3 "" H 2300 4750 50  0001 C CNN
	1    2300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C39C405
P 2650 4750
F 0 "#PWR0118" H 2650 4500 50  0001 C CNN
F 1 "GND" H 2655 4577 50  0000 C CNN
F 2 "" H 2650 4750 50  0001 C CNN
F 3 "" H 2650 4750 50  0001 C CNN
	1    2650 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C39C450
P 3000 4750
F 0 "#PWR0119" H 3000 4500 50  0001 C CNN
F 1 "GND" H 3005 4577 50  0000 C CNN
F 2 "" H 3000 4750 50  0001 C CNN
F 3 "" H 3000 4750 50  0001 C CNN
	1    3000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3150 5650 3150
Wire Wire Line
	5250 3250 5650 3250
Text Label 5650 3150 2    50   ~ 0
LD
Text Label 5650 3250 2    50   ~ 0
MUX_OUT
$Comp
L Device:R R5
U 1 1 5C3B3A0B
P 6850 3100
F 0 "R5" V 6950 3050 50  0000 L CNN
F 1 "31.1" V 6750 3000 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 6780 3100 50  0001 C CNN
F 3 "~" H 6850 3100 50  0001 C CNN
	1    6850 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C3B3AA8
P 6550 3250
F 0 "R4" H 6600 3300 50  0000 L CNN
F 1 "90.9" H 6600 3200 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 6480 3250 50  0001 C CNN
F 3 "~" H 6550 3250 50  0001 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3100 7100 3100
$Comp
L power:GND #PWR0120
U 1 1 5C3CAFDB
P 6550 3400
F 0 "#PWR0120" H 6550 3150 50  0001 C CNN
F 1 "GND" H 6555 3227 50  0000 C CNN
F 2 "" H 6550 3400 50  0001 C CNN
F 3 "" H 6550 3400 50  0001 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5C40C9DD
P 7100 3250
F 0 "C24" H 7215 3296 50  0000 L CNN
F 1 "100n" H 7215 3205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7138 3100 50  0001 C CNN
F 3 "~" H 7100 3250 50  0001 C CNN
	1    7100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5C418FAC
P 7100 3550
F 0 "C25" H 7215 3596 50  0000 L CNN
F 1 "12n" H 7215 3505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7138 3400 50  0001 C CNN
F 3 "~" H 7100 3550 50  0001 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5C41F4DB
P 7100 3700
F 0 "#PWR0121" H 7100 3450 50  0001 C CNN
F 1 "GND" H 7105 3527 50  0000 C CNN
F 2 "" H 7100 3700 50  0001 C CNN
F 3 "" H 7100 3700 50  0001 C CNN
	1    7100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5C44DD06
P 7100 4150
F 0 "C26" H 7215 4196 50  0000 L CNN
F 1 "820p" H 7215 4105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7138 4000 50  0001 C CNN
F 3 "~" H 7100 4150 50  0001 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C44DD0E
P 7100 4300
F 0 "#PWR0122" H 7100 4050 50  0001 C CNN
F 1 "GND" H 7105 4127 50  0000 C CNN
F 2 "" H 7100 4300 50  0001 C CNN
F 3 "" H 7100 4300 50  0001 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3400 7100 3400
Connection ~ 7100 3400
$Comp
L Device:R R6
U 1 1 5C45B711
P 7500 3700
F 0 "R6" H 7570 3746 50  0000 L CNN
F 1 "240" H 7570 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 7430 3700 50  0001 C CNN
F 3 "~" H 7500 3700 50  0001 C CNN
	1    7500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3400 7500 3550
Wire Wire Line
	6900 4000 7100 4000
Wire Wire Line
	7100 3400 7500 3400
Connection ~ 7100 4000
Wire Wire Line
	6900 3650 6900 3400
Wire Wire Line
	6900 4000 6900 3750
Wire Wire Line
	7100 4000 7500 4000
Wire Wire Line
	7500 4000 7500 3850
Wire Wire Line
	6700 3100 6550 3100
Wire Wire Line
	6550 3100 6350 3100
Wire Wire Line
	6350 3100 6350 3450
Connection ~ 6550 3100
Wire Notes Line
	6400 2900 7750 2900
Wire Notes Line
	7750 2900 7750 4550
Wire Notes Line
	7750 4550 6400 4550
Wire Notes Line
	6400 4550 6400 2900
Text Notes 6400 2900 0    50   ~ 0
PLL Loop Filter\n
Wire Wire Line
	2650 3150 3200 3150
Wire Wire Line
	2650 2400 2650 3150
$Comp
L Device:R R2
U 1 1 5C542E65
P 5950 4150
F 0 "R2" V 5900 4000 50  0000 C CNN
F 1 "0" V 6000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5880 4150 50  0001 C CNN
F 3 "~" H 5950 4150 50  0001 C CNN
	1    5950 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C5430CA
P 5950 4350
F 0 "R3" V 5900 4200 50  0000 C CNN
F 1 "0" V 6000 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5880 4350 50  0001 C CNN
F 3 "~" H 5950 4350 50  0001 C CNN
	1    5950 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4350 6200 4150
Wire Wire Line
	6200 4150 6100 4150
Connection ~ 6200 4150
Wire Wire Line
	6200 4150 6200 4100
Wire Wire Line
	5700 4350 5800 4350
Wire Wire Line
	5250 3950 5650 3950
Wire Wire Line
	5250 4050 5650 4050
Text Label 5650 4050 2    50   ~ 0
RF_OUT_N
Text Label 5650 3950 2    50   ~ 0
RF_OUT_P
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5C5B38E6
P 3600 1000
F 0 "FB1" V 3550 900 50  0000 C CNN
F 1 "BLM18PG181SN1D" V 3750 900 50  0000 C CNN
F 2 "VNA_Footprints:BEADC1608X95N" V 3530 1000 50  0001 C CNN
F 3 "~" H 3600 1000 50  0001 C CNN
	1    3600 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 1350 4300 1600
Wire Wire Line
	3850 1350 3850 1600
Wire Wire Line
	3850 1350 4300 1350
$Comp
L Device:Ferrite_Bead FB2
U 1 1 5C5E0AAB
P 4550 1000
F 0 "FB2" V 4500 900 50  0000 C CNN
F 1 "BLM18PG181SN1D" V 4700 850 50  0000 C CNN
F 2 "VNA_Footprints:BEADC1608X95N" V 4480 1000 50  0001 C CNN
F 3 "~" H 4550 1000 50  0001 C CNN
	1    4550 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1000 4750 1000
Wire Wire Line
	4750 1350 5200 1350
Wire Wire Line
	5200 1350 5200 1600
Wire Wire Line
	4750 1350 4750 1600
Wire Wire Line
	4750 1000 4750 1350
Connection ~ 4750 1350
Text Label 8800 4100 2    50   ~ 0
RF_OUT_N
Text Label 8800 3700 2    50   ~ 0
RF_OUT_P
Wire Wire Line
	5250 3450 6350 3450
Wire Wire Line
	5250 3650 6900 3650
Wire Wire Line
	5250 3750 6900 3750
$Comp
L Device:C C27
U 1 1 5C642D2C
P 9150 4100
F 0 "C27" V 9000 4100 50  0000 C CNN
F 1 "1n" V 9300 4100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 9188 3950 50  0001 C CNN
F 3 "~" H 9150 4100 50  0001 C CNN
	1    9150 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C642DF3
P 9500 4300
F 0 "R7" H 9570 4346 50  0000 L CNN
F 1 "49.9" H 9570 4255 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 9430 4300 50  0001 C CNN
F 3 "~" H 9500 4300 50  0001 C CNN
	1    9500 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5C642E71
P 9500 4550
F 0 "#PWR0123" H 9500 4300 50  0001 C CNN
F 1 "GND" H 9505 4377 50  0000 C CNN
F 2 "" H 9500 4550 50  0001 C CNN
F 3 "" H 9500 4550 50  0001 C CNN
	1    9500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4100 9000 4100
Wire Wire Line
	9300 4100 9500 4100
Wire Wire Line
	9500 4100 9500 4150
Wire Wire Line
	9500 4450 9500 4550
$Comp
L Device:R R8
U 1 1 5C664064
P 9550 3450
F 0 "R8" H 9620 3496 50  0000 L CNN
F 1 "49.9" H 9620 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" V 9480 3450 50  0001 C CNN
F 3 "~" H 9550 3450 50  0001 C CNN
	1    9550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 5C674D87
P 9250 3200
F 0 "C28" V 9100 3200 50  0000 C CNN
F 1 "100p" V 9400 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 9288 3050 50  0001 C CNN
F 3 "~" H 9250 3200 50  0001 C CNN
	1    9250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 3200 9550 3200
Wire Wire Line
	9550 3600 9550 3700
Wire Wire Line
	9100 3200 9000 3200
Wire Wire Line
	9000 3200 9000 3350
$Comp
L power:GND #PWR0124
U 1 1 5C6A88A2
P 9000 3350
F 0 "#PWR0124" H 9000 3100 50  0001 C CNN
F 1 "GND" H 9005 3177 50  0000 C CNN
F 2 "" H 9000 3350 50  0001 C CNN
F 3 "" H 9000 3350 50  0001 C CNN
	1    9000 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5C6B17B1
P 10150 3700
F 0 "J2" H 10249 3676 50  0000 L CNN
F 1 "SMA" H 10249 3585 50  0000 L CNN
F 2 "Connectors_Molex:Molex_SMA_Jack_Edge_Mount" H 10150 3700 50  0001 C CNN
F 3 " ~" H 10150 3700 50  0001 C CNN
	1    10150 3700
	1    0    0    -1  
$EndComp
Connection ~ 9950 3700
Wire Wire Line
	9950 3700 10150 3700
$Comp
L power:GND #PWR0125
U 1 1 5C6B1829
P 10150 3950
F 0 "#PWR0125" H 10150 3700 50  0001 C CNN
F 1 "GND" H 10155 3777 50  0000 C CNN
F 2 "" H 10150 3950 50  0001 C CNN
F 3 "" H 10150 3950 50  0001 C CNN
	1    10150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3900 10150 3950
Connection ~ 9550 3200
Wire Wire Line
	9550 3200 9550 3300
Wire Wire Line
	9550 3050 9550 3200
$Comp
L Regulator_Linear:LP5907MFX-1.8 U2
U 1 1 5C6D5F98
P 3500 7200
F 0 "U2" H 3500 7567 50  0000 C CNN
F 1 "LP5907MFX-3.3" H 3500 7476 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3500 7550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5907.pdf" H 3500 7700 50  0001 C CNN
	1    3500 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C6E81E2
P 2750 7250
F 0 "C7" H 2865 7296 50  0000 L CNN
F 1 "1u" H 2865 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2788 7100 50  0001 C CNN
F 3 "~" H 2750 7250 50  0001 C CNN
	1    2750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7100 3150 7100
Wire Wire Line
	2650 7100 2650 6950
Connection ~ 2750 7100
Wire Wire Line
	2750 7100 2650 7100
Wire Wire Line
	4300 7100 4300 6950
$Comp
L Device:C C15
U 1 1 5C70898E
P 4050 7250
F 0 "C15" H 4165 7296 50  0000 L CNN
F 1 "1u" H 4165 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4088 7100 50  0001 C CNN
F 3 "~" H 4050 7250 50  0001 C CNN
	1    4050 7250
	1    0    0    -1  
$EndComp
Connection ~ 4050 7100
Wire Wire Line
	4050 7100 4300 7100
Wire Wire Line
	3200 7200 3150 7200
Wire Wire Line
	3150 7200 3150 7100
Connection ~ 3150 7100
Wire Wire Line
	2750 7400 2750 7500
Wire Wire Line
	4050 7500 4050 7400
Connection ~ 3500 7500
Wire Wire Line
	3500 7500 4050 7500
$Comp
L power:GND #PWR0126
U 1 1 5C724E84
P 3500 7500
F 0 "#PWR0126" H 3500 7250 50  0001 C CNN
F 1 "GND" H 3505 7327 50  0000 C CNN
F 2 "" H 3500 7500 50  0001 C CNN
F 3 "" H 3500 7500 50  0001 C CNN
	1    3500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7500 3500 7500
$Comp
L power:+3.3VA #PWR0127
U 1 1 5C778068
P 4300 6950
F 0 "#PWR0127" H 4300 6800 50  0001 C CNN
F 1 "+3.3VA" H 4315 7123 50  0000 C CNN
F 2 "" H 4300 6950 50  0001 C CNN
F 3 "" H 4300 6950 50  0001 C CNN
	1    4300 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0128
U 1 1 5C7780D2
P 3150 900
F 0 "#PWR0128" H 3150 750 50  0001 C CNN
F 1 "+3.3VA" H 3165 1073 50  0000 C CNN
F 2 "" H 3150 900 50  0001 C CNN
F 3 "" H 3150 900 50  0001 C CNN
	1    3150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1000 3150 900 
Wire Wire Line
	3150 1000 3450 1000
Wire Wire Line
	4100 1000 4100 900 
Wire Wire Line
	4100 1000 4400 1000
$Comp
L power:+3.3VA #PWR0129
U 1 1 5C787059
P 4100 900
F 0 "#PWR0129" H 4100 750 50  0001 C CNN
F 1 "+3.3VA" H 4115 1073 50  0000 C CNN
F 2 "" H 4100 900 50  0001 C CNN
F 3 "" H 4100 900 50  0001 C CNN
	1    4100 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0130
U 1 1 5C790003
P 9550 3050
F 0 "#PWR0130" H 9550 2900 50  0001 C CNN
F 1 "+3.3VA" H 9565 3223 50  0000 C CNN
F 2 "" H 9550 3050 50  0001 C CNN
F 3 "" H 9550 3050 50  0001 C CNN
	1    9550 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C812E9B
P 800 5600
F 0 "#PWR02" H 800 5450 50  0001 C CNN
F 1 "+5V" H 815 5773 50  0000 C CNN
F 2 "" H 800 5600 50  0001 C CNN
F 3 "" H 800 5600 50  0001 C CNN
	1    800  5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5600 800  5650
Text Label 800  6050 0    50   ~ 0
CLK
Text Label 800  5950 0    50   ~ 0
DATA
Text Label 800  5850 0    50   ~ 0
LE
Text Label 800  5750 0    50   ~ 0
CE
Text Label 2100 5850 2    50   ~ 0
RFOUT_EN
Text Label 2100 5950 2    50   ~ 0
MUX_OUT
Text Label 2100 5750 2    50   ~ 0
LD
Wire Wire Line
	1700 5750 2100 5750
Wire Wire Line
	1700 5850 2100 5850
Wire Wire Line
	1700 5950 2100 5950
Wire Wire Line
	1700 6050 2100 6050
Wire Wire Line
	800  5650 1200 5650
Wire Wire Line
	800  5750 1200 5750
Wire Wire Line
	800  5850 1200 5850
Wire Wire Line
	800  5950 1200 5950
Wire Wire Line
	800  6050 1200 6050
NoConn ~ 2100 6050
Wire Wire Line
	2250 5650 2250 5700
Wire Wire Line
	1700 5650 2250 5650
$Comp
L power:GND #PWR04
U 1 1 5C8C3B43
P 2250 5700
F 0 "#PWR04" H 2250 5450 50  0001 C CNN
F 1 "GND" H 2255 5527 50  0000 C CNN
F 2 "" H 2250 5700 50  0001 C CNN
F 3 "" H 2250 5700 50  0001 C CNN
	1    2250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4350 5700 4300
Wire Wire Line
	5700 4300 5250 4300
Wire Wire Line
	5700 4200 5700 4150
Wire Wire Line
	5700 4150 5800 4150
$Comp
L power:+3.3VA #PWR09
U 1 1 5C900288
P 6200 4100
F 0 "#PWR09" H 6200 3950 50  0001 C CNN
F 1 "+3.3VA" H 6215 4273 50  0000 C CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5700 4200
Text Notes 950  6600 0    100  ~ 0
Digital 3V3 LDO\n
Text Notes 2850 6600 0    100  ~ 0
Analogue 3V3 LDO\n
Text Notes 1000 5550 0    100  ~ 0
IO Connector\n\n
Wire Wire Line
	2950 2050 2950 2650
Text Notes 8800 2850 0    100  ~ 0
RF OUT (single ended)\n\n
Wire Wire Line
	3850 1000 3850 1350
Connection ~ 3850 1350
Wire Wire Line
	3400 1600 3400 1400
Wire Wire Line
	3400 1400 2950 1400
Connection ~ 3400 1600
Wire Wire Line
	3850 1000 3750 1000
Wire Wire Line
	2950 1400 2950 1600
Wire Wire Line
	2950 1300 2950 1400
Connection ~ 2950 1400
Wire Wire Line
	6100 4350 6200 4350
$Comp
L MAX2870_Dev_Rev_0-rescue:ASTXR-12-19.200MHz-VNA_Symbols XO1
U 1 1 5C27981F
P 1300 2250
F 0 "XO1" H 1150 2500 50  0000 C CNN
F 1 "ASTXR-12-19.200MHz" H 1400 2400 50  0000 C CNN
F 2 "VNA_Footprints:ASTXR-12" H 1200 2400 50  0001 C CNN
F 3 "" H 1200 2400 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C29A828
P 2250 2400
F 0 "C4" V 2100 2400 50  0000 C CNN
F 1 "10n" V 2400 2400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 2288 2250 50  0001 C CNN
F 3 "~" H 2250 2400 50  0001 C CNN
	1    2250 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2400 2100 2400
Wire Wire Line
	2400 2400 2650 2400
Wire Wire Line
	900  2400 800  2400
Wire Wire Line
	800  2400 800  2550
$Comp
L power:GND #PWR01
U 1 1 5C2BCADD
P 800 2550
F 0 "#PWR01" H 800 2300 50  0001 C CNN
F 1 "GND" H 805 2377 50  0000 C CNN
F 2 "" H 800 2550 50  0001 C CNN
F 3 "" H 800 2550 50  0001 C CNN
	1    800  2550
	1    0    0    -1  
$EndComp
$Comp
L MAX2870_Dev_Rev_0-rescue:MIC5366-1.8-VNA_Symbols U4
U 1 1 5C2CF761
P 5800 7200
F 0 "U4" H 5825 7565 50  0000 C CNN
F 1 "MIC5366-1.8" H 5825 7474 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 5600 7500 50  0001 C CNN
F 3 "" H 5600 7500 50  0001 C CNN
	1    5800 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5C2CF823
P 4900 7300
F 0 "C20" H 5015 7346 50  0000 L CNN
F 1 "1u" H 5015 7255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4938 7150 50  0001 C CNN
F 3 "~" H 4900 7300 50  0001 C CNN
	1    4900 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5C2CF8C3
P 6400 7300
F 0 "C23" H 6515 7346 50  0000 L CNN
F 1 "1u" H 6515 7255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6438 7150 50  0001 C CNN
F 3 "~" H 6400 7300 50  0001 C CNN
	1    6400 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7100 5350 7100
Wire Wire Line
	4900 7100 4900 7150
Wire Wire Line
	6400 7100 6400 7150
$Comp
L power:GND #PWR010
U 1 1 5C2F461D
P 6400 7500
F 0 "#PWR010" H 6400 7250 50  0001 C CNN
F 1 "GND" H 6405 7327 50  0000 C CNN
F 2 "" H 6400 7500 50  0001 C CNN
F 3 "" H 6400 7500 50  0001 C CNN
	1    6400 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C2F4686
P 4900 7500
F 0 "#PWR07" H 4900 7250 50  0001 C CNN
F 1 "GND" H 4905 7327 50  0000 C CNN
F 2 "" H 4900 7500 50  0001 C CNN
F 3 "" H 4900 7500 50  0001 C CNN
	1    4900 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C2F46EF
P 5350 7500
F 0 "#PWR08" H 5350 7250 50  0001 C CNN
F 1 "GND" H 5355 7327 50  0000 C CNN
F 2 "" H 5350 7500 50  0001 C CNN
F 3 "" H 5350 7500 50  0001 C CNN
	1    5350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7450 4900 7500
Wire Wire Line
	5400 7300 5350 7300
Wire Wire Line
	5350 7300 5350 7500
Wire Wire Line
	5400 7200 5350 7200
Wire Wire Line
	5350 7200 5350 7100
Connection ~ 5350 7100
Wire Wire Line
	5350 7100 5400 7100
Wire Wire Line
	6400 7450 6400 7500
Wire Wire Line
	4900 7100 4800 7100
Wire Wire Line
	4800 7100 4800 6950
Connection ~ 4900 7100
$Comp
L power:+3.3VA #PWR06
U 1 1 5C32513A
P 4800 6950
F 0 "#PWR06" H 4800 6800 50  0001 C CNN
F 1 "+3.3VA" H 4815 7123 50  0000 C CNN
F 2 "" H 4800 6950 50  0001 C CNN
F 3 "" H 4800 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 7100 6600 6950
Connection ~ 6400 7100
$Comp
L power:+1V8 #PWR011
U 1 1 5C32F66A
P 6600 6950
F 0 "#PWR011" H 6600 6800 50  0001 C CNN
F 1 "+1V8" H 6615 7123 50  0000 C CNN
F 2 "" H 6600 6950 50  0001 C CNN
F 3 "" H 6600 6950 50  0001 C CNN
	1    6600 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR03
U 1 1 5C32F9F9
P 1950 1700
F 0 "#PWR03" H 1950 1550 50  0001 C CNN
F 1 "+1V8" H 1965 1873 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C32FCDD
P 2150 1850
F 0 "C3" V 2300 1850 50  0000 C CNN
F 1 "100n" V 2000 1850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 2188 1700 50  0001 C CNN
F 3 "~" H 2150 1850 50  0001 C CNN
	1    2150 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2200 1900 2200
Wire Wire Line
	2300 1850 2350 1850
Wire Wire Line
	2350 1850 2350 1900
$Comp
L power:GND #PWR05
U 1 1 5C34542C
P 2350 1900
F 0 "#PWR05" H 2350 1650 50  0001 C CNN
F 1 "GND" H 2355 1727 50  0000 C CNN
F 2 "" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
Text Notes 5450 6600 0    100  ~ 0
1V8 LDO\n
Text Notes 1050 1800 0    100  ~ 0
Clock Ref\n
Wire Wire Line
	1950 1700 1950 1850
Wire Wire Line
	1950 1850 2000 1850
Connection ~ 1950 1850
Wire Wire Line
	1950 1850 1950 2200
Wire Wire Line
	3200 3300 2800 3300
Wire Wire Line
	3200 3400 2800 3400
Wire Wire Line
	3200 3500 2800 3500
$Comp
L Device:C C6
U 1 1 5C3D1E11
P 2650 4550
F 0 "C6" H 2765 4596 50  0000 L CNN
F 1 "1u" H 2765 4505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2688 4400 50  0001 C CNN
F 3 "~" H 2650 4550 50  0001 C CNN
	1    2650 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C3D1E7D
P 3000 4550
F 0 "C8" H 3115 4596 50  0000 L CNN
F 1 "1u" H 3115 4505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3038 4400 50  0001 C CNN
F 3 "~" H 3000 4550 50  0001 C CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 7100 6600 7100
Connection ~ 5050 2050
$Comp
L power:GND #PWR0105
U 1 1 5C3FCF6A
P 5050 2150
F 0 "#PWR0105" H 5050 1900 50  0001 C CNN
F 1 "GND" H 5055 1977 50  0000 C CNN
F 2 "" H 5050 2150 50  0001 C CNN
F 3 "" H 5050 2150 50  0001 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2050 5050 2150
Wire Wire Line
	6250 7100 6400 7100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C27C990
P 1850 7500
F 0 "#FLG0102" H 1850 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 7674 50  0000 C CNN
F 2 "" H 1850 7500 50  0001 C CNN
F 3 "~" H 1850 7500 50  0001 C CNN
	1    1850 7500
	-1   0    0    1   
$EndComp
Connection ~ 1850 7500
Wire Wire Line
	1850 7500 2000 7500
Wire Wire Line
	3800 7100 4050 7100
Wire Wire Line
	2750 7100 3150 7100
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5C27C498
P 1500 7050
F 0 "U1" H 1500 7292 50  0000 C CNN
F 1 "AMS1117-3.3" H 1500 7201 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1500 7250 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1600 6800 50  0001 C CNN
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C287D36
P 9750 6200
F 0 "H2" H 9850 6251 50  0000 L CNN
F 1 "MountingHole" H 9850 6160 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 9750 6200 50  0001 C CNN
F 3 "~" H 9750 6200 50  0001 C CNN
	1    9750 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C287EBC
P 9750 5700
F 0 "H1" H 9850 5751 50  0000 L CNN
F 1 "MountingHole" H 9850 5660 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 9750 5700 50  0001 C CNN
F 3 "~" H 9750 5700 50  0001 C CNN
	1    9750 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C288084
P 10500 6200
F 0 "H4" H 10600 6251 50  0000 L CNN
F 1 "MountingHole" H 10600 6160 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 10500 6200 50  0001 C CNN
F 3 "~" H 10500 6200 50  0001 C CNN
	1    10500 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C28808B
P 10500 5700
F 0 "H3" H 10600 5751 50  0000 L CNN
F 1 "MountingHole" H 10600 5660 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 10500 5700 50  0001 C CNN
F 3 "~" H 10500 5700 50  0001 C CNN
	1    10500 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C292298
P 9750 5800
F 0 "#PWR0106" H 9750 5550 50  0001 C CNN
F 1 "GND" H 9755 5627 50  0000 C CNN
F 2 "" H 9750 5800 50  0001 C CNN
F 3 "" H 9750 5800 50  0001 C CNN
	1    9750 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5C292305
P 9750 6300
F 0 "#PWR0107" H 9750 6050 50  0001 C CNN
F 1 "GND" H 9755 6127 50  0000 C CNN
F 2 "" H 9750 6300 50  0001 C CNN
F 3 "" H 9750 6300 50  0001 C CNN
	1    9750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C292372
P 10500 5800
F 0 "#PWR0112" H 10500 5550 50  0001 C CNN
F 1 "GND" H 10505 5627 50  0000 C CNN
F 2 "" H 10500 5800 50  0001 C CNN
F 3 "" H 10500 5800 50  0001 C CNN
	1    10500 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5C2923DF
P 10500 6300
F 0 "#PWR0131" H 10500 6050 50  0001 C CNN
F 1 "GND" H 10505 6127 50  0000 C CNN
F 2 "" H 10500 6300 50  0001 C CNN
F 3 "" H 10500 6300 50  0001 C CNN
	1    10500 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5C2C723E
P 9150 3700
F 0 "C29" V 9000 3700 50  0000 C CNN
F 1 "1n" V 9300 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 9188 3550 50  0001 C CNN
F 3 "~" H 9150 3700 50  0001 C CNN
	1    9150 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 3700 9000 3700
Wire Wire Line
	9300 3700 9550 3700
Connection ~ 9550 3700
Wire Wire Line
	9550 3700 9950 3700
Text Label 3000 1400 0    50   ~ 0
3v3_DIG
Text Label 3950 1350 0    50   ~ 0
3v3_PLL
Text Label 4850 1350 0    50   ~ 0
3v3_RF
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5C2F2C44
P 1400 5850
F 0 "J1" H 1450 6267 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1450 6176 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 1400 5850 50  0001 C CNN
F 3 "~" H 1400 5850 50  0001 C CNN
	1    1400 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC