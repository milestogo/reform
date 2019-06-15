EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "MNT Reform 2 USB"
Date "2019-06-14"
Rev "0.1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:TUSB8041 U?
U 1 1 5D114731
P 8350 3250
AR Path="/5D114731" Ref="U?"  Part="1" 
AR Path="/5D06A2FD/5D114731" Ref="U9"  Part="1" 
F 0 "U9" H 7450 1250 50  0000 C CNN
F 1 "TUSB8041" H 7450 1150 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-64-1EP_9x9mm_P0.5mm_EP6x6mm_ThermalVias" H 9550 5250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tusb8041.pdf" H 8050 3450 50  0001 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:Crystal_Small Y1
U 1 1 5D1A9B07
P 3550 2200
F 0 "Y1" H 3550 2300 50  0000 C CNN
F 1 "24MHz" H 3550 2100 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:R_Small R41
U 1 1 5D1A9B0D
P 3550 1950
F 0 "R41" H 3580 1970 50  0000 L CNN
F 1 "1M" H 3580 1910 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 1950 50  0001 C CNN
F 3 "" H 3550 1950 50  0001 C CNN
	1    3550 1950
	0    -1   -1   0   
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C21
U 1 1 5D1A9B13
P 3850 2300
F 0 "C21" H 3860 2370 50  0000 L CNN
F 1 "18pF" H 3860 2220 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3850 2300 50  0001 C CNN
F 3 "" H 3850 2300 50  0001 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0136
U 1 1 5D1A9B19
P 3850 2400
F 0 "#PWR0136" H 3850 2150 50  0001 C CNN
F 1 "GND" H 3850 2250 50  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C20
U 1 1 5D1A9B1F
P 3250 2300
F 0 "C20" H 3260 2370 50  0000 L CNN
F 1 "18pF" H 3260 2220 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3250 2300 50  0001 C CNN
F 3 "" H 3250 2300 50  0001 C CNN
	1    3250 2300
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR0137
U 1 1 5D1A9B25
P 3250 2400
F 0 "#PWR0137" H 3250 2150 50  0001 C CNN
F 1 "GND" H 3250 2250 50  0000 C CNN
F 2 "" H 3250 2400 50  0001 C CNN
F 3 "" H 3250 2400 50  0001 C CNN
	1    3250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2200 3850 2200
Wire Wire Line
	2500 2200 3250 2200
Connection ~ 3250 2200
Connection ~ 3850 2200
Wire Wire Line
	3250 2200 3250 1950
Wire Wire Line
	3250 1950 3450 1950
Wire Wire Line
	3650 1950 3850 1950
Wire Wire Line
	3850 1950 3850 2200
Wire Wire Line
	3250 2200 3450 2200
Wire Wire Line
	3850 2200 4600 2200
Text GLabel 7050 2650 0    50   Output ~ 0
USB1_TX_N
Text GLabel 7050 2550 0    50   Output ~ 0
USB1_TX_P
Text GLabel 7050 3050 0    50   Output ~ 0
USB1_DN
Text GLabel 7050 2950 0    50   Output ~ 0
USB1_DP
Text GLabel 7050 2850 0    50   Input ~ 0
USB1_RX_N
Text GLabel 7050 2750 0    50   Input ~ 0
USB1_RX_P
$Comp
L power:GND #PWR0138
U 1 1 5D1C1DA2
P 8350 5400
F 0 "#PWR0138" H 8350 5150 50  0001 C CNN
F 1 "GND" H 8355 5227 50  0000 C CNN
F 2 "" H 8350 5400 50  0001 C CNN
F 3 "" H 8350 5400 50  0001 C CNN
	1    8350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5400 8350 5350
$EndSCHEMATC
