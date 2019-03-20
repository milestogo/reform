EESchema Schematic File Version 4
LIBS:reform-motherboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title "MNT Reform SD Card / SATA / MISC"
Date "2018-06-05"
Rev "0.3"
Comp "MNT Media and Technology UG (hb)"
Comment1 "github.com/mntmn/reform"
Comment2 ""
Comment3 "Copyright 2017,2018 Lukas F. Hartmann / @mntmn"
Comment4 "License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt"
$EndDescr
Text GLabel 3050 2050 0    60   BiDi ~ 0
SD3_DATA0
Text GLabel 3050 2150 0    60   BiDi ~ 0
SD3_DATA1
Text GLabel 3050 1450 0    60   BiDi ~ 0
SD3_DATA2
Text GLabel 3050 1550 0    60   BiDi ~ 0
SD3_DATA3
Text GLabel 1650 3500 2    60   BiDi ~ 0
SD3_WP
Text GLabel 3750 3400 2    60   Output ~ 0
SD3_CD
Text GLabel 3050 1650 0    60   BiDi ~ 0
SD3_CMD
Text GLabel 3050 1850 0    60   Input ~ 0
SD3_CLK
$Comp
L reform-motherboard-rescue:GND #PWR0108
U 1 1 59F3C8F9
P 1500 3600
F 0 "#PWR0108" H 1500 3350 50  0001 C CNN
F 1 "GND" H 1500 3450 50  0000 C CNN
F 2 "" H 1500 3600 50  0001 C CNN
F 3 "" H 1500 3600 50  0001 C CNN
	1    1500 3600
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0109
U 1 1 59F3CBCC
P 3850 3050
F 0 "#PWR0109" H 3850 2800 50  0001 C CNN
F 1 "GND" H 3850 2900 50  0000 C CNN
F 2 "" H 3850 3050 50  0001 C CNN
F 3 "" H 3850 3050 50  0001 C CNN
	1    3850 3050
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+3V3 #PWR0110
U 1 1 59F3CDDC
P 1650 1750
F 0 "#PWR0110" H 1650 1600 50  0001 C CNN
F 1 "+3V3" H 1650 1890 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C1
U 1 1 59F3CE15
P 1650 1950
F 0 "C1" H 1660 2020 50  0000 L CNN
F 1 "0.1uF" H 1660 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1650 1950 50  0001 C CNN
F 3 "" H 1650 1950 50  0001 C CNN
	1    1650 1950
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0111
U 1 1 59F3CE96
P 1650 2300
F 0 "#PWR0111" H 1650 2050 50  0001 C CNN
F 1 "GND" H 1650 2150 50  0000 C CNN
F 2 "" H 1650 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1750 3050 1750
Wire Wire Line
	3050 1950 1950 1950
Wire Wire Line
	1950 1950 1950 2250
Wire Wire Line
	1950 2250 1650 2250
Wire Wire Line
	1650 2050 1650 2300
Connection ~ 1650 2250
Wire Wire Line
	1650 1750 1650 1850
$Comp
L reform-motherboard-rescue:2N7002 Q1
U 1 1 5A116186
P 3100 3600
F 0 "Q1" H 3300 3675 50  0000 L CNN
F 1 "2N7002" H 3300 3600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3300 3525 50  0001 L CIN
F 3 "" H 3100 3600 50  0001 L CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0112
U 1 1 5A116311
P 3200 3800
F 0 "#PWR0112" H 3200 3550 50  0001 C CNN
F 1 "GND" H 3200 3650 50  0000 C CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "" H 3200 3800 50  0001 C CNN
	1    3200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3400 3200 3400
Wire Wire Line
	3050 2350 2900 2350
Wire Wire Line
	2900 2350 2900 3600
$Comp
L reform-motherboard-rescue:+3V3 #PWR0113
U 1 1 5A1163C1
P 2500 3300
F 0 "#PWR0113" H 2500 3150 50  0001 C CNN
F 1 "+3V3" H 2500 3440 50  0000 C CNN
F 2 "" H 2500 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:R_Small R12
U 1 1 5A1163DF
P 2500 3400
F 0 "R12" H 2530 3420 50  0000 L CNN
F 1 "10k" H 2530 3360 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2500 3400 50  0001 C CNN
F 3 "" H 2500 3400 50  0001 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3600 2500 3600
Wire Wire Line
	2500 3600 2500 3500
$Comp
L reform-motherboard-rescue:Conn_01x06 J25
U 1 1 5A16C8DA
P 2400 4900
F 0 "J25" H 2400 5200 50  0000 C CNN
F 1 "Conn_CONSOLE" H 2400 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 2400 4900 50  0001 C CNN
F 3 "" H 2400 4900 50  0001 C CNN
	1    2400 4900
	1    0    0    -1  
$EndComp
Text GLabel 2000 4800 0    60   Input ~ 0
UART1_TXD
Text GLabel 2000 5000 0    60   Input ~ 0
UART1_RTS
Text GLabel 2000 4900 0    60   Output ~ 0
UART1_RXD
Text GLabel 2000 5100 0    60   Output ~ 0
UART1_CTS
$Comp
L reform-motherboard-rescue:GND #PWR0114
U 1 1 5A16C9D1
P 2000 5200
F 0 "#PWR0114" H 2000 4950 50  0001 C CNN
F 1 "GND" H 2000 5050 50  0000 C CNN
F 2 "" H 2000 5200 50  0001 C CNN
F 3 "" H 2000 5200 50  0001 C CNN
	1    2000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5200 2200 5200
Wire Wire Line
	2000 4700 2200 4700
Text GLabel 3650 4900 0    60   Input ~ 0
I2C2_SCL
Text GLabel 3650 5000 0    60   BiDi ~ 0
I2C2_SDA
$Comp
L reform-motherboard-rescue:Conn_01x04 J24
U 1 1 5A16DC69
P 3850 4900
F 0 "J24" H 3850 5100 50  0000 C CNN
F 1 "Conn_01x04" H 3850 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 3850 4900 50  0001 C CNN
F 3 "" H 3850 4900 50  0001 C CNN
	1    3850 4900
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0115
U 1 1 5A16DCEF
P 3400 5100
F 0 "#PWR0115" H 3400 4850 50  0001 C CNN
F 1 "GND" H 3400 4950 50  0000 C CNN
F 2 "" H 3400 5100 50  0001 C CNN
F 3 "" H 3400 5100 50  0001 C CNN
	1    3400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5100 3650 5100
Wire Wire Line
	3400 4800 3650 4800
$Comp
L reform-motherboard-rescue:+3V3 #PWR0116
U 1 1 5A16E57E
P 3400 4800
F 0 "#PWR0116" H 3400 4650 50  0001 C CNN
F 1 "+3V3" H 3400 4940 50  0000 C CNN
F 2 "" H 3400 4800 50  0001 C CNN
F 3 "" H 3400 4800 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+5V #PWR0117
U 1 1 5A16EE82
P 2000 4700
F 0 "#PWR0117" H 2000 4550 50  0001 C CNN
F 1 "+5V" H 2000 4840 50  0000 C CNN
F 2 "" H 2000 4700 50  0001 C CNN
F 3 "" H 2000 4700 50  0001 C CNN
	1    2000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4800 2000 4800
Wire Wire Line
	2000 4900 2200 4900
Wire Wire Line
	2200 5000 2000 5000
Wire Wire Line
	2000 5100 2200 5100
$Comp
L reform-motherboard-rescue:SN74LVC1G08DCKR U12
U 1 1 5A17082C
P 2150 6700
F 0 "U12" H 2100 7100 50  0000 L BNN
F 1 "SN74LVC1G08DCKR" H 1800 6250 50  0000 L BNN
F 2 "SN74LVC1G08DCKR:SOT65P210X110-5N" H 2150 6700 50  0001 L BNN
F 3 "SC-70-5 Texas Instruments" H 2150 6700 50  0001 L BNN
F 4 "https://www.digikey.de/product-detail/en/texas-instruments/SN74LVC1G08DCKR/296-11602-1-ND/385741?WT.z_cid=ref_snapeda&utm_source=snapeda&utm_medium=aggregator&utm_campaign=buynow" H 2150 6700 50  0001 L BNN "Digi-Key_Purchase_URL"
F 5 "Single 2-Input Positive-AND Gate 5-SC70 -40 to 125" H 2150 6700 50  0001 L BNN "Description"
F 6 "SN74LVC1G08DCKR" H 2150 6700 50  0001 L BNN "MP"
F 7 "Texas Instruments" H 2150 6700 50  0001 L BNN "MF"
F 8 "296-11602-1-ND" H 2150 6700 50  0001 L BNN "Digi-Key_Part_Number"
	1    2150 6700
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+3V3 #PWR0118
U 1 1 5A171278
P 1500 6350
F 0 "#PWR0118" H 1500 6200 50  0001 C CNN
F 1 "+3V3" H 1500 6490 50  0000 C CNN
F 2 "" H 1500 6350 50  0001 C CNN
F 3 "" H 1500 6350 50  0001 C CNN
	1    1500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6350 1500 6450
Text GLabel 1350 6700 0    60   Input ~ 0
RSTOUTn
Wire Wire Line
	1350 6700 1550 6700
Wire Wire Line
	1550 6650 1550 6750
Wire Wire Line
	1550 6650 1750 6650
Wire Wire Line
	1550 6750 1750 6750
Connection ~ 1550 6700
$Comp
L reform-motherboard-rescue:GND #PWR0119
U 1 1 5A1713E3
P 1500 6950
F 0 "#PWR0119" H 1500 6700 50  0001 C CNN
F 1 "GND" H 1500 6800 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6950 1750 6950
Wire Wire Line
	1500 6450 1750 6450
Text GLabel 2550 6700 2    60   Output ~ 0
RESETn
$Comp
L reform-motherboard-rescue:Conn_01x02 J23
U 1 1 5A172819
P 3500 6750
F 0 "J23" H 3500 6850 50  0000 C CNN
F 1 "Conn_RESET" H 3500 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3500 6750 50  0001 C CNN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	-1   0    0    1   
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0120
U 1 1 5A1728B5
P 3750 6950
F 0 "#PWR0120" H 3750 6700 50  0001 C CNN
F 1 "GND" H 3750 6800 50  0000 C CNN
F 2 "" H 3750 6950 50  0001 C CNN
F 3 "" H 3750 6950 50  0001 C CNN
	1    3750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6950 3750 6750
Wire Wire Line
	3750 6750 3700 6750
Wire Wire Line
	3700 6650 4250 6650
Text GLabel 4250 6650 2    60   Output ~ 0
RSTINn
$Comp
L reform-motherboard-rescue:+3V3 #PWR0121
U 1 1 5A173249
P 3950 6350
F 0 "#PWR0121" H 3950 6200 50  0001 C CNN
F 1 "+3V3" H 3950 6490 50  0000 C CNN
F 2 "" H 3950 6350 50  0001 C CNN
F 3 "" H 3950 6350 50  0001 C CNN
	1    3950 6350
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:R_Small R32
U 1 1 5A173270
P 3950 6500
F 0 "R32" H 3980 6520 50  0000 L CNN
F 1 "10k" H 3980 6460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3950 6500 50  0001 C CNN
F 3 "" H 3950 6500 50  0001 C CNN
	1    3950 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6600 3950 6650
Connection ~ 3950 6650
Wire Wire Line
	3950 6400 3950 6350
Text Notes 2650 6000 0    60   ~ 0
Reset
Text Notes 1800 4350 0    60   ~ 0
Console
$Comp
L reform-motherboard-rescue:693072010801 J4
U 1 1 5A18AFBB
P 3050 1450
F 0 "J4" H 4253 1550 50  0000 L BNN
F 1 "693072010801" H 4253 1450 50  0000 L BNN
F 2 "SDCARD:693072010801" H 3050 1450 50  0001 L BNN
F 3 "693072010801" H 3050 1450 50  0001 L BNN
F 4 "Good" H 3050 1450 50  0001 L BNN "Availability"
F 5 "Micro-SD Card Connector [Würth Elektronik] 693072010801 Micro-SD Card Connector" H 3050 1450 50  0001 L BNN "Description"
F 6 "None" H 3050 1450 50  0001 L BNN "Package"
F 7 "Würth Elektronik" H 3050 1450 50  0001 L BNN "MF"
F 8 "2.79 USD" H 3050 1450 50  0001 L BNN "Price"
	1    3050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 2900 2550
Connection ~ 2900 2550
Wire Wire Line
	3850 3050 4150 3050
Wire Wire Line
	4150 3050 4150 1050
Wire Wire Line
	4150 1050 3850 1050
Wire Wire Line
	3850 2950 3850 3050
Text Notes 2950 1000 0    60   ~ 0
Boot SD Card
$Comp
L reform-motherboard-rescue:Conn_01x02 J28
U 1 1 5A61FA0C
P 1300 3600
F 0 "J28" H 1300 3700 50  0000 C CNN
F 1 "Conn_SDWP" H 1300 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1300 3600 50  0001 C CNN
F 3 "" H 1300 3600 50  0001 C CNN
	1    1300 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 3500 1500 3500
Text Notes 1250 3200 0    60   ~ 0
SD Write Protect
$Comp
L reform-motherboard-rescue:Conn_01x02 J29
U 1 1 5A621B49
P 5600 4850
F 0 "J29" H 5600 4950 50  0000 C CNN
F 1 "Conn_5V" H 5600 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5600 4850 50  0001 C CNN
F 3 "" H 5600 4850 50  0001 C CNN
	1    5600 4850
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+5V #PWR0122
U 1 1 5A621CBC
P 5200 4850
F 0 "#PWR0122" H 5200 4700 50  0001 C CNN
F 1 "+5V" H 5200 4990 50  0000 C CNN
F 2 "" H 5200 4850 50  0001 C CNN
F 3 "" H 5200 4850 50  0001 C CNN
	1    5200 4850
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0123
U 1 1 5A621D48
P 5200 4950
F 0 "#PWR0123" H 5200 4700 50  0001 C CNN
F 1 "GND" H 5200 4800 50  0000 C CNN
F 2 "" H 5200 4950 50  0001 C CNN
F 3 "" H 5200 4950 50  0001 C CNN
	1    5200 4950
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:MPCIE-Socket U7
U 1 1 5AD63344
P 8550 2300
F 0 "U7" H 8150 3600 60  0000 C CNN
F 1 "mSATA II" H 8650 750 60  0000 C CNN
F 2 "67910-5700:MOLEX_67910-5700" H 8650 1300 60  0001 C CNN
F 3 "" H 8650 1300 60  0000 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
Text GLabel 7900 2050 0    60   Input ~ 0
SATA_TX_P
Text GLabel 7900 2150 0    60   Input ~ 0
SATA_TX_N
Text GLabel 7900 2550 0    60   Output ~ 0
SATA_RX_P
Text GLabel 7900 2450 0    60   Output ~ 0
SATA_RX_N
Text Notes 8350 850  0    60   ~ 0
mSATA II
$Comp
L reform-motherboard-rescue:GND #PWR0124
U 1 1 5AD84AD7
P 7250 3900
F 0 "#PWR0124" H 7250 3650 50  0001 C CNN
F 1 "GND" H 7250 3750 50  0000 C CNN
F 2 "" H 7250 3900 50  0001 C CNN
F 3 "" H 7250 3900 50  0001 C CNN
	1    7250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1850 7900 1850
Wire Wire Line
	7250 1850 7250 3900
Wire Wire Line
	7250 3050 7900 3050
Wire Wire Line
	7900 2650 7250 2650
Connection ~ 7250 3050
Wire Wire Line
	7900 2350 7250 2350
Connection ~ 7250 2650
Wire Wire Line
	7900 2250 7250 2250
Connection ~ 7250 2350
Wire Wire Line
	7900 1950 7250 1950
Connection ~ 7250 2250
Connection ~ 7250 1950
$Comp
L reform-motherboard-rescue:GND #PWR0125
U 1 1 5AD84DC9
P 9450 3900
F 0 "#PWR0125" H 9450 3650 50  0001 C CNN
F 1 "GND" H 9450 3750 50  0000 C CNN
F 2 "" H 9450 3900 50  0001 C CNN
F 3 "" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1250 9450 3900
Wire Wire Line
	9450 2850 9200 2850
Wire Wire Line
	9200 2450 9450 2450
Connection ~ 9450 2850
Wire Wire Line
	9200 2050 9450 2050
Connection ~ 9450 2450
Wire Wire Line
	9200 1750 9450 1750
Connection ~ 9450 2050
Wire Wire Line
	9200 1250 9450 1250
Connection ~ 9450 1750
$Comp
L reform-motherboard-rescue:+3V3 #PWR0126
U 1 1 5AD84FB0
P 10300 1050
F 0 "#PWR0126" H 10300 900 50  0001 C CNN
F 1 "+3V3" H 10300 1190 50  0000 C CNN
F 2 "" H 10300 1050 50  0001 C CNN
F 3 "" H 10300 1050 50  0001 C CNN
	1    10300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1150 10300 1150
Wire Wire Line
	10300 1050 10300 3750
Wire Wire Line
	10300 2550 9200 2550
Connection ~ 10300 1150
Wire Wire Line
	10300 3750 9200 3750
Connection ~ 10300 2550
$Comp
L reform-motherboard-rescue:+3V3 #PWR0127
U 1 1 5AD8519E
P 7100 1100
F 0 "#PWR0127" H 7100 950 50  0001 C CNN
F 1 "+3V3" H 7100 1240 50  0000 C CNN
F 2 "" H 7100 1100 50  0001 C CNN
F 3 "" H 7100 1100 50  0001 C CNN
	1    7100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1650 7100 1650
Wire Wire Line
	7100 1100 7100 1750
Wire Wire Line
	7100 1750 7900 1750
Connection ~ 7100 1650
$Comp
L reform-motherboard-rescue:C_Small C74
U 1 1 5AD89617
P 10050 1300
F 0 "C74" H 10060 1370 50  0000 L CNN
F 1 "10uF" H 10060 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10050 1300 50  0001 C CNN
F 3 "" H 10050 1300 50  0001 C CNN
	1    10050 1300
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0128
U 1 1 5AD8961E
P 10050 1450
F 0 "#PWR0128" H 10050 1200 50  0001 C CNN
F 1 "GND" H 10050 1300 50  0000 C CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "" H 10050 1450 50  0001 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1450 10050 1400
$Comp
L reform-motherboard-rescue:C_Small C66
U 1 1 5AD89625
P 9750 1300
F 0 "C66" H 9760 1370 50  0000 L CNN
F 1 "0.1uF" H 9760 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9750 1300 50  0001 C CNN
F 3 "" H 9750 1300 50  0001 C CNN
	1    9750 1300
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0129
U 1 1 5AD8962C
P 9750 1450
F 0 "#PWR0129" H 9750 1200 50  0001 C CNN
F 1 "GND" H 9750 1300 50  0000 C CNN
F 2 "" H 9750 1450 50  0001 C CNN
F 3 "" H 9750 1450 50  0001 C CNN
	1    9750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1450 9750 1400
Wire Wire Line
	10050 1200 10050 1150
Connection ~ 10050 1150
Wire Wire Line
	9750 1200 9750 1150
Connection ~ 9750 1150
$Comp
L reform-motherboard-rescue:48099-5701 J30
U 1 1 5ADB383A
P 8550 4950
F 0 "J30" H 8430 5121 50  0000 L BNN
F 1 "48099-5701" H 8300 4700 50  0000 L BNN
F 2 "48099-5701:MOLEX_48099-5701" H 8550 4950 50  0001 L BNN
F 3 "48099-5701" H 8550 4950 50  0001 L BNN
F 4 "None" H 8550 4950 50  0001 L BNN "Package"
F 5 "LATCH ASSEMBLY, FOR MINI PCI; Accessory Type: Latch; For Use With: 67910 Series Edge Card Connectors" H 8550 4950 50  0001 L BNN "Description"
F 6 "Molex" H 8550 4950 50  0001 L BNN "MF"
F 7 "Good" H 8550 4950 50  0001 L BNN "Availability"
F 8 "1.06 USD" H 8550 4950 50  0001 L BNN "Price"
	1    8550 4950
	1    0    0    -1  
$EndComp
Text Notes 8250 4550 0    60   ~ 0
mSATA Latch
$Comp
L reform-motherboard-rescue:GND #PWR0130
U 1 1 5ADB3842
P 8250 5250
F 0 "#PWR0130" H 8250 5000 50  0001 C CNN
F 1 "GND" H 8250 5100 50  0000 C CNN
F 2 "" H 8250 5250 50  0001 C CNN
F 3 "" H 8250 5250 50  0001 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0131
U 1 1 5ADB3848
P 8850 5250
F 0 "#PWR0131" H 8850 5000 50  0001 C CNN
F 1 "GND" H 8850 5100 50  0000 C CNN
F 2 "" H 8850 5250 50  0001 C CNN
F 3 "" H 8850 5250 50  0001 C CNN
	1    8850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4900 8250 5250
Wire Wire Line
	8250 4900 8350 4900
Wire Wire Line
	8350 5000 8250 5000
Connection ~ 8250 5000
Wire Wire Line
	8750 5000 8850 5000
Wire Wire Line
	8850 4900 8850 5250
Wire Wire Line
	8750 4900 8850 4900
Connection ~ 8850 5000
Text Notes 7650 1550 0    60   ~ 0
NC
$Comp
L reform-motherboard-rescue:TEST TP1
U 1 1 5ADF82E0
P 7550 1250
F 0 "TP1" H 7550 1550 50  0000 C BNN
F 1 "SATA_DA" H 7550 1500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7550 1250 50  0001 C CNN
F 3 "" H 7550 1250 50  0001 C CNN
	1    7550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1250 7550 1250
Text Notes 1250 3300 0    60   ~ 0
Low: Read/Write
Wire Wire Line
	5200 4850 5400 4850
Wire Wire Line
	5400 4950 5200 4950
Text GLabel 5350 2600 0    60   BiDi ~ 0
SD1_DATA0
Text GLabel 5850 2600 2    60   BiDi ~ 0
SD1_DATA1
Text GLabel 5350 2700 0    60   BiDi ~ 0
SD1_DATA2
Text GLabel 5850 2700 2    60   BiDi ~ 0
SD1_DATA3
Text GLabel 5850 2500 2    60   Input ~ 0
SD1_CMD
$Comp
L reform-motherboard-rescue:GND #PWR0132
U 1 1 5B15CE5E
P 6400 2400
F 0 "#PWR0132" H 6400 2150 50  0001 C CNN
F 1 "GND" V 6400 2200 50  0000 C CNN
F 2 "" H 6400 2400 50  0001 C CNN
F 3 "" H 6400 2400 50  0001 C CNN
	1    6400 2400
	0    -1   -1   0   
$EndComp
Text GLabel 5350 2500 0    60   Input ~ 0
SD1_CLK
$Comp
L reform-motherboard-rescue:+3V3 #PWR0133
U 1 1 5B15D0D0
P 4850 2400
F 0 "#PWR0133" H 4850 2250 50  0001 C CNN
F 1 "+3V3" H 4850 2540 50  0000 C CNN
F 2 "" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
Text Notes 5150 2150 0    60   ~ 0
Additional SD Card
$Comp
L reform-motherboard-rescue:Conn_02x04_Odd_Even J38
U 1 1 5B16F224
P 5550 2500
F 0 "J38" H 5600 2700 50  0000 C CNN
F 1 "Conn_SD1" H 5600 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.00mm" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0001 C CNN
	1    5550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2400 5350 2400
Wire Wire Line
	5850 2400 6400 2400
$EndSCHEMATC
