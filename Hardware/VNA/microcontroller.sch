EESchema Schematic File Version 4
LIBS:VNA-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "Microcontroller"
Date "2019-04-06"
Rev "0"
Comp "Josh Johnson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_Flash:AT25SF081-SSHD-X U17
U 1 1 5CB85D8C
P 6000 2500
F 0 "U17" H 5550 2900 50  0000 L CNN
F 1 "AT25SF081-SSHD-X" H 6050 2900 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6000 1900 50  0001 C CNN
F 3 "https://www.adestotech.com/wp-content/uploads/DS-AT25SF081_045.pdf" H 6000 2500 50  0001 C CNN
	1    6000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R50
U 1 1 5CBA8728
P 650 1700
F 0 "R50" H 720 1746 50  0000 L CNN
F 1 "10K" H 720 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 580 1700 50  0001 C CNN
F 3 "~" H 650 1700 50  0001 C CNN
	1    650  1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R49
U 1 1 5CBA8B4C
P 650 1300
F 0 "R49" H 720 1346 50  0000 L CNN
F 1 "DNP" H 720 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 580 1300 50  0001 C CNN
F 3 "~" H 650 1300 50  0001 C CNN
	1    650  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1450 650  1500
Text HLabel 650  1100 1    50   Input ~ 10
3V3
Wire Wire Line
	650  1100 650  1150
Wire Wire Line
	650  1850 650  1900
$Comp
L power:GND #PWR0100
U 1 1 5CBAAB03
P 650 1900
F 0 "#PWR0100" H 650 1650 50  0001 C CNN
F 1 "GND" H 655 1727 50  0000 C CNN
F 2 "" H 650 1900 50  0001 C CNN
F 3 "" H 650 1900 50  0001 C CNN
	1    650  1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1500 800  1500
Connection ~ 650  1500
Wire Wire Line
	650  1500 650  1550
Text Label 800  1500 0    50   ~ 10
BOOT0
Wire Wire Line
	650  7450 650  7500
Wire Wire Line
	650  7500 1000 7500
Wire Wire Line
	1000 7500 1000 7450
Wire Wire Line
	1000 7150 1000 7100
Wire Wire Line
	1000 7100 650  7100
Wire Wire Line
	650  7100 650  7150
$Comp
L power:VDDA #PWR096
U 1 1 5CBB5BAF
P 650 7050
F 0 "#PWR096" H 650 6900 50  0001 C CNN
F 1 "VDDA" H 650 7200 50  0000 C CNN
F 2 "" H 650 7050 50  0001 C CNN
F 3 "" H 650 7050 50  0001 C CNN
	1    650  7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7050 650  7100
Connection ~ 650  7100
$Comp
L power:GND #PWR097
U 1 1 5CBB7126
P 650 7550
F 0 "#PWR097" H 650 7300 50  0001 C CNN
F 1 "GND" H 655 7377 50  0000 C CNN
F 2 "" H 650 7550 50  0001 C CNN
F 3 "" H 650 7550 50  0001 C CNN
	1    650  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7500 650  7550
Connection ~ 650  7500
$Comp
L Device:C C59
U 1 1 5CBB3017
P 1000 7300
F 0 "C59" H 1115 7346 50  0000 L CNN
F 1 "100n" H 1115 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 7150 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C58
U 1 1 5CBB283F
P 650 7300
F 0 "C58" H 765 7346 50  0000 L CNN
F 1 "1u" H 765 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 688 7150 50  0001 C CNN
F 3 "~" H 650 7300 50  0001 C CNN
	1    650  7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7450 4050 7500
Wire Wire Line
	4050 7500 4400 7500
Wire Wire Line
	4400 7500 4400 7450
Wire Wire Line
	4400 7150 4400 7100
Wire Wire Line
	4400 7100 4050 7100
Wire Wire Line
	4050 7100 4050 7150
Wire Wire Line
	4050 7050 4050 7100
Connection ~ 4050 7100
$Comp
L power:GND #PWR0111
U 1 1 5CBBE812
P 4050 7550
F 0 "#PWR0111" H 4050 7300 50  0001 C CNN
F 1 "GND" H 4055 7377 50  0000 C CNN
F 2 "" H 4050 7550 50  0001 C CNN
F 3 "" H 4050 7550 50  0001 C CNN
	1    4050 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7500 4050 7550
Connection ~ 4050 7500
$Comp
L Device:C C70
U 1 1 5CBBE81A
P 4400 7300
F 0 "C70" H 4515 7346 50  0000 L CNN
F 1 "100n" H 4515 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 7150 50  0001 C CNN
F 3 "~" H 4400 7300 50  0001 C CNN
	1    4400 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C69
U 1 1 5CBBE820
P 4050 7300
F 0 "C69" H 4165 7346 50  0000 L CNN
F 1 "1u" H 4165 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 7150 50  0001 C CNN
F 3 "~" H 4050 7300 50  0001 C CNN
	1    4050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7450 2250 7500
Wire Wire Line
	2250 7500 2700 7500
Wire Wire Line
	2700 7500 2700 7450
Wire Wire Line
	2700 7150 2700 7100
Wire Wire Line
	2700 7100 2250 7100
Wire Wire Line
	2250 7100 2250 7150
Wire Wire Line
	2250 7050 2250 7100
Connection ~ 2250 7100
$Comp
L power:GND #PWR0105
U 1 1 5CBC078A
P 2250 7550
F 0 "#PWR0105" H 2250 7300 50  0001 C CNN
F 1 "GND" H 2255 7377 50  0000 C CNN
F 2 "" H 2250 7550 50  0001 C CNN
F 3 "" H 2250 7550 50  0001 C CNN
	1    2250 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7500 2250 7550
Connection ~ 2250 7500
$Comp
L Device:C C66
U 1 1 5CBC0792
P 2700 7300
F 0 "C66" H 2815 7346 50  0000 L CNN
F 1 "100n" H 2815 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2738 7150 50  0001 C CNN
F 3 "~" H 2700 7300 50  0001 C CNN
	1    2700 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C68
U 1 1 5CBC39BE
P 3600 7300
F 0 "C68" H 3715 7346 50  0000 L CNN
F 1 "100n" H 3715 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3638 7150 50  0001 C CNN
F 3 "~" H 3600 7300 50  0001 C CNN
	1    3600 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7500 3150 7500
Wire Wire Line
	3600 7500 3600 7450
Connection ~ 2700 7500
Wire Wire Line
	3600 7150 3600 7100
Wire Wire Line
	3600 7100 3150 7100
Connection ~ 2700 7100
Wire Wire Line
	3150 7100 3150 7150
Connection ~ 3150 7100
Wire Wire Line
	3150 7100 2700 7100
Wire Wire Line
	3150 7450 3150 7500
Connection ~ 3150 7500
Wire Wire Line
	3150 7500 3600 7500
$Comp
L power:VDD #PWR0104
U 1 1 5CBCCB21
P 4050 7050
F 0 "#PWR0104" H 4050 6900 50  0001 C CNN
F 1 "VDD" H 4050 7200 50  0000 C CNN
F 2 "" H 4050 7050 50  0001 C CNN
F 3 "" H 4050 7050 50  0001 C CNN
	1    4050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7450 1450 7500
Wire Wire Line
	1450 7500 1800 7500
Wire Wire Line
	1800 7500 1800 7450
Connection ~ 1450 7500
$Comp
L Device:C C64
U 1 1 5CBE645B
P 1800 7300
F 0 "C64" H 1915 7346 50  0000 L CNN
F 1 "100n" H 1915 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1838 7150 50  0001 C CNN
F 3 "~" H 1800 7300 50  0001 C CNN
	1    1800 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C62
U 1 1 5CBE6461
P 1450 7300
F 0 "C62" H 1565 7346 50  0000 L CNN
F 1 "1u" H 1565 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 7150 50  0001 C CNN
F 3 "~" H 1450 7300 50  0001 C CNN
	1    1450 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7500 1000 7500
Wire Wire Line
	1000 7100 1450 7100
Wire Wire Line
	1800 7100 1800 7150
Wire Wire Line
	1450 7100 1450 7150
Connection ~ 1450 7100
Wire Wire Line
	1450 7100 1800 7100
$Comp
L VNA_Symbols:VREF #PWR0110
U 1 1 5CC151AE
P 2250 7050
F 0 "#PWR0110" H 2250 6900 50  0001 C CNN
F 1 "VREF" H 2267 7223 50  0000 C CNN
F 2 "" H 2250 7050 50  0001 C CNN
F 3 "" H 2250 7050 50  0001 C CNN
	1    2250 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C72
U 1 1 5CC161DA
P 5200 7300
F 0 "C72" H 5315 7346 50  0000 L CNN
F 1 "100n" H 5315 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 7150 50  0001 C CNN
F 3 "~" H 5200 7300 50  0001 C CNN
	1    5200 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C71
U 1 1 5CC161E0
P 4850 7300
F 0 "C71" H 4965 7346 50  0000 L CNN
F 1 "1u" H 4965 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 7150 50  0001 C CNN
F 3 "~" H 4850 7300 50  0001 C CNN
	1    4850 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7100 4850 7100
Wire Wire Line
	5200 7100 5200 7150
Connection ~ 4400 7100
Wire Wire Line
	5200 7450 5200 7500
Wire Wire Line
	5200 7500 4850 7500
Connection ~ 4400 7500
Wire Wire Line
	4850 7450 4850 7500
Connection ~ 4850 7500
Wire Wire Line
	4850 7500 4400 7500
Wire Wire Line
	4850 7150 4850 7100
Connection ~ 4850 7100
Wire Wire Line
	4850 7100 5200 7100
$Comp
L Device:CP C67
U 1 1 5CC3AAEB
P 3150 7300
F 0 "C67" H 3268 7346 50  0000 L CNN
F 1 "1u " H 3268 7255 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P" H 3188 7150 50  0001 C CNN
F 3 "~" H 3150 7300 50  0001 C CNN
	1    3150 7300
	1    0    0    -1  
$EndComp
Connection ~ 1700 1400
Wire Wire Line
	1700 1400 1700 1600
Wire Wire Line
	1700 1600 1600 1600
Connection ~ 1200 1600
Wire Wire Line
	1200 1600 1200 1700
Wire Wire Line
	1200 1400 1200 1600
Wire Wire Line
	1200 1600 1300 1600
$Comp
L power:GND #PWR0102
U 1 1 5CB9C07A
P 1200 1700
F 0 "#PWR0102" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1205 1527 50  0000 C CNN
F 2 "" H 1200 1700 50  0001 C CNN
F 3 "" H 1200 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1400 1200 1400
Wire Wire Line
	1650 1400 1700 1400
$Comp
L Switch:SW_Push SW3
U 1 1 5CB9ACF7
P 1450 1400
F 0 "SW3" H 1450 1685 50  0000 C CNN
F 1 "SW_Push" H 1450 1594 50  0000 C CNN
F 2 "VNA_Footprints:6mmTactSwitch" H 1450 1600 50  0001 C CNN
F 3 "~" H 1450 1600 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
Text HLabel 2000 1400 2    50   Input ~ 10
nRST
Text HLabel 6000 1650 1    50   Input ~ 10
3V3
$Comp
L Device:C C73
U 1 1 5CCF18F3
P 6200 1750
F 0 "C73" V 5948 1750 50  0000 C CNN
F 1 "100n" V 6039 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 1600 50  0001 C CNN
F 3 "~" H 6200 1750 50  0001 C CNN
	1    6200 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 1650 6000 1750
Wire Wire Line
	6000 1750 6050 1750
Connection ~ 6000 1750
Wire Wire Line
	6000 1750 6000 2000
Wire Wire Line
	6350 1750 6400 1750
Wire Wire Line
	6400 1750 6400 1800
$Comp
L power:GND #PWR0114
U 1 1 5CCFE2B6
P 6400 1800
F 0 "#PWR0114" H 6400 1550 50  0001 C CNN
F 1 "GND" H 6405 1627 50  0000 C CNN
F 2 "" H 6400 1800 50  0001 C CNN
F 3 "" H 6400 1800 50  0001 C CNN
	1    6400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2300 5350 2300
Wire Wire Line
	5350 2400 5400 2400
Wire Wire Line
	5350 2500 5400 2500
Wire Wire Line
	5350 2600 5400 2600
Wire Wire Line
	5350 2700 5400 2700
Wire Wire Line
	6600 2300 6650 2300
Wire Wire Line
	6000 3000 6000 3050
$Comp
L power:GND #PWR0113
U 1 1 5CD1C6DA
P 6000 3050
F 0 "#PWR0113" H 6000 2800 50  0001 C CNN
F 1 "GND" H 6005 2877 50  0000 C CNN
F 2 "" H 6000 3050 50  0001 C CNN
F 3 "" H 6000 3050 50  0001 C CNN
	1    6000 3050
	1    0    0    -1  
$EndComp
Text Label 6650 2300 0    50   ~ 10
FLASH_SPI_MISO
Text Label 5350 2300 2    50   ~ 10
FLASH_SPI_MOSI
Text Label 5350 2400 2    50   ~ 10
FLASH_SPI_SCK
Text Label 5350 2500 2    50   ~ 10
FLASH_nCS
Text Label 5350 2600 2    50   ~ 10
FLASH_nWP
Text Label 5350 2700 2    50   ~ 10
FLASH_nHOLD
Text Notes 5700 1350 0    100  ~ 20
SPI Flash
Wire Wire Line
	5850 4600 5700 4600
Wire Wire Line
	5700 4600 5700 4450
Wire Wire Line
	6250 4400 6300 4400
Wire Wire Line
	6250 4600 6300 4600
Wire Wire Line
	6250 4800 6300 4800
Text HLabel 5700 4450 1    50   Input ~ 10
3V3
Text Label 6300 4400 0    50   ~ 10
STATUS_LED_R
Text Label 6300 4600 0    50   ~ 10
STATUS_LED_G
Text Label 6300 4800 0    50   ~ 10
STATUS_LED_B
Text Notes 5700 4000 0    100  ~ 20
Status LED
Wire Wire Line
	2300 4400 2250 4400
Wire Wire Line
	2250 4200 2300 4200
Wire Wire Line
	3750 2700 3700 2700
Text Label 2250 4400 2    50   ~ 10
STATUS_LED_B
Text Label 3750 2700 0    50   ~ 10
STATUS_LED_G
Text Label 2250 4200 2    50   ~ 10
STATUS_LED_R
Text Label 3750 2600 0    50   ~ 10
FLASH_nHOLD
Wire Wire Line
	2300 5100 2250 5100
Text Label 2250 3700 2    50   ~ 10
FLASH_nWP
Wire Wire Line
	2300 3600 2250 3600
Text Label 3750 2500 0    50   ~ 10
FLASH_nCS
Wire Wire Line
	2300 3700 2250 3700
Text Label 3750 2800 0    50   ~ 10
FLASH_SPI_SCK
Text HLabel 3750 4700 2    50   Input ~ 10
SDA
Wire Wire Line
	3700 4700 3750 4700
Wire Wire Line
	3750 3800 3700 3800
Text HLabel 2250 1800 0    50   Input ~ 10
nRST
Text HLabel 4600 3500 2    50   Input ~ 10
USB_DP
Text HLabel 4600 3400 2    50   Input ~ 10
USB_DM
Wire Wire Line
	2300 3400 2250 3400
Text HLabel 2250 4100 0    50   Input ~ 10
USART1_RX
Text HLabel 2250 4000 0    50   Input ~ 10
USART1_TX
Wire Wire Line
	2250 4100 2300 4100
Wire Wire Line
	2300 4000 2250 4000
Text HLabel 2250 3900 0    50   Input ~ 10
MAX2871_SPI_MOSI
Text HLabel 2250 3800 0    50   Input ~ 10
MAX2871_SPI_MISO
Text HLabel 2250 3400 0    50   Input ~ 10
MAX2871_SPI_SCK
Wire Wire Line
	3700 3000 3750 3000
Wire Wire Line
	3700 2900 3750 2900
Wire Wire Line
	3700 2800 3750 2800
Text Label 3750 3000 0    50   ~ 10
FLASH_SPI_MOSI
Text Label 3750 2900 0    50   ~ 10
FLASH_SPI_MISO
Wire Wire Line
	2300 3900 2250 3900
Wire Wire Line
	2300 3800 2250 3800
$Comp
L Device:C C63
U 1 1 5CB9C506
P 1450 1600
F 0 "C63" V 1400 1650 50  0000 L CNN
F 1 "100n" V 1500 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 1450 50  0001 C CNN
F 3 "~" H 1450 1600 50  0001 C CNN
	1    1450 1600
	0    1    1    0   
$EndComp
Text HLabel 2800 1500 0    50   Input ~ 10
3V3
Connection ~ 3100 1500
Wire Wire Line
	3100 1450 3100 1500
Wire Wire Line
	3000 1500 3100 1500
Connection ~ 3000 1500
Wire Wire Line
	3000 1500 3000 1600
Wire Wire Line
	2800 1500 3000 1500
Wire Wire Line
	3100 1500 3100 1600
Wire Wire Line
	3400 1150 3250 1150
Wire Wire Line
	3400 1100 3400 1150
$Comp
L VNA_Symbols:VREF #PWR0109
U 1 1 5CC361B6
P 3400 1100
F 0 "#PWR0109" H 3400 950 50  0001 C CNN
F 1 "VREF" V 3400 1300 50  0000 C CNN
F 2 "" H 3400 1100 50  0001 C CNN
F 3 "" H 3400 1100 50  0001 C CNN
	1    3400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2250 2200 2250
Wire Wire Line
	2050 2200 2050 2250
$Comp
L VNA_Symbols:VREF #PWR0103
U 1 1 5CC32AC4
P 2050 2200
F 0 "#PWR0103" H 2050 2050 50  0001 C CNN
F 1 "VREF" H 1900 2250 50  0000 C CNN
F 2 "" H 2050 2200 50  0001 C CNN
F 3 "" H 2050 2200 50  0001 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2250 2200 2200
Connection ~ 2200 2250
Wire Wire Line
	2200 2200 2300 2200
Wire Wire Line
	2200 2300 2200 2250
Wire Wire Line
	2300 2300 2200 2300
Text HLabel 2600 1150 0    50   Input ~ 10
3V3A
Wire Wire Line
	2600 1150 2700 1150
Connection ~ 3250 1150
Wire Wire Line
	3250 1100 3250 1150
Wire Wire Line
	3250 1150 3250 1550
Wire Wire Line
	3000 1150 3250 1150
Wire Wire Line
	3250 1550 3300 1550
Connection ~ 3250 1550
Wire Wire Line
	3200 1550 3250 1550
Wire Wire Line
	3200 1550 3200 1600
Wire Wire Line
	3300 1600 3300 1550
$Comp
L power:VDDA #PWR0108
U 1 1 5CBEF769
P 3250 1100
F 0 "#PWR0108" H 3250 950 50  0001 C CNN
F 1 "VDDA" V 3250 1300 50  0000 C CNN
F 2 "" H 3250 1100 50  0001 C CNN
F 3 "" H 3250 1100 50  0001 C CNN
	1    3250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0106
U 1 1 5CBCD110
P 3100 1450
F 0 "#PWR0106" H 3100 1300 50  0001 C CNN
F 1 "VDD" H 3100 1600 50  0000 C CNN
F 2 "" H 3100 1450 50  0001 C CNN
F 3 "" H 3100 1450 50  0001 C CNN
	1    3100 1450
	1    0    0    -1  
$EndComp
Text Label 2250 2000 2    50   ~ 10
BOOT0
Wire Wire Line
	2300 2000 2250 2000
Wire Wire Line
	2300 1800 2250 1800
Wire Wire Line
	1750 2750 1750 2600
Wire Wire Line
	1700 2750 1750 2750
Connection ~ 1050 2750
Wire Wire Line
	1400 2750 1050 2750
$Comp
L Device:R R51
U 1 1 5CB99060
P 1550 2750
F 0 "R51" V 1450 2750 50  0000 C CNN
F 1 "0R0" V 1550 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 2750 50  0001 C CNN
F 3 "~" H 1550 2750 50  0001 C CNN
	1    1550 2750
	0    1    1    0   
$EndComp
Text Notes 1250 2350 0    50   ~ 10
HSE
Connection ~ 1050 2350
Wire Wire Line
	1750 2350 1050 2350
Wire Wire Line
	1750 2500 1750 2350
$Comp
L power:GND #PWR0101
U 1 1 5CB93553
P 600 2850
F 0 "#PWR0101" H 600 2600 50  0001 C CNN
F 1 "GND" H 605 2677 50  0000 C CNN
F 2 "" H 600 2850 50  0001 C CNN
F 3 "" H 600 2850 50  0001 C CNN
	1    600  2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2750 600  2850
Connection ~ 600  2750
Wire Wire Line
	700  2750 600  2750
Wire Wire Line
	600  2350 600  2750
Wire Wire Line
	700  2350 600  2350
Wire Wire Line
	1050 2750 1000 2750
Wire Wire Line
	1050 2700 1050 2750
Wire Wire Line
	1050 2350 1050 2400
Wire Wire Line
	1000 2350 1050 2350
$Comp
L Device:C C61
U 1 1 5CB9283A
P 850 2750
F 0 "C61" V 750 2550 50  0000 L CNN
F 1 "10p" V 900 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 888 2600 50  0001 C CNN
F 3 "~" H 850 2750 50  0001 C CNN
	1    850  2750
	0    1    1    0   
$EndComp
$Comp
L Device:C C60
U 1 1 5CB8EF63
P 850 2350
F 0 "C60" V 750 2150 50  0000 L CNN
F 1 "10p" V 900 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 888 2200 50  0001 C CNN
F 3 "~" H 850 2350 50  0001 C CNN
	1    850  2350
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5CB8C33B
P 1050 2550
F 0 "Y1" V 1100 2350 50  0000 C CNN
F 1 "8MHz" V 1000 2300 50  0000 C CNN
F 2 "VNA_Footprints:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 1050 2550 50  0001 C CNN
F 3 "~" H 1050 2550 50  0001 C CNN
	1    1050 2550
	0    -1   -1   0   
$EndComp
NoConn ~ 2900 1600
Wire Wire Line
	3100 5350 3100 5400
$Comp
L power:GND #PWR0107
U 1 1 5CB8BA52
P 3100 5400
F 0 "#PWR0107" H 3100 5150 50  0001 C CNN
F 1 "GND" H 3105 5227 50  0000 C CNN
F 2 "" H 3100 5400 50  0001 C CNN
F 3 "" H 3100 5400 50  0001 C CNN
	1    3100 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5350 3200 5350
Connection ~ 3100 5350
Wire Wire Line
	3100 5300 3100 5350
Wire Wire Line
	3200 5350 3200 5300
Wire Wire Line
	3000 5350 3100 5350
Wire Wire Line
	3000 5300 3000 5350
Text HLabel 3750 4000 2    50   Input ~ 10
SDADC_AIN6P
Wire Wire Line
	3750 4000 3700 4000
Wire Wire Line
	3700 4100 3750 4100
Wire Wire Line
	3700 4200 3750 4200
Wire Wire Line
	2300 3000 2250 3000
Wire Wire Line
	2250 3100 2300 3100
Text HLabel 3750 4100 2    50   Input ~ 10
SDADC_AIN5P
Text HLabel 3750 4200 2    50   Input ~ 10
SDADC_AIN4P
Text HLabel 2250 3000 0    50   Input ~ 10
SDADC_AIN8P
Text HLabel 2250 3100 0    50   Input ~ 10
SDADC_AIN7P
Text HLabel 2250 5100 0    50   Input ~ 10
MAX2871_CE
Wire Wire Line
	3750 2600 3700 2600
Wire Wire Line
	3700 2500 3750 2500
Wire Wire Line
	3700 2400 3750 2400
Wire Wire Line
	3700 2300 3750 2300
Text HLabel 3750 2400 2    50   Input ~ 10
MAX2871_RF_EN
Text HLabel 3750 2300 2    50   Input ~ 10
MAX2871_LD
Text HLabel 2250 3600 0    50   Input ~ 10
MAX2871_LE
Wire Wire Line
	3700 5000 3750 5000
Wire Wire Line
	3700 5100 3750 5100
Text HLabel 3750 5000 2    50   Input ~ 10
INPUT_SW_1
Text HLabel 3750 5100 2    50   Input ~ 10
INPUT_SW_2
Text HLabel 2250 4900 0    50   Input ~ 10
ATTEN_MOSI
Wire Wire Line
	2300 3300 2250 3300
Text HLabel 2250 5000 0    50   Input ~ 10
ATTEN_CLK
Text HLabel 2250 4800 0    50   Input ~ 10
ATTEN_LE
Text HLabel 2250 3300 0    50   Input ~ 10
PA_PWRDN
Text HLabel 3750 4800 2    50   Input ~ 10
FILTER_SW_1
Text HLabel 3750 4900 2    50   Input ~ 10
FILTER_SW_2
Wire Wire Line
	3700 4800 3750 4800
Wire Wire Line
	3700 4900 3750 4900
Wire Wire Line
	3700 4400 4300 4400
Wire Wire Line
	3700 4500 4300 4500
Wire Wire Line
	3700 4600 4450 4600
$Comp
L Device:R R52
U 1 1 5CE50AA2
P 4650 4150
F 0 "R52" V 4550 4100 50  0000 C CNN
F 1 "470R" V 4650 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 4150 50  0001 C CNN
F 3 "~" H 4650 4150 50  0001 C CNN
	1    4650 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 4300 4450 4150
Wire Wire Line
	4450 4150 4500 4150
Wire Wire Line
	3700 4300 4450 4300
Wire Wire Line
	4300 4400 4300 4350
Wire Wire Line
	4300 4350 4500 4350
Wire Wire Line
	4300 4500 4300 4550
Wire Wire Line
	4300 4550 4500 4550
Wire Wire Line
	4450 4600 4450 4750
Wire Wire Line
	4450 4750 4500 4750
$Comp
L Device:LED D11
U 1 1 5CE8A2A5
P 5050 4150
F 0 "D11" H 5200 4100 50  0000 C CNN
F 1 "LED" H 4900 4200 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5050 4150 50  0001 C CNN
F 3 "~" H 5050 4150 50  0001 C CNN
	1    5050 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4150 4800 4150
Wire Wire Line
	4800 4350 4900 4350
$Comp
L Device:LED D13
U 1 1 5CE9B861
P 5050 4550
F 0 "D13" H 5200 4500 50  0000 C CNN
F 1 "LED" H 4900 4600 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5050 4550 50  0001 C CNN
F 3 "~" H 5050 4550 50  0001 C CNN
	1    5050 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4550 4800 4550
$Comp
L Device:LED D14
U 1 1 5CEA3D88
P 5050 4750
F 0 "D14" H 5200 4700 50  0000 C CNN
F 1 "LED" H 4900 4800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5050 4750 50  0001 C CNN
F 3 "~" H 5050 4750 50  0001 C CNN
	1    5050 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 4750 4800 4750
$Comp
L Device:LED D12
U 1 1 5CEAC04D
P 5050 4350
F 0 "D12" H 5200 4300 50  0000 C CNN
F 1 "LED" H 4900 4400 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5050 4350 50  0001 C CNN
F 3 "~" H 5050 4350 50  0001 C CNN
	1    5050 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4150 5350 4150
Wire Wire Line
	5350 4150 5350 4350
Wire Wire Line
	5200 4750 5350 4750
Connection ~ 5350 4750
Wire Wire Line
	5350 4750 5350 4900
Wire Wire Line
	5200 4550 5350 4550
Connection ~ 5350 4550
Wire Wire Line
	5350 4550 5350 4750
Wire Wire Line
	5200 4350 5350 4350
Connection ~ 5350 4350
Wire Wire Line
	5350 4350 5350 4550
$Comp
L power:GND #PWR0112
U 1 1 5CECF3E2
P 5350 4900
F 0 "#PWR0112" H 5350 4650 50  0001 C CNN
F 1 "GND" H 5355 4727 50  0000 C CNN
F 2 "" H 5350 4900 50  0001 C CNN
F 3 "" H 5350 4900 50  0001 C CNN
	1    5350 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R53
U 1 1 5CECF8A4
P 4650 4350
F 0 "R53" V 4550 4300 50  0000 C CNN
F 1 "470R" V 4650 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 4350 50  0001 C CNN
F 3 "~" H 4650 4350 50  0001 C CNN
	1    4650 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R54
U 1 1 5CECFAAD
P 4650 4550
F 0 "R54" V 4550 4500 50  0000 C CNN
F 1 "470R" V 4650 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 4550 50  0001 C CNN
F 3 "~" H 4650 4550 50  0001 C CNN
	1    4650 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R55
U 1 1 5CECFC53
P 4650 4750
F 0 "R55" V 4550 4700 50  0000 C CNN
F 1 "470R" V 4650 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 4750 50  0001 C CNN
F 3 "~" H 4650 4750 50  0001 C CNN
	1    4650 4750
	0    1    1    0   
$EndComp
Text Notes 4500 3950 0    100  ~ 20
Debug LEDs
$Comp
L power:GND #PWR098
U 1 1 5CED3E6F
P 650 4150
F 0 "#PWR098" H 650 3900 50  0001 C CNN
F 1 "GND" H 655 3977 50  0000 C CNN
F 2 "" H 650 4150 50  0001 C CNN
F 3 "" H 650 4150 50  0001 C CNN
	1    650  4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4100 650  4100
$Comp
L Switch:SW_Push SW1
U 1 1 5CED3E76
P 900 4500
F 0 "SW1" H 1000 4600 50  0000 C CNN
F 1 "SW_Push" H 900 4450 50  0000 C CNN
F 2 "VNA_Footprints:6mmTactSwitch" H 900 4700 50  0001 C CNN
F 3 "~" H 900 4700 50  0001 C CNN
	1    900  4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4100 650  4150
$Comp
L power:GND #PWR099
U 1 1 5CEF0A31
P 650 4550
F 0 "#PWR099" H 650 4300 50  0001 C CNN
F 1 "GND" H 655 4377 50  0000 C CNN
F 2 "" H 650 4550 50  0001 C CNN
F 3 "" H 650 4550 50  0001 C CNN
	1    650  4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4500 650  4500
$Comp
L Switch:SW_Push SW2
U 1 1 5CEF0A38
P 900 4100
F 0 "SW2" H 1000 4200 50  0000 C CNN
F 1 "SW_Push" H 900 4050 50  0000 C CNN
F 2 "VNA_Footprints:6mmTactSwitch" H 900 4300 50  0001 C CNN
F 3 "~" H 900 4300 50  0001 C CNN
	1    900  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4500 650  4550
Wire Wire Line
	1100 4500 1200 4500
Wire Wire Line
	1100 4100 1250 4100
Wire Wire Line
	1250 4100 1250 4300
Wire Wire Line
	1250 4300 1500 4300
Text Notes 650  3900 0    100  ~ 20
For Testing
Wire Wire Line
	3700 3600 3750 3600
Wire Wire Line
	3700 3700 3750 3700
Text HLabel 3750 3600 2    50   Input ~ 10
SWD_IO
Text HLabel 3750 3700 2    50   Input ~ 10
SWD_CLK
Text HLabel 3750 3800 2    50   Input ~ 10
SCL
$Comp
L VNA_Symbols:Ferrite_Bead_PWR FB?
U 1 1 5CC6BC19
P 2850 1150
AR Path="/5CC6BC19" Ref="FB?"  Part="1" 
AR Path="/5CAA2138/5CC6BC19" Ref="FB5"  Part="1" 
F 0 "FB5" V 2800 1000 50  0000 C CNN
F 1 "Bead" V 2900 1300 50  0000 C CNN
F 2 "VNA_Footprints:BEADC1608X95N" V 2780 1150 50  0001 C CNN
F 3 "~" H 2850 1150 50  0001 C CNN
	1    2850 1150
	0    1    1    0   
$EndComp
NoConn ~ 2300 2700
$Comp
L Device:CP C65
U 1 1 5CC3A304
P 2250 7300
F 0 "C65" H 2368 7346 50  0000 L CNN
F 1 "1u " H 2368 7255 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P" H 2288 7150 50  0001 C CNN
F 3 "~" H 2250 7300 50  0001 C CNN
	1    2250 7300
	1    0    0    -1  
$EndComp
$Comp
L VNA_Symbols:LED_RGBA D15
U 1 1 5CBE1B64
P 6050 4600
F 0 "D15" H 6050 5097 50  0000 C CNN
F 1 "LED_RGBA" H 6050 5006 50  0000 C CNN
F 2 "VNA_Footprints:ARGB_PLCC4_1210_LED" H 6050 4550 50  0001 C CNN
F 3 "~" H 6050 4550 50  0001 C CNN
	1    6050 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R58
U 1 1 5CC2E111
P 4500 3650
F 0 "R58" V 4425 3650 50  0000 C CNN
F 1 "1K5" V 4500 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 3650 50  0001 C CNN
F 3 "~" H 4500 3650 50  0001 C CNN
	1    4500 3650
	0    1    1    0   
$EndComp
Text HLabel 4750 3650 2    50   Input ~ 10
3V3
$Comp
L Device:R R56
U 1 1 5CC4EB0A
P 3950 3400
F 0 "R56" V 3900 3575 50  0000 C CNN
F 1 "0R0" V 3950 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3400 3800 3400
$Comp
L Device:R R57
U 1 1 5CC64AFA
P 3950 3500
F 0 "R57" V 3900 3675 50  0000 C CNN
F 1 "0R0" V 3950 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3500 50  0001 C CNN
F 3 "~" H 3950 3500 50  0001 C CNN
	1    3950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3500 3800 3500
Wire Wire Line
	4600 3400 4100 3400
Wire Wire Line
	4100 3500 4300 3500
Wire Wire Line
	4350 3650 4300 3650
Wire Wire Line
	4300 3650 4300 3500
Connection ~ 4300 3500
Wire Wire Line
	4300 3500 4600 3500
Wire Wire Line
	4650 3650 4750 3650
Text Label 8600 2400 2    50   ~ 10
FLASH_SPI_MOSI
Text Label 8600 2600 2    50   ~ 10
FLASH_SPI_SCK
Text Label 8600 2700 2    50   ~ 10
FLASH_nCS
Text Label 8600 2800 2    50   ~ 10
FLASH_nWP
Text Label 8600 2900 2    50   ~ 10
FLASH_nHOLD
Text Label 8600 2500 2    50   ~ 10
FLASH_SPI_MISO
Text Notes 8400 2150 0    100  ~ 20
Test Points
Text HLabel 8600 3050 0    50   Input ~ 10
MAX2871_SPI_MOSI
Text HLabel 8600 3150 0    50   Input ~ 10
MAX2871_SPI_MISO
Text HLabel 8600 3250 0    50   Input ~ 10
MAX2871_SPI_SCK
Text HLabel 8600 3350 0    50   Input ~ 10
MAX2871_CE
Text HLabel 8600 3450 0    50   Input ~ 10
MAX2871_RF_EN
Text HLabel 8600 3550 0    50   Input ~ 10
MAX2871_LD
Text HLabel 8600 3650 0    50   Input ~ 10
MAX2871_LE
Text HLabel 8550 4000 0    50   Input ~ 10
ATTEN_CLK
Text HLabel 8550 4100 0    50   Input ~ 10
ATTEN_LE
Text HLabel 8550 4250 0    50   Input ~ 10
SDA
Text HLabel 8550 4350 0    50   Input ~ 10
SCL
$Comp
L Connector:TestPoint TP20
U 1 1 5CDB45E5
P 8700 2400
F 0 "TP20" V 8654 2588 50  0000 L CNN
F 1 "TP" V 8745 2588 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 2400 50  0001 C CNN
F 3 "~" H 8900 2400 50  0001 C CNN
	1    8700 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2400 8600 2400
$Comp
L Connector:TestPoint TP32
U 1 1 5CDC0FC5
P 9000 2500
F 0 "TP32" V 8954 2688 50  0000 L CNN
F 1 "TP" V 9045 2688 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9000 2500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5CDCBEDC
P 8700 2600
F 0 "TP21" V 8654 2788 50  0000 L CNN
F 1 "TP" V 8745 2788 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 2600 50  0001 C CNN
F 3 "~" H 8900 2600 50  0001 C CNN
	1    8700 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2600 8600 2600
$Comp
L Connector:TestPoint TP33
U 1 1 5CDD7068
P 9000 2700
F 0 "TP33" V 8954 2888 50  0000 L CNN
F 1 "TP" V 9045 2888 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 2700 50  0001 C CNN
F 3 "~" H 9200 2700 50  0001 C CNN
	1    9000 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 5CDE22DD
P 8700 2800
F 0 "TP22" V 8654 2988 50  0000 L CNN
F 1 "TP" V 8745 2988 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 2800 50  0001 C CNN
F 3 "~" H 8900 2800 50  0001 C CNN
	1    8700 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2800 8600 2800
$Comp
L Connector:TestPoint TP34
U 1 1 5CDED746
P 9000 2900
F 0 "TP34" V 8954 3088 50  0000 L CNN
F 1 "TP" V 9045 3088 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 2900 50  0001 C CNN
F 3 "~" H 9200 2900 50  0001 C CNN
	1    9000 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2700 9000 2700
Wire Wire Line
	9000 2500 8600 2500
Wire Wire Line
	8600 2900 9000 2900
$Comp
L Connector:TestPoint TP23
U 1 1 5CE33392
P 8700 3050
F 0 "TP23" V 8654 3238 50  0000 L CNN
F 1 "TP" V 8745 3238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 3050 50  0001 C CNN
F 3 "~" H 8900 3050 50  0001 C CNN
	1    8700 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3050 8600 3050
$Comp
L Connector:TestPoint TP35
U 1 1 5CE33399
P 9000 3150
F 0 "TP35" V 8954 3338 50  0000 L CNN
F 1 "TP" V 9045 3338 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 3150 50  0001 C CNN
F 3 "~" H 9200 3150 50  0001 C CNN
	1    9000 3150
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 5CE3339F
P 8700 3250
F 0 "TP24" V 8654 3438 50  0000 L CNN
F 1 "TP" V 8745 3438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 3250 50  0001 C CNN
F 3 "~" H 8900 3250 50  0001 C CNN
	1    8700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3250 8600 3250
$Comp
L Connector:TestPoint TP36
U 1 1 5CE333A6
P 9000 3350
F 0 "TP36" V 8954 3538 50  0000 L CNN
F 1 "TP" V 9045 3538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 3350 50  0001 C CNN
F 3 "~" H 9200 3350 50  0001 C CNN
	1    9000 3350
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 5CE333AC
P 8700 3450
F 0 "TP25" V 8654 3638 50  0000 L CNN
F 1 "TP" V 8745 3638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 3450 50  0001 C CNN
F 3 "~" H 8900 3450 50  0001 C CNN
	1    8700 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3450 8600 3450
$Comp
L Connector:TestPoint TP37
U 1 1 5CE333B3
P 9000 3550
F 0 "TP37" V 8954 3738 50  0000 L CNN
F 1 "TP" V 9045 3738 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9200 3550 50  0001 C CNN
F 3 "~" H 9200 3550 50  0001 C CNN
	1    9000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3350 9000 3350
Wire Wire Line
	9000 3150 8600 3150
Wire Wire Line
	8600 3550 9000 3550
$Comp
L Connector:TestPoint TP26
U 1 1 5CE40379
P 8700 3650
F 0 "TP26" V 8654 3838 50  0000 L CNN
F 1 "TP" V 8745 3838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8900 3650 50  0001 C CNN
F 3 "~" H 8900 3650 50  0001 C CNN
	1    8700 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3650 8600 3650
$Comp
L Connector:TestPoint TP27
U 1 1 5CE40386
P 8650 3900
F 0 "TP27" V 8604 4088 50  0000 L CNN
F 1 "TP" V 8695 4088 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8850 3900 50  0001 C CNN
F 3 "~" H 8850 3900 50  0001 C CNN
	1    8650 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3900 8550 3900
$Comp
L Connector:TestPoint TP38
U 1 1 5CE4038D
P 8950 4000
F 0 "TP38" V 8904 4188 50  0000 L CNN
F 1 "TP" V 8995 4188 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9150 4000 50  0001 C CNN
F 3 "~" H 9150 4000 50  0001 C CNN
	1    8950 4000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP28
U 1 1 5CE40393
P 8650 4100
F 0 "TP28" V 8604 4288 50  0000 L CNN
F 1 "TP" V 8695 4288 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8850 4100 50  0001 C CNN
F 3 "~" H 8850 4100 50  0001 C CNN
	1    8650 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4100 8550 4100
Wire Wire Line
	8550 4000 8950 4000
$Comp
L Connector:TestPoint TP41
U 1 1 5CEAAA33
P 8950 4250
F 0 "TP41" V 8904 4438 50  0000 L CNN
F 1 "TP" V 8995 4438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9150 4250 50  0001 C CNN
F 3 "~" H 9150 4250 50  0001 C CNN
	1    8950 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4250 8950 4250
$Comp
L Connector:TestPoint TP31
U 1 1 5CEAAA3A
P 8650 4350
F 0 "TP31" V 8604 4538 50  0000 L CNN
F 1 "TP" V 8695 4538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8850 4350 50  0001 C CNN
F 3 "~" H 8850 4350 50  0001 C CNN
	1    8650 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4350 8550 4350
Text HLabel 2250 4700 0    50   Input ~ 10
ATTEN_MISO
Wire Wire Line
	2250 2800 2300 2800
Wire Wire Line
	1750 2600 2300 2600
Wire Wire Line
	1750 2500 2300 2500
Text HLabel 8550 3900 0    50   Input ~ 10
ATTEN_MISO
Text HLabel 8550 3800 0    50   Input ~ 10
ATTEN_MOSI
$Comp
L Connector:TestPoint TP44
U 1 1 5CBD227B
P 8950 3800
F 0 "TP44" V 8904 3988 50  0000 L CNN
F 1 "TP" V 8995 3988 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9150 3800 50  0001 C CNN
F 3 "~" H 9150 3800 50  0001 C CNN
	1    8950 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3800 8950 3800
$Comp
L Device:R R64
U 1 1 5CD83AD5
P 1850 1200
F 0 "R64" H 1920 1246 50  0000 L CNN
F 1 "DNP" H 1920 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1780 1200 50  0001 C CNN
F 3 "~" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1400 1850 1400
Wire Wire Line
	1850 1050 1850 1000
Wire Wire Line
	1850 1350 1850 1400
Connection ~ 1850 1400
Wire Wire Line
	1850 1400 2000 1400
Text HLabel 1850 1000 1    50   Input ~ 10
3V3
Wire Wire Line
	2250 4900 2300 4900
Wire Wire Line
	2250 5000 2300 5000
Wire Wire Line
	2300 4800 2250 4800
NoConn ~ 2300 4600
Wire Wire Line
	2300 4700 2250 4700
Wire Wire Line
	1500 4950 1500 4900
$Comp
L power:GND #PWR0126
U 1 1 5CE704F2
P 1500 4950
F 0 "#PWR0126" H 1500 4700 50  0001 C CNN
F 1 "GND" H 1505 4777 50  0000 C CNN
F 2 "" H 1500 4950 50  0001 C CNN
F 3 "" H 1500 4950 50  0001 C CNN
	1    1500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4950 1200 4900
$Comp
L power:GND #PWR0125
U 1 1 5CE610E8
P 1200 4950
F 0 "#PWR0125" H 1200 4700 50  0001 C CNN
F 1 "GND" H 1205 4777 50  0000 C CNN
F 2 "" H 1200 4950 50  0001 C CNN
F 3 "" H 1200 4950 50  0001 C CNN
	1    1200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4600 1500 4300
Wire Wire Line
	1200 4600 1200 4500
$Comp
L Device:R R65
U 1 1 5CE27EFC
P 1200 4750
F 0 "R65" H 1270 4796 50  0000 L CNN
F 1 "10K" H 1270 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1130 4750 50  0001 C CNN
F 3 "~" H 1200 4750 50  0001 C CNN
	1    1200 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R66
U 1 1 5CE2733D
P 1500 4750
F 0 "R66" H 1570 4796 50  0000 L CNN
F 1 "10K" H 1570 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 4750 50  0001 C CNN
F 3 "~" H 1500 4750 50  0001 C CNN
	1    1500 4750
	1    0    0    -1  
$EndComp
Connection ~ 1200 4500
Connection ~ 1500 4300
Wire Wire Line
	1200 4500 2300 4500
Wire Wire Line
	1500 4300 2300 4300
$Comp
L Connector:TestPoint TP40
U 1 1 5CBF934F
P 6300 6800
F 0 "TP40" H 6358 6918 50  0000 L CNN
F 1 "Light Pipe" H 6358 6827 50  0000 L CNN
F 2 "VNA_Footprints:SLP3-150-150-F" H 6500 6800 50  0001 C CNN
F 3 "~" H 6500 6800 50  0001 C CNN
	1    6300 6800
	1    0    0    -1  
$EndComp
NoConn ~ 6300 6800
$Comp
L MCU_ST_STM32F3:STM32F373RCTx U16
U 1 1 5CB87045
P 3000 3400
F 0 "U16" H 2450 5150 50  0000 C CNN
F 1 "STM32F373RCTx" V 3000 3450 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 2400 1600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 3000 3400 50  0001 C CNN
	1    3000 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP45
U 1 1 5CBAC71B
P 4900 3300
F 0 "TP45" V 4854 3488 50  0000 L CNN
F 1 "Test3" V 4945 3488 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5100 3300 50  0001 C CNN
F 3 "~" H 5100 3300 50  0001 C CNN
	1    4900 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3300 4900 3300
Wire Wire Line
	3700 3200 3900 3200
$Comp
L Connector:TestPoint TP29
U 1 1 5CBCBE24
P 3900 3200
F 0 "TP29" V 3854 3388 50  0000 L CNN
F 1 "Test2" V 3945 3388 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4100 3200 50  0001 C CNN
F 3 "~" H 4100 3200 50  0001 C CNN
	1    3900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3100 4900 3100
$Comp
L Connector:TestPoint TP42
U 1 1 5CBDB702
P 4900 3100
F 0 "TP42" V 4854 3288 50  0000 L CNN
F 1 "Test1" V 4945 3288 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5100 3100 50  0001 C CNN
F 3 "~" H 5100 3100 50  0001 C CNN
	1    4900 3100
	0    1    1    0   
$EndComp
$EndSCHEMATC
