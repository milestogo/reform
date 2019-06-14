EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
Title "MNT Reform 2 Ethernet"
Date "2019-06-14"
Rev "0.1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L reform-motherboard-rescue:J0G-0003NL P?
U 1 1 5A04FC73
P 8650 3650
F 0 "P?" H 7846 5811 50  0000 L BNN
F 1 "J0G-0003NL" H 7847 1341 50  0000 L BNN
F 2 "J0G-0003NL:PULSE_J0G-0003NL" H 8650 3650 50  0001 L BNN
F 3 "Conn RJ-45 Integrated Magnetics F 8 POS 2.03mm Solder RA Thru-Hole 17 Terminal 1 Port" H 8650 3650 50  0001 L BNN
F 4 "Pulse" H 8650 3650 50  0001 L BNN "MF"
F 5 "Good" H 8650 3650 50  0001 L BNN "Availability"
F 6 "7.33 USD" H 8650 3650 50  0001 L BNN "Price"
F 7 "J0G-0003NL" H 8650 3650 50  0001 L BNN "MP"
F 8 "None" H 8650 3650 50  0001 L BNN "Package"
	1    8650 3650
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:+3V3 #PWR?
U 1 1 5A04FD4C
P 6750 4750
F 0 "#PWR?" H 6750 4600 50  0001 C CNN
F 1 "+3V3" H 6750 4890 50  0000 C CNN
F 2 "" H 6750 4750 50  0001 C CNN
F 3 "" H 6750 4750 50  0001 C CNN
	1    6750 4750
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C?
U 1 1 5A04FD85
P 6500 5000
F 0 "C?" H 6510 5070 50  0000 L CNN
F 1 "0.1uF" H 6510 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6500 5000 50  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A04FDB4
P 6500 5100
F 0 "#PWR?" H 6500 4850 50  0001 C CNN
F 1 "GND" H 6500 4950 50  0000 C CNN
F 2 "" H 6500 5100 50  0001 C CNN
F 3 "" H 6500 5100 50  0001 C CNN
	1    6500 5100
	1    0    0    -1  
$EndComp
Text GLabel 7650 3050 0    60   BiDi ~ 0
TRD2_N
Text GLabel 7650 2450 0    60   BiDi ~ 0
TRD2_P
Text GLabel 7650 2250 0    60   BiDi ~ 0
TRD3_N
Text GLabel 7650 1650 0    60   BiDi ~ 0
TRD3_P
Text GLabel 7650 5050 0    60   Input ~ 0
ENET_LED_LINK
Text GLabel 7650 5650 0    60   Input ~ 0
ENET_LED_RX
Text GLabel 7650 4650 0    60   BiDi ~ 0
TRD0_N
Text GLabel 7650 4050 0    60   BiDi ~ 0
TRD0_P
Text GLabel 7650 3850 0    60   BiDi ~ 0
TRD1_N
Text GLabel 7650 3250 0    60   BiDi ~ 0
TRD1_P
$Comp
L reform-motherboard-rescue:C_Small C?
U 1 1 5A05122D
P 6950 2050
F 0 "C?" H 6960 2120 50  0000 L CNN
F 1 "0.1uF" H 6960 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C?
U 1 1 5A051336
P 6950 2850
F 0 "C?" H 6960 2920 50  0000 L CNN
F 1 "0.1uF" H 6960 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6950 2850 50  0001 C CNN
F 3 "" H 6950 2850 50  0001 C CNN
	1    6950 2850
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C?
U 1 1 5A0513CA
P 6950 3650
F 0 "C?" H 6960 3720 50  0000 L CNN
F 1 "0.1uF" H 6960 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6950 3650 50  0001 C CNN
F 3 "" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:C_Small C?
U 1 1 5A05141B
P 6950 4450
F 0 "C?" H 6960 4520 50  0000 L CNN
F 1 "0.1uF" H 6960 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6950 4450 50  0001 C CNN
F 3 "" H 6950 4450 50  0001 C CNN
	1    6950 4450
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A118EA5
P 6950 2150
F 0 "#PWR?" H 6950 1900 50  0001 C CNN
F 1 "GND" H 6950 2000 50  0000 C CNN
F 2 "" H 6950 2150 50  0001 C CNN
F 3 "" H 6950 2150 50  0001 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A118FBC
P 6950 2950
F 0 "#PWR?" H 6950 2700 50  0001 C CNN
F 1 "GND" H 6950 2800 50  0000 C CNN
F 2 "" H 6950 2950 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A119060
P 6950 3750
F 0 "#PWR?" H 6950 3500 50  0001 C CNN
F 1 "GND" H 6950 3600 50  0000 C CNN
F 2 "" H 6950 3750 50  0001 C CNN
F 3 "" H 6950 3750 50  0001 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A119104
P 6950 4550
F 0 "#PWR?" H 6950 4300 50  0001 C CNN
F 1 "GND" H 6950 4400 50  0000 C CNN
F 2 "" H 6950 4550 50  0001 C CNN
F 3 "" H 6950 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:GND #PWR?
U 1 1 5A119D9C
P 9750 5550
F 0 "#PWR?" H 9750 5300 50  0001 C CNN
F 1 "GND" H 9750 5400 50  0000 C CNN
F 2 "" H 9750 5550 50  0001 C CNN
F 3 "" H 9750 5550 50  0001 C CNN
	1    9750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4850 6750 4850
Wire Wire Line
	6750 4750 6750 4850
Wire Wire Line
	6750 5450 7650 5450
Connection ~ 6750 4850
Wire Wire Line
	6500 4900 6500 4850
Wire Wire Line
	6950 1950 7650 1950
Wire Wire Line
	7650 4350 6950 4350
Wire Wire Line
	6950 3550 7650 3550
Wire Wire Line
	7650 2750 6950 2750
Wire Wire Line
	9750 5550 9750 5450
Wire Wire Line
	9750 5450 9650 5450
Wire Wire Line
	6750 4850 7650 4850
Wire Wire Line
	6750 4850 6750 5450
$Comp
L Interface_Ethernet:KSZ9031RNXCA U?
U 1 1 5D1C575C
P 3450 3550
F 0 "U?" H 3450 1861 50  0000 C CNN
F 1 "KSZ9031RNXCA" H 3450 1770 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.15x5.15mm" H 3900 2000 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/00002117C.pdf" H 3450 1900 50  0001 C CNN
	1    3450 3550
	1    0    0    -1  
$EndComp
Text GLabel 4750 4350 2    60   BiDi ~ 0
TRD0_N
Text GLabel 4750 4250 2    60   BiDi ~ 0
TRD0_P
Text GLabel 4750 3950 2    60   BiDi ~ 0
TRD1_N
Text GLabel 4750 4050 2    60   BiDi ~ 0
TRD1_P
Text GLabel 4750 3650 2    60   BiDi ~ 0
TRD2_N
Text GLabel 4750 3750 2    60   BiDi ~ 0
TRD2_P
Text GLabel 4750 3350 2    60   BiDi ~ 0
TRD3_N
Text GLabel 4750 3450 2    60   BiDi ~ 0
TRD3_P
Text GLabel 2150 4350 0    60   Input ~ 0
ENET_LED_LINK
Text GLabel 2150 4250 0    60   Input ~ 0
ENET_LED_RX
$EndSCHEMATC
