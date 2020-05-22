EESchema Schematic File Version 4
LIBS:reform-motherboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "MNT Reform I2S Audio"
Date "2018-06-05"
Rev "0.3"
Comp "MNT Media and Technology UG (hb)"
Comment1 "github.com/mntmn/reform"
Comment2 ""
Comment3 "Copyright 2017,2018 Lukas F. Hartmann / @mntmn"
Comment4 "License: GPLv3 https://www.gnu.org/licenses/gpl-3.0.txt"
$EndDescr
$Comp
L reform-motherboard-rescue:SGTL5000XNAA3 U10
U 1 1 5A11FBBE
P 5400 3550
F 0 "U10" H 4700 5350 50  0000 L BNN
F 1 "SGTL5000XNAA3" H 4699 1547 50  0000 L BNN
F 2 "SGTL5000XNAA3:QFN50P500X500X100-33N" H 5400 3550 50  0001 L BNN
F 3 "NXP Semiconductors" H 5400 3550 50  0001 L BNN
F 4 "2.01 USD" H 5400 3550 50  0001 L BNN "Price"
F 5 "Audio Codec , Ultra Low-Power, 4 mw for DAC-to-HP, 98 dB SNR and -80 dB THD+N, QFN 32, Tray" H 5400 3550 50  0001 L BNN "Description"
F 6 "Good" H 5400 3550 50  0001 L BNN "Availability"
F 7 "QFN-32 NXP Semiconductors" H 5400 3550 50  0001 L BNN "Package"
F 8 "SGTL5000XNAA3" H 5400 3550 50  0001 L BNN "MP"
	1    5400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3350 7850 3350
Wire Wire Line
	6300 3250 7900 3250
Wire Wire Line
	3200 3250 4500 3250
Wire Wire Line
	3200 1500 7650 1500
Text GLabel 4500 3650 0    60   Input ~ 0
AUD4_CLK
Text GLabel 4500 3850 0    60   Input ~ 0
AUD4_TXC
Text GLabel 4500 3750 0    60   Input ~ 0
AUD4_TXFS
Text GLabel 4500 3950 0    60   Input ~ 0
AUD4_TXD
Text GLabel 6300 3950 2    60   Output ~ 0
AUD4_RXD
Wire Wire Line
	7950 1950 7950 5800
$Comp
L reform-motherboard-rescue:GND #PWR0224
U 1 1 5A120C9E
P 6300 5400
F 0 "#PWR0224" H 6300 5150 50  0001 C CNN
F 1 "GND" H 6300 5250 50  0000 C CNN
F 2 "" H 6300 5400 50  0001 C CNN
F 3 "" H 6300 5400 50  0001 C CNN
	1    6300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5150 6300 5400
Text GLabel 4500 4150 0    60   BiDi ~ 0
I2C3_SDA
Text GLabel 4500 4250 0    60   Input ~ 0
I2C3_SCL
$Comp
L reform-motherboard-rescue:GND #PWR0225
U 1 1 5A122337
P 4050 4850
F 0 "#PWR0225" H 4050 4600 50  0001 C CNN
F 1 "GND" H 4050 4700 50  0000 C CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4350 4050 4350
Wire Wire Line
	4050 4350 4050 4850
Wire Wire Line
	4500 4450 4050 4450
Connection ~ 4050 4450
Wire Wire Line
	4500 4650 4500 5800
Wire Wire Line
	4500 5800 7950 5800
$Comp
L reform-motherboard-rescue:C_Small C64
U 1 1 5A122A76
P 6500 2950
F 0 "C64" H 6510 3020 50  0000 L CNN
F 1 "1uF" H 6510 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6500 2950 50  0001 C CNN
F 3 "" H 6500 2950 50  0001 C CNN
	1    6500 2950
	0    1    1    0   
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C65
U 1 1 5A122B49
P 6750 3050
F 0 "C65" H 6760 3120 50  0000 L CNN
F 1 "1uF" H 6760 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6750 3050 50  0001 C CNN
F 3 "" H 6750 3050 50  0001 C CNN
	1    6750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2950 6300 2950
Wire Wire Line
	6300 3050 6650 3050
Wire Wire Line
	6600 2950 7050 2950
Wire Wire Line
	6950 3050 6850 3050
$Comp
L reform-motherboard-rescue:C_Small C62
U 1 1 5A122C86
P 4300 2950
F 0 "C62" H 4310 3020 50  0000 L CNN
F 1 "1uF" H 4310 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4300 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
	1    4300 2950
	0    1    1    0   
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C60
U 1 1 5A122CF9
P 3950 3050
F 0 "C60" H 3960 3120 50  0000 L CNN
F 1 "1uF" H 3960 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3950 3050 50  0001 C CNN
F 3 "" H 3950 3050 50  0001 C CNN
	1    3950 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2950 4400 2950
Wire Wire Line
	4500 3050 4050 3050
Wire Wire Line
	3850 3050 3750 3050
Wire Wire Line
	3750 2950 4200 2950
Wire Wire Line
	3300 3450 4500 3450
$Comp
L reform-motherboard-rescue:GND #PWR0226
U 1 1 5A1234F8
P 3300 3650
F 0 "#PWR0226" H 3300 3400 50  0001 C CNN
F 1 "GND" H 3300 3500 50  0000 C CNN
F 2 "" H 3300 3650 50  0001 C CNN
F 3 "" H 3300 3650 50  0001 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
Connection ~ 6300 5250
$Comp
L reform-motherboard-rescue:C_Small C55
U 1 1 5A124351
P 2550 3550
F 0 "C55" H 2560 3620 50  0000 L CNN
F 1 "0.1uF" H 2560 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2550 3550 50  0001 C CNN
F 3 "" H 2550 3550 50  0001 C CNN
	1    2550 3550
	-1   0    0    1   
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0227
U 1 1 5A124399
P 2550 3650
F 0 "#PWR0227" H 2550 3400 50  0001 C CNN
F 1 "GND" H 2550 3500 50  0000 C CNN
F 2 "" H 2550 3650 50  0001 C CNN
F 3 "" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 2550 3450
$Comp
L reform-motherboard-rescue:R_Small R31
U 1 1 5A124AE8
P 2950 3250
F 0 "R31" H 2980 3270 50  0000 L CNN
F 1 "2.2k" H 2980 3210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2950 3250 50  0001 C CNN
F 3 "" H 2950 3250 50  0001 C CNN
	1    2950 3250
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C57
U 1 1 5A124B94
P 3200 2950
F 0 "C57" H 3210 3020 50  0000 L CNN
F 1 "0.1uF" H 3210 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 3350 4500 3350
Wire Wire Line
	3200 1500 3200 2850
Wire Wire Line
	3200 3050 3200 3250
Wire Wire Line
	2950 3150 2950 2550
Wire Wire Line
	2950 2550 3200 2550
Connection ~ 3200 2550
$Comp
L reform-motherboard-rescue:C_Small C56
U 1 1 5A1269AF
P 2950 3550
F 0 "C56" H 2960 3620 50  0000 L CNN
F 1 "0.1uF" H 2960 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2950 3550 50  0001 C CNN
F 3 "" H 2950 3550 50  0001 C CNN
	1    2950 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 3450 2950 3350
$Comp
L reform-motherboard-rescue:GND #PWR0228
U 1 1 5A126A30
P 2950 3650
F 0 "#PWR0228" H 2950 3400 50  0001 C CNN
F 1 "GND" H 2950 3500 50  0000 C CNN
F 2 "" H 2950 3650 50  0001 C CNN
F 3 "" H 2950 3650 50  0001 C CNN
	1    2950 3650
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C63
U 1 1 5A127261
P 6400 2150
F 0 "C63" H 6410 2220 50  0000 L CNN
F 1 "0.1uF" H 6410 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 1950 6400 1950
Wire Wire Line
	6400 1950 6400 2050
$Comp
L reform-motherboard-rescue:C_Small C59
U 1 1 5A127330
P 3750 2000
F 0 "C59" H 3760 2070 50  0000 L CNN
F 1 "0.1uF" H 3760 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3750 2000 50  0001 C CNN
F 3 "" H 3750 2000 50  0001 C CNN
	1    3750 2000
	-1   0    0    1   
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C61
U 1 1 5A1273F1
P 4050 2250
F 0 "C61" H 4060 2320 50  0000 L CNN
F 1 "0.1uF" H 4060 2170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4050 2250 50  0001 C CNN
F 3 "" H 4050 2250 50  0001 C CNN
	1    4050 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1900 4500 2450
Wire Wire Line
	3750 1900 4500 1900
Wire Wire Line
	4050 2150 4350 2150
Wire Wire Line
	4350 2150 4350 2550
Wire Wire Line
	4350 2550 4500 2550
$Comp
L reform-motherboard-rescue:GND #PWR0229
U 1 1 5A1274D7
P 4050 2350
F 0 "#PWR0229" H 4050 2100 50  0001 C CNN
F 1 "GND" H 4050 2200 50  0000 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0230
U 1 1 5A127512
P 3750 2100
F 0 "#PWR0230" H 3750 1850 50  0001 C CNN
F 1 "GND" H 3750 1950 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Connection ~ 4200 2150
Connection ~ 4200 1900
$Comp
L reform-motherboard-rescue:+3V3 #PWR0231
U 1 1 5A1282F7
P 6400 1950
F 0 "#PWR0231" H 6400 1800 50  0001 C CNN
F 1 "+3V3" H 6400 2090 50  0000 C CNN
F 2 "" H 6400 1950 50  0001 C CNN
F 3 "" H 6400 1950 50  0001 C CNN
	1    6400 1950
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0232
U 1 1 5A1289F2
P 6400 2250
F 0 "#PWR0232" H 6400 2000 50  0001 C CNN
F 1 "GND" H 6400 2100 50  0000 C CNN
F 2 "" H 6400 2250 50  0001 C CNN
F 3 "" H 6400 2250 50  0001 C CNN
	1    6400 2250
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:Conn_01x03 J16
U 1 1 5A180365
P 3550 2950
F 0 "J16" H 3550 3150 50  0000 C CNN
F 1 "Conn_LineIn" H 3550 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.00mm" H 3550 2950 50  0001 C CNN
F 3 "" H 3550 2950 50  0001 C CNN
	1    3550 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2750
$Comp
L reform-motherboard-rescue:Conn_01x03 J17
U 1 1 5A18063F
P 7250 2950
F 0 "J17" H 7250 3150 50  0000 C CNN
F 1 "Conn_LineOut" H 7250 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.00mm" H 7250 2950 50  0001 C CNN
F 3 "" H 7250 2950 50  0001 C CNN
	1    7250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3050 6950 2850
Wire Wire Line
	6950 2850 7050 2850
$Comp
L reform-motherboard-rescue:GND #PWR0233
U 1 1 5A1809B9
P 7000 3450
F 0 "#PWR0233" H 7000 3200 50  0001 C CNN
F 1 "GND" H 7000 3300 50  0000 C CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3450 7000 3050
Wire Wire Line
	7000 3050 7050 3050
$Comp
L reform-motherboard-rescue:GND #PWR0234
U 1 1 5A180B77
P 3800 3650
F 0 "#PWR0234" H 3800 3400 50  0001 C CNN
F 1 "GND" H 3800 3500 50  0000 C CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3650 3800 2850
Wire Wire Line
	3800 2850 3750 2850
$Comp
L reform-motherboard-rescue:+1V5 #PWR0235
U 1 1 5A1DA4BE
P 4200 1900
F 0 "#PWR0235" H 4200 1750 50  0001 C CNN
F 1 "+1V5" H 4200 2040 50  0000 C CNN
F 2 "" H 4200 1900 50  0001 C CNN
F 3 "" H 4200 1900 50  0001 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+3V3 #PWR0236
U 1 1 5A4E2A64
P 4200 2150
F 0 "#PWR0236" H 4200 2000 50  0001 C CNN
F 1 "+3V3" H 4200 2290 50  0000 C CNN
F 2 "" H 4200 2150 50  0001 C CNN
F 3 "" H 4200 2150 50  0001 C CNN
	1    4200 2150
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C58
U 1 1 5A123466
P 3300 3550
F 0 "C58" H 3310 3620 50  0000 L CNN
F 1 "0.1uF" H 3310 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3300 3550 50  0001 C CNN
F 3 "" H 3300 3550 50  0001 C CNN
	1    3300 3550
	-1   0    0    1   
$EndComp
Text Notes 4700 5700 0    39   ~ 0
I2C Addr: 0001010
$Comp
L reform-motherboard-rescue:SJ-43516-SMT J18
U 1 1 5B151703
P 7350 2050
F 0 "J18" H 7049 2271 50  0000 L BNN
F 1 "SJ-43516-SMT" H 7050 1630 50  0000 L BNN
F 2 "SJ-43516-SMT:SJ-43516-SMT" H 7350 2050 50  0001 L BNN
F 3 "0.45 USD" H 7350 2050 50  0001 L BNN
F 4 "Unavailable" H 7350 2050 50  0001 L BNN "Availability"
F 5 "CUI" H 7350 2050 50  0001 L BNN "MF"
F 6 "SJ-43516-SMT" H 7350 2050 50  0001 L BNN "MP"
F 7 "Conn 3.5MM Audio Jack F 6 POS Solder RA SMD 6 Terminal 1 Port" H 7350 2050 50  0001 L BNN "Description"
F 8 "None" H 7350 2050 50  0001 L BNN "Package"
	1    7350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1500 7650 1850
Wire Wire Line
	7650 1850 7550 1850
Wire Wire Line
	7950 1950 7550 1950
Wire Wire Line
	7900 3250 7900 2050
Wire Wire Line
	7900 2050 7550 2050
Wire Wire Line
	7850 3350 7850 2350
Wire Wire Line
	7850 2350 7550 2350
$EndSCHEMATC
