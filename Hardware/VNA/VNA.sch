EESchema Schematic File Version 4
LIBS:VNA-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "VNA"
Date "2019-04-06"
Rev "0"
Comp "Josh Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1550 1400 1000 1150
U 5CA81007
F0 "Synth" 50
F1 "synth.sch" 50
F2 "RF_OUT_P" O R 2550 1550 50 
F3 "RF_OUT_N" O R 2550 1800 50 
F4 "LD" O R 2550 2400 50 
F5 "MUX_OUT" O L 1550 1950 50 
F6 "CLK" I L 1550 2050 50 
F7 "DATA" I L 1550 1850 50 
F8 "LE" I L 1550 2150 50 
F9 "CE" I L 1550 2350 50 
F10 "RFOUT_EN" I L 1550 2450 50 
F11 "3V3A" I L 1550 1550 50 
F12 "1V8" I L 1550 1650 50 
F13 "3V3" I L 1550 1450 50 
$EndSheet
$Sheet
S 3400 3650 550  500 
U 5CA96610
F0 "Power" 50
F1 "power.sch" 50
F2 "3V3A" O R 3950 3950 50 
F3 "1V8" O R 3950 4050 50 
F4 "5V0" O R 3950 3750 50 
F5 "3V3" O R 3950 3850 50 
F6 "VBUS" I L 3400 3750 50 
$EndSheet
$Sheet
S 6200 1400 900  1250
U 5CAA0E12
F0 "Source Leveling" 50
F1 "sourceLevel.sch" 50
F2 "RF_IN" I L 6200 1550 50 
F3 "RF_OUT" O R 7100 1550 50 
F4 "SI" I L 6200 2050 50 
F5 "RF_PWR_IN" I L 6200 2450 50 
F6 "PWR_LEVEL" O L 6200 2550 50 
F7 "CLK" I L 6200 2150 50 
F8 "LE" I L 6200 2250 50 
F9 "3V3A" I L 6200 1850 50 
F10 "5V0" I L 6200 1750 50 
F11 "PWRDN" I L 6200 2350 50 
$EndSheet
$Comp
L Device:C C5
U 1 1 5CB71B22
P 5600 1550
F 0 "C5" V 5450 1550 50  0000 C CNN
F 1 "1n" V 5750 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5638 1400 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1550 6200 1550
$Comp
L Device:C C3
U 1 1 5CB73406
P 3400 1550
F 0 "C3" V 3250 1550 50  0000 C CNN
F 1 "1n" V 3550 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3438 1400 50  0001 C CNN
F 3 "~" H 3400 1550 50  0001 C CNN
	1    3400 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1550 4200 1550
Wire Wire Line
	2550 1550 3250 1550
$Comp
L Device:C C2
U 1 1 5CB9CDFB
P 2950 1800
F 0 "C2" V 2800 1800 50  0000 C CNN
F 1 "1n" V 3100 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2988 1650 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
	1    2950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1800 3400 1800
$Comp
L Device:R R2
U 1 1 5CB9DBF0
P 3400 2050
F 0 "R2" H 3470 2096 50  0000 L CNN
F 1 "49R9" H 3470 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3330 2050 50  0001 C CNN
F 3 "~" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2200 3400 2250
$Comp
L power:GND #PWR06
U 1 1 5CB9E377
P 3400 2250
F 0 "#PWR06" H 3400 2000 50  0001 C CNN
F 1 "GND" H 3405 2077 50  0000 C CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
Text Label 4150 2050 2    50   ~ 0
Filter_CTRL2
Text Label 4150 1950 2    50   ~ 0
Filter_CTRL1
Wire Wire Line
	4150 1950 4200 1950
Wire Wire Line
	4150 2050 4200 2050
Text Label 1500 1850 2    50   ~ 0
MAX2871_MOSI
Text Label 1500 1950 2    50   ~ 0
MAX2871_MISO
Text Label 1500 2050 2    50   ~ 0
MAX2871_CLK
Wire Wire Line
	1500 1850 1550 1850
Text Label 1500 2150 2    50   ~ 0
MAX2871_LE
Wire Wire Line
	1500 2350 1550 2350
Text Label 1500 2350 2    50   ~ 0
MAX2871_CHIP_EN
Wire Wire Line
	1500 2450 1550 2450
Text Label 1500 2450 2    50   ~ 0
MAX2871_RFOUT_EN
Wire Wire Line
	6200 2050 6150 2050
Wire Wire Line
	6150 2150 6200 2150
Wire Wire Line
	6150 2250 6200 2250
Text Label 6150 2050 2    50   ~ 0
ATTEN_DATA
Text Label 6150 2150 2    50   ~ 0
ATTEN_CLK
Text Label 6150 2250 2    50   ~ 0
ATTEN_LE
Wire Wire Line
	3400 1800 3400 1900
Wire Wire Line
	2550 2400 2700 2400
Text Label 2750 2400 0    50   ~ 0
MAX2871_LD
Wire Wire Line
	2550 1800 2800 1800
$Comp
L Device:C C6
U 1 1 5CC2CB42
P 7500 1550
F 0 "C6" V 7350 1550 50  0000 C CNN
F 1 "1n" V 7650 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7538 1400 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1550 7100 1550
Wire Wire Line
	7650 1550 7950 1550
$Comp
L Connector:USB_B_Micro J1
U 1 1 5CC34B29
P 850 4700
F 0 "J1" H 700 5150 50  0000 C CNN
F 1 "USB_B_Micro" H 800 5050 50  0000 C CNN
F 2 "VNA_Footprints:MicroUSB_Aliexpress" H 1000 4650 50  0001 C CNN
F 3 "~" H 1000 4650 50  0001 C CNN
	1    850  4700
	1    0    0    -1  
$EndComp
NoConn ~ 1150 4900
Wire Wire Line
	750  5100 750  5150
Wire Wire Line
	750  5150 800  5150
Wire Wire Line
	850  5150 850  5100
Wire Wire Line
	800  5150 800  5200
Connection ~ 800  5150
Wire Wire Line
	800  5150 850  5150
$Comp
L power:GND #PWR01
U 1 1 5CC38869
P 800 5200
F 0 "#PWR01" H 800 4950 50  0001 C CNN
F 1 "GND" H 805 5027 50  0000 C CNN
F 2 "" H 800 5200 50  0001 C CNN
F 3 "" H 800 5200 50  0001 C CNN
	1    800  5200
	1    0    0    -1  
$EndComp
Text Label 1200 4700 0    50   ~ 0
Dp
Text Label 1200 4800 0    50   ~ 0
Dn
Text Notes 950  3700 0    100  ~ 0
Power In / Data
$Sheet
S 7950 1400 1100 650 
U 5CC4615D
F0 "Directional Couplers" 50
F1 "couplers.sch" 50
F2 "Forward_CPL" O R 9050 1950 50 
F3 "Reverse_CPL" O R 9050 1800 50 
F4 "RF_IN" I L 7950 1550 50 
F5 "RF_OUT" O R 9050 1550 50 
$EndSheet
$Sheet
S 4200 1400 950  750 
U 5CAA0C0D
F0 "Filter Bank" 50
F1 "filterBank.sch" 50
F2 "RF_IN" I L 4200 1550 50 
F3 "RF_OUT" O R 5150 1550 50 
F4 "CTRL1" I L 4200 1950 50 
F5 "CTRL2" I L 4200 2050 50 
F6 "3V3A" I L 4200 1800 50 
F7 "3V3" I L 4200 1700 50 
$EndSheet
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5CD85A99
P 10000 1550
F 0 "J5" H 10100 1525 50  0000 L CNN
F 1 "SMA" H 9850 1700 50  0000 L CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 10000 1550 50  0001 C CNN
F 3 " ~" H 10000 1550 50  0001 C CNN
	1    10000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1750 10000 1800
$Comp
L power:GND #PWR011
U 1 1 5CD86CAC
P 10000 1800
F 0 "#PWR011" H 10000 1550 50  0001 C CNN
F 1 "GND" H 10005 1627 50  0000 C CNN
F 2 "" H 10000 1800 50  0001 C CNN
F 3 "" H 10000 1800 50  0001 C CNN
	1    10000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2550 6150 2550
Wire Wire Line
	6200 2450 6150 2450
Text Label 9200 1800 0    50   ~ 0
RF_REV_CPL
$Comp
L Device:R R4
U 1 1 5CD8B53A
P 9300 2250
F 0 "R4" H 9370 2296 50  0000 L CNN
F 1 "16R6" H 9370 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9230 2250 50  0001 C CNN
F 3 "~" H 9300 2250 50  0001 C CNN
	1    9300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CD8B8FA
P 9100 2500
F 0 "R3" V 9000 2500 50  0000 C CNN
F 1 "16R6" V 9200 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9030 2500 50  0001 C CNN
F 3 "~" H 9100 2500 50  0001 C CNN
	1    9100 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5CD8C38B
P 9500 2500
F 0 "R5" V 9400 2500 50  0000 C CNN
F 1 "16R6" V 9600 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9430 2500 50  0001 C CNN
F 3 "~" H 9500 2500 50  0001 C CNN
	1    9500 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 2400 9300 2500
Wire Wire Line
	9300 2500 9350 2500
Wire Wire Line
	9300 2500 9250 2500
Connection ~ 9300 2500
Text Label 9700 2500 0    50   ~ 0
RF_FWD_CPL
Wire Wire Line
	9700 2500 9650 2500
Wire Wire Line
	8900 2500 8950 2500
Text Label 8900 2500 2    50   ~ 0
AD8319_RF
Text Label 6150 2450 2    50   ~ 0
AD8319_RF
Text Label 6150 2550 2    50   ~ 0
RF_PWR_LEVEL
Wire Wire Line
	9300 1950 9300 2100
Text Notes 8950 2750 0    50   ~ 0
6dB Resistive Split
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5CDCDD5F
P 10100 5450
F 0 "J4" H 10200 5425 50  0000 L CNN
F 1 "SMA" H 9950 5600 50  0000 L CNN
F 2 "VNA_Footprints:SMA_EDGE_MOUNT" H 10100 5450 50  0001 C CNN
F 3 " ~" H 10100 5450 50  0001 C CNN
	1    10100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5650 10100 5700
$Comp
L power:GND #PWR010
U 1 1 5CDCDD66
P 10100 5700
F 0 "#PWR010" H 10100 5450 50  0001 C CNN
F 1 "GND" H 10105 5527 50  0000 C CNN
F 2 "" H 10100 5700 50  0001 C CNN
F 3 "" H 10100 5700 50  0001 C CNN
	1    10100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5450 9850 5450
Text Label 9850 5450 2    50   ~ 0
RF_THROUGH
Text Notes 10600 4000 2    118  ~ 0
D\nU\nT
Wire Notes Line
	10450 3450 10450 4050
Wire Notes Line
	10450 4050 10650 4050
Wire Notes Line
	10650 4050 10650 3450
Wire Notes Line
	10550 1550 10350 1550
Wire Notes Line
	10450 3450 10650 3450
Text Label 8700 5800 0    50   ~ 0
AD8302_VREF
Text Label 8700 5700 0    50   ~ 0
AD8302_VPHASE
Text Label 8700 5600 0    50   ~ 0
AD8302_VMAG
Wire Wire Line
	8650 5800 8700 5800
Wire Wire Line
	8650 5700 8700 5700
Wire Wire Line
	8650 5600 8700 5600
Text Label 7450 5950 2    50   ~ 0
RF_THROUGH
Text Label 7450 6100 2    50   ~ 0
INPUT_SW_1
Wire Wire Line
	7450 6200 7500 6200
Wire Wire Line
	7500 6100 7450 6100
Wire Wire Line
	7500 5950 7450 5950
Wire Wire Line
	7450 5750 7500 5750
Wire Wire Line
	7450 5850 7500 5850
Text Label 7450 5850 2    50   ~ 0
RF_REV_CPL
Text Label 7450 5750 2    50   ~ 0
RF_FWD_CPL
$Sheet
S 7500 5450 1150 850 
U 5CD99815
F0 "Gain Phase Detection" 50
F1 "gainPhaseDetect.sch" 50
F2 "RF_FORWARD" I L 7500 5750 50 
F3 "RF_REVERSE" I L 7500 5850 50 
F4 "RF_THROUGH" I L 7500 5950 50 
F5 "CTRL_1" I L 7500 6100 50 
F6 "CTRL_2" I L 7500 6200 50 
F7 "VMAG" O R 8650 5600 50 
F8 "VREF" O R 8650 5800 50 
F9 "VPHS" O R 8650 5700 50 
F10 "3V3A" I L 7500 5550 50 
$EndSheet
Wire Wire Line
	1550 2050 1500 2050
Wire Wire Line
	1550 2150 1500 2150
Wire Wire Line
	1500 1950 1550 1950
Wire Wire Line
	6200 1750 6150 1750
Wire Wire Line
	6200 1850 6150 1850
Wire Wire Line
	7500 5550 7450 5550
Text Notes 10350 1550 0    100  ~ 0
Port 1
Text Notes 10350 5600 0    100  ~ 0
Port 2
Wire Wire Line
	3950 3750 4000 3750
Wire Wire Line
	3950 3850 4000 3850
Wire Wire Line
	3950 3950 4000 3950
Wire Wire Line
	3950 4050 4000 4050
Text Label 4000 3750 0    50   ~ 0
5V0
Text Label 4000 3850 0    50   ~ 0
3V3
Text Label 4000 3950 0    50   ~ 0
3V3A
Text Label 4000 4050 0    50   ~ 0
1V8
Text Label 5250 3350 2    50   ~ 0
3V3A
Text Label 1500 1450 2    50   ~ 0
3V3
Text Label 1500 1550 2    50   ~ 0
3V3A
Text Label 1500 1650 2    50   ~ 0
1V8
Wire Wire Line
	1500 1450 1550 1450
Wire Wire Line
	1500 1550 1550 1550
Wire Wire Line
	1500 1650 1550 1650
Text Label 4150 1700 2    50   ~ 0
3V3
Text Label 4150 1800 2    50   ~ 0
3V3A
Wire Wire Line
	4150 1700 4200 1700
Wire Wire Line
	4150 1800 4200 1800
Text Label 6150 1750 2    50   ~ 0
5V0
Text Label 6150 1850 2    50   ~ 0
3V3A
$Comp
L Connector:USB_A J2
U 1 1 5D01C6AE
P 850 6800
F 0 "J2" H 700 7250 50  0000 C CNN
F 1 "USB_A" H 750 7150 50  0000 C CNN
F 2 "VNA_Footprints:676432911_usbA" H 1000 6750 50  0001 C CNN
F 3 " ~" H 1000 6750 50  0001 C CNN
	1    850  6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7200 750  7250
Wire Wire Line
	750  7250 800  7250
Wire Wire Line
	850  7250 850  7200
Wire Wire Line
	800  7250 800  7300
$Comp
L power:GND #PWR05
U 1 1 5D023937
P 800 7300
F 0 "#PWR05" H 800 7050 50  0001 C CNN
F 1 "GND" H 805 7127 50  0000 C CNN
F 2 "" H 800 7300 50  0001 C CNN
F 3 "" H 800 7300 50  0001 C CNN
	1    800  7300
	1    0    0    -1  
$EndComp
Text Label 2600 6800 0    50   ~ 0
SDA
Text Label 2600 7000 0    50   ~ 0
SCL
Connection ~ 800  7250
Wire Wire Line
	800  7250 850  7250
Text Notes 850  5800 0    100  ~ 0
E-Cal / Power Out
Wire Wire Line
	3400 3750 3350 3750
Text Label 2350 3900 0    50   ~ 0
VBUS
Text Label 3350 3750 2    50   ~ 0
VBUS
Text Notes 1250 1350 0    50   ~ 0
180mA
Text Notes 5700 1750 0    50   ~ 0
100mA
Text Notes 5700 1850 0    50   ~ 0
10mA
Text Notes 3100 1350 0    50   ~ 0
-4 to +5 dBm
Text Notes 5300 1350 0    50   ~ 0
-7 to +3 dBm
Text Notes 4550 1900 0    50   ~ 0
Insertion Loss:\n-2 to -3 dB
Wire Wire Line
	5150 1550 5450 1550
Text Notes 6500 2050 0    50   ~ 0
Gain:\n-23 to 10 dB
Text Notes 7200 1300 0    50   ~ 0
-30 to +13 dBm
Text Notes 8000 1750 0    50   ~ 0
Insertion Loss: \n-1.5  to -3 dB
Wire Wire Line
	9050 1550 9800 1550
Wire Wire Line
	9050 1800 9200 1800
Wire Wire Line
	9050 1950 9300 1950
Text Notes 9100 1350 0    50   ~ 0
-32 to +11 dBm
Text Notes 3400 4550 0    50   ~ 0
5V: 100mA\n3V3A: 200mA\n3V3: 100mA
Wire Wire Line
	6200 2350 6150 2350
Text Label 6150 2350 2    50   ~ 0
PA_PWRDN
$Comp
L Power_Protection:TPD2S017 U1
U 1 1 5CAC48B1
P 2150 4800
F 0 "U1" H 2300 5250 50  0000 C CNN
F 1 "TPD2S017" H 2400 5150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1400 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 2150 4800 50  0001 C CNN
	1    2150 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5CAC9524
P 1600 4200
F 0 "C1" V 1750 4200 50  0000 C CNN
F 1 "100n" V 1450 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1638 4050 50  0001 C CNN
F 3 "~" H 1600 4200 50  0001 C CNN
	1    1600 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CAC9A1D
P 2150 5350
F 0 "#PWR03" H 2150 5100 50  0001 C CNN
F 1 "GND" H 2155 5177 50  0000 C CNN
F 2 "" H 2150 5350 50  0001 C CNN
F 3 "" H 2150 5350 50  0001 C CNN
	1    2150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5300 2150 5350
$Comp
L power:GND #PWR02
U 1 1 5CAD5B30
P 1800 4250
F 0 "#PWR02" H 1800 4000 50  0001 C CNN
F 1 "GND" H 1805 4077 50  0000 C CNN
F 2 "" H 1800 4250 50  0001 C CNN
F 3 "" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4500 1350 4200
Wire Wire Line
	1150 4500 1350 4500
Wire Wire Line
	1150 4700 1650 4700
Wire Wire Line
	1150 4800 1550 4800
Wire Wire Line
	2650 4700 2700 4700
Wire Wire Line
	2650 4900 2700 4900
Text Label 2700 4900 0    50   ~ 0
USB_D-
Text Label 2700 4700 0    50   ~ 0
USB_D+
Wire Wire Line
	1450 4200 1350 4200
Connection ~ 1350 4200
Wire Wire Line
	1750 4200 1800 4200
Wire Wire Line
	1800 4200 1800 4250
Wire Wire Line
	1650 4900 1550 4900
Wire Wire Line
	1550 4900 1550 4800
$Comp
L Power_Protection:TPD2S017 U2
U 1 1 5CB1C768
P 2050 6900
F 0 "U2" H 2200 7350 50  0000 C CNN
F 1 "TPD2S017" H 2300 7250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1300 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 2050 6900 50  0001 C CNN
	1    2050 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5CB1C76E
P 1500 6300
F 0 "C4" V 1650 6300 50  0000 C CNN
F 1 "100n" V 1350 6300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 6150 50  0001 C CNN
F 3 "~" H 1500 6300 50  0001 C CNN
	1    1500 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CB1C774
P 2050 7450
F 0 "#PWR08" H 2050 7200 50  0001 C CNN
F 1 "GND" H 2055 7277 50  0000 C CNN
F 2 "" H 2050 7450 50  0001 C CNN
F 3 "" H 2050 7450 50  0001 C CNN
	1    2050 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7400 2050 7450
$Comp
L power:GND #PWR07
U 1 1 5CB1C77B
P 1700 6350
F 0 "#PWR07" H 1700 6100 50  0001 C CNN
F 1 "GND" H 1705 6177 50  0000 C CNN
F 2 "" H 1700 6350 50  0001 C CNN
F 3 "" H 1700 6350 50  0001 C CNN
	1    1700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5950 2050 6400
Wire Wire Line
	2550 6800 2600 6800
Wire Wire Line
	2550 7000 2600 7000
Wire Wire Line
	2050 5950 2250 5950
Wire Wire Line
	1350 6300 1250 6300
Wire Wire Line
	1650 6300 1700 6300
Wire Wire Line
	1700 6300 1700 6350
Wire Wire Line
	1250 6300 1250 6600
Wire Wire Line
	1150 6600 1250 6600
Connection ~ 1250 6300
Text Label 2250 5950 0    50   ~ 0
5V0
Wire Wire Line
	1150 6800 1550 6800
Wire Wire Line
	1350 6900 1350 7000
Wire Wire Line
	1350 7000 1550 7000
Wire Wire Line
	1150 6900 1350 6900
Wire Wire Line
	1600 3900 1350 3900
Wire Wire Line
	1350 3900 1350 4200
Wire Wire Line
	1900 3900 2150 3900
Wire Wire Line
	2150 3900 2150 4300
Connection ~ 2150 3900
Text Label 6850 3250 0    50   ~ 0
SDA
Text Label 6850 3350 0    50   ~ 0
SCL
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J3
U 1 1 5CC42B8D
P 3400 6750
F 0 "J3" H 3050 7300 50  0000 R CNN
F 1 "Conn_ARM_SWD" H 4000 7300 50  0000 R CNN
F 2 "VNA_Footprints:SAMTEC_FTSH-105-01-L-DV-R-TR" H 3400 6750 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 3050 5500 50  0001 C CNN
	1    3400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7350 3300 7400
Wire Wire Line
	3300 7400 3350 7400
Wire Wire Line
	3400 7400 3400 7350
$Comp
L power:GND #PWR09
U 1 1 5CC5A268
P 3350 7450
F 0 "#PWR09" H 3350 7200 50  0001 C CNN
F 1 "GND" H 3355 7277 50  0000 C CNN
F 2 "" H 3350 7450 50  0001 C CNN
F 3 "" H 3350 7450 50  0001 C CNN
	1    3350 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7400 3350 7450
Connection ~ 3350 7400
Wire Wire Line
	3350 7400 3400 7400
Wire Wire Line
	3400 6150 3400 6100
Text Label 3400 6100 1    50   ~ 0
3V3
Text Label 7450 5550 2    50   ~ 0
3V3A
Text Notes 2950 5900 0    100  ~ 0
SWD Header
Wire Wire Line
	3900 6450 3950 6450
Wire Wire Line
	3900 6650 3950 6650
Wire Wire Line
	3900 6750 3950 6750
NoConn ~ 3900 6950
Text Label 3950 6450 0    50   ~ 0
SWD_nRST
Text Label 3950 6650 0    50   ~ 0
SWD_CLK
Text Label 3950 6750 0    50   ~ 0
SWD_IO
Text Label 5250 4750 2    50   ~ 0
SWD_nRST
Text Label 5250 4650 2    50   ~ 0
SWD_CLK
Text Label 5250 4550 2    50   ~ 0
SWD_IO
Text Label 5250 3600 2    50   ~ 0
USB_D-
Text Label 5250 3500 2    50   ~ 0
USB_D+
$Sheet
S 5300 3150 1500 2050
U 5CAA2138
F0 "Microcontroller" 50
F1 "microcontroller.sch" 50
F2 "3V3" I L 5300 3250 50 
F3 "nRST" I L 5300 4750 50 
F4 "SDA" B R 6800 3250 50 
F5 "SCL" B R 6800 3350 50 
F6 "USB_DP" I L 5300 3500 50 
F7 "USB_DM" I L 5300 3600 50 
F8 "USART1_RX" I L 5300 3750 50 
F9 "USART1_TX" I L 5300 3850 50 
F10 "MAX2871_SPI_MOSI" O R 6800 3600 50 
F11 "MAX2871_SPI_MISO" I R 6800 3700 50 
F12 "MAX2871_SPI_SCK" O R 6800 3500 50 
F13 "3V3A" I L 5300 3350 50 
F14 "SDADC_AIN6P" I L 5300 4200 50 
F15 "SDADC_AIN5P" I L 5300 4100 50 
F16 "SDADC_AIN4P" I L 5300 4000 50 
F17 "SDADC_AIN8P" I L 5300 4400 50 
F18 "SDADC_AIN7P" I L 5300 4300 50 
F19 "MAX2871_CE" O R 6800 3900 50 
F20 "MAX2871_RF_EN" O R 6800 4000 50 
F21 "MAX2871_LD" I R 6800 4100 50 
F22 "MAX2871_LE" O R 6800 3800 50 
F23 "INPUT_SW_1" O R 6800 5000 50 
F24 "INPUT_SW_2" O R 6800 5100 50 
F25 "ATTEN_DATA" O R 6800 4500 50 
F26 "ATTEN_CLK" O R 6800 4600 50 
F27 "ATTEN_LE" O R 6800 4700 50 
F28 "PA_PWRDN" O R 6800 4850 50 
F29 "FILTER_SW_1" O R 6800 4250 50 
F30 "FILTER_SW_2" O R 6800 4350 50 
F31 "SWD_IO" I L 5300 4550 50 
F32 "SWD_CLK" I L 5300 4650 50 
$EndSheet
NoConn ~ 3900 6850
Wire Wire Line
	5250 3350 5300 3350
Wire Wire Line
	5300 3250 5250 3250
Wire Wire Line
	5300 3500 5250 3500
Wire Wire Line
	5300 3600 5250 3600
Wire Wire Line
	5300 3750 5250 3750
Wire Wire Line
	5300 3850 5250 3850
Wire Wire Line
	5300 4000 5250 4000
Wire Wire Line
	5250 4100 5300 4100
Wire Wire Line
	5250 4200 5300 4200
Wire Wire Line
	5250 4300 5300 4300
Wire Wire Line
	5250 4400 5300 4400
Wire Wire Line
	5300 4550 5250 4550
Wire Wire Line
	5300 4650 5250 4650
Wire Wire Line
	5300 4750 5250 4750
Text Label 5250 3250 2    50   ~ 0
3V3
Wire Wire Line
	6800 3250 6850 3250
Wire Wire Line
	6800 3350 6850 3350
Text Label 6850 3600 0    50   ~ 0
MAX2871_MOSI
Text Label 6850 3700 0    50   ~ 0
MAX2871_MISO
Text Label 6850 3500 0    50   ~ 0
MAX2871_CLK
Text Label 6850 3800 0    50   ~ 0
MAX2871_LE
Wire Wire Line
	6800 3500 6850 3500
Wire Wire Line
	6800 3600 6850 3600
Wire Wire Line
	6800 3700 6850 3700
Wire Wire Line
	6800 3800 6850 3800
Wire Wire Line
	6800 3900 6850 3900
Wire Wire Line
	6800 4000 6850 4000
Wire Wire Line
	6800 4100 6850 4100
Wire Wire Line
	6800 4250 6850 4250
Wire Wire Line
	6800 4350 6850 4350
Wire Wire Line
	6800 4500 6850 4500
Wire Wire Line
	6800 4600 6850 4600
Wire Wire Line
	6800 4700 6850 4700
Wire Wire Line
	6800 4850 6850 4850
Wire Wire Line
	6800 5000 6850 5000
Wire Wire Line
	6800 5100 6850 5100
Text Label 6850 3900 0    50   ~ 0
MAX2871_CHIP_EN
Text Label 6850 4000 0    50   ~ 0
MAX2871_RFOUT_EN
Text Label 6850 4100 0    50   ~ 0
MAX2871_LD
Wire Wire Line
	2700 2400 2700 2450
Connection ~ 2700 2400
Wire Wire Line
	2700 2400 2750 2400
Wire Wire Line
	2700 2800 2700 2750
Wire Wire Line
	2700 3100 2700 3150
$Comp
L Device:LED D?
U 1 1 5CBF3B00
P 2700 2950
AR Path="/5CA96610/5CBF3B00" Ref="D?"  Part="1" 
AR Path="/5CBF3B00" Ref="D1"  Part="1" 
F 0 "D1" V 2739 2833 50  0000 R CNN
F 1 "LED" V 2648 2833 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2700 2950 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
	1    2700 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5CBF3B06
P 2700 2600
AR Path="/5CA96610/5CBF3B06" Ref="R?"  Part="1" 
AR Path="/5CBF3B06" Ref="R1"  Part="1" 
F 0 "R1" H 2770 2646 50  0000 L CNN
F 1 "470R" H 2770 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2630 2600 50  0001 C CNN
F 3 "~" H 2700 2600 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CBF3B0C
P 2700 3150
AR Path="/5CA96610/5CBF3B0C" Ref="#PWR?"  Part="1" 
AR Path="/5CBF3B0C" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2700 2900 50  0001 C CNN
F 1 "GND" H 2705 2977 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	1    0    0    -1  
$EndComp
Text Label 6850 4350 0    50   ~ 0
Filter_CTRL2
Text Label 6850 4250 0    50   ~ 0
Filter_CTRL1
Text Label 6850 4500 0    50   ~ 0
ATTEN_DATA
Text Label 6850 4600 0    50   ~ 0
ATTEN_CLK
Text Label 6850 4700 0    50   ~ 0
ATTEN_LE
Text Label 5250 4000 2    50   ~ 0
RF_PWR_LEVEL
Text Label 6850 4850 0    50   ~ 0
PA_PWRDN
Text Label 5250 4400 2    50   ~ 0
AD8302_VREF
Text Label 5250 4200 2    50   ~ 0
AD8302_VPHASE
Text Label 5250 4300 2    50   ~ 0
AD8302_VMAG
NoConn ~ 5250 4100
$Comp
L VNA_Symbols:Ferrite_Bead_PWR FB1
U 1 1 5CC56F48
P 1750 3900
F 0 "FB1" V 1700 3750 50  0000 C CNN
F 1 "Bead" V 1800 4050 50  0000 C CNN
F 2 "VNA_Footprints:BEADC1608X95N" V 1680 3900 50  0001 C CNN
F 3 "~" H 1750 3900 50  0001 C CNN
	1    1750 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3900 2350 3900
Wire Notes Line
	10550 1550 10550 3450
Wire Notes Line
	10550 4050 10550 5450
Wire Notes Line
	10550 5450 10350 5450
Text Notes 5200 950  0    157  ~ 0
Josh's VNA
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CB19F93
P 5600 6850
F 0 "H1" H 5700 6899 50  0000 L CNN
F 1 "M3_Via_Pad" H 5700 6808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5600 6850 50  0001 C CNN
F 3 "~" H 5600 6850 50  0001 C CNN
	1    5600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6950 5600 7000
$Comp
L power:GND #PWR0115
U 1 1 5CB2222E
P 5600 7000
F 0 "#PWR0115" H 5600 6750 50  0001 C CNN
F 1 "GND" H 5605 6827 50  0000 C CNN
F 2 "" H 5600 7000 50  0001 C CNN
F 3 "" H 5600 7000 50  0001 C CNN
	1    5600 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CB22BCF
P 5600 7350
F 0 "H2" H 5700 7399 50  0000 L CNN
F 1 "M3_Via_Pad" H 5700 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5600 7350 50  0001 C CNN
F 3 "~" H 5600 7350 50  0001 C CNN
	1    5600 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7450 5600 7500
$Comp
L power:GND #PWR0116
U 1 1 5CB22BD6
P 5600 7500
F 0 "#PWR0116" H 5600 7250 50  0001 C CNN
F 1 "GND" H 5605 7327 50  0000 C CNN
F 2 "" H 5600 7500 50  0001 C CNN
F 3 "" H 5600 7500 50  0001 C CNN
	1    5600 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CB2AF1F
P 6200 6850
F 0 "H3" H 6300 6899 50  0000 L CNN
F 1 "M3_Via_Pad" H 6300 6808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6200 6850 50  0001 C CNN
F 3 "~" H 6200 6850 50  0001 C CNN
	1    6200 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6950 6200 7000
$Comp
L power:GND #PWR0117
U 1 1 5CB2AF26
P 6200 7000
F 0 "#PWR0117" H 6200 6750 50  0001 C CNN
F 1 "GND" H 6205 6827 50  0000 C CNN
F 2 "" H 6200 7000 50  0001 C CNN
F 3 "" H 6200 7000 50  0001 C CNN
	1    6200 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CB32C23
P 6200 7350
F 0 "H4" H 6300 7399 50  0000 L CNN
F 1 "M3_Via_Pad" H 6300 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 6200 7350 50  0001 C CNN
F 3 "~" H 6200 7350 50  0001 C CNN
	1    6200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7450 6200 7500
$Comp
L power:GND #PWR0118
U 1 1 5CB32C2A
P 6200 7500
F 0 "#PWR0118" H 6200 7250 50  0001 C CNN
F 1 "GND" H 6205 7327 50  0000 C CNN
F 2 "" H 6200 7500 50  0001 C CNN
F 3 "" H 6200 7500 50  0001 C CNN
	1    6200 7500
	1    0    0    -1  
$EndComp
Text Notes 5500 6650 0    100  ~ 0
Mounting Holes
$Comp
L VNA_Symbols:Ferrite_Bead_PWR FB6
U 1 1 5CB8C1DA
P 1650 5950
F 0 "FB6" V 1700 6050 50  0000 C CNN
F 1 "Bead" V 1600 5800 50  0000 C CNN
F 2 "VNA_Footprints:BEADC1608X95N" V 1580 5950 50  0001 C CNN
F 3 "~" H 1650 5950 50  0001 C CNN
	1    1650 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 5950 2050 5950
Connection ~ 2050 5950
Wire Wire Line
	1500 5950 1250 5950
Wire Wire Line
	1250 5950 1250 6300
Text Label 7450 6200 2    50   ~ 0
INPUT_SW_2
Text Label 6850 5000 0    50   ~ 0
INPUT_SW_1
Text Label 6850 5100 0    50   ~ 0
INPUT_SW_1
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5CAD1290
P 4550 6300
F 0 "J6" H 4658 6581 50  0000 C CNN
F 1 "UART" H 4600 6500 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM04B-GHS-TBT_1x04-1MP_P1.25mm_Vertical" H 4550 6300 50  0001 C CNN
F 3 "~" H 4550 6300 50  0001 C CNN
	1    4550 6300
	1    0    0    -1  
$EndComp
Text Notes 4450 5900 0    100  ~ 0
UART Header
Text Label 5250 3750 2    50   ~ 0
UART_TX
Text Label 5250 3850 2    50   ~ 0
UART_RX
Text Label 4800 6300 0    50   ~ 0
UART_TX
Text Label 4800 6400 0    50   ~ 0
UART_RX
Wire Wire Line
	4800 6400 4750 6400
Wire Wire Line
	4800 6300 4750 6300
Text Label 4800 6200 0    50   ~ 0
3V3
Wire Wire Line
	4800 6200 4750 6200
Wire Wire Line
	4750 6500 4850 6500
Wire Wire Line
	4850 6500 4850 6550
$Comp
L power:GND #PWR0121
U 1 1 5CB24780
P 4850 6550
F 0 "#PWR0121" H 4850 6300 50  0001 C CNN
F 1 "GND" H 4855 6377 50  0000 C CNN
F 2 "" H 4850 6550 50  0001 C CNN
F 3 "" H 4850 6550 50  0001 C CNN
	1    4850 6550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
