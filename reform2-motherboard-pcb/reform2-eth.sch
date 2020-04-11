EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title "MNT Reform 2 Ethernet"
Date "2020-04-11"
Rev "2.0D-4"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L reform2-motherboard-rescue:J0G-0003NL-reform-motherboard-rescue P1
U 1 1 5A04FC73
P 6050 3650
AR Path="/5A04FC73" Ref="P1"  Part="1" 
AR Path="/5D06A32E/5A04FC73" Ref="P1"  Part="1" 
F 0 "P1" H 5246 5811 50  0000 L BNN
F 1 "J0G-0003NL" H 5247 1341 50  0000 L BNN
F 2 "footprints:PULSE_J0G-0003NL" H 6050 3650 50  0001 L BNN
F 3 "Conn RJ-45 Integrated Magnetics F 8 POS 2.03mm Solder RA Thru-Hole 17 Terminal 1 Port" H 6050 3650 50  0001 L BNN
F 4 "Good" H 6050 3650 50  0001 L BNN "Availability"
F 5 "Pulse" H 6050 3650 50  0001 C CNN "Manufacturer"
F 6 "J0G-0003NL" H 6050 3650 50  0001 C CNN "Manufacturer_No"
F 7 "y" H 6050 3650 50  0001 C CNN "Checked"
F 8 "Mouser" H 6050 3650 50  0001 C CNN "Distributor"
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:+3V3-reform-motherboard-rescue #PWR0139
U 1 1 5A04FD4C
P 3200 4750
AR Path="/5A04FD4C" Ref="#PWR0139"  Part="1" 
AR Path="/5D06A32E/5A04FD4C" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 3200 4600 50  0001 C CNN
F 1 "+3V3" H 3200 4890 50  0000 C CNN
F 2 "" H 3200 4750 50  0001 C CNN
F 3 "" H 3200 4750 50  0001 C CNN
	1    3200 4750
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C23
U 1 1 5A05122D
P 4350 2050
AR Path="/5A05122D" Ref="C23"  Part="1" 
AR Path="/5D06A32E/5A05122D" Ref="C23"  Part="1" 
F 0 "C23" H 4360 2120 50  0000 L CNN
F 1 "0.1uF" H 4360 1970 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 2050 50  0001 C CNN
F 3 "" H 4350 2050 50  0001 C CNN
F 4 "Yageo" H 4350 2050 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4350 2050 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4350 2050 50  0001 C CNN "Checked"
F 7 "Mouser" H 4350 2050 50  0001 C CNN "Distributor"
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C24
U 1 1 5A051336
P 4350 2850
AR Path="/5A051336" Ref="C24"  Part="1" 
AR Path="/5D06A32E/5A051336" Ref="C24"  Part="1" 
F 0 "C24" H 4360 2920 50  0000 L CNN
F 1 "0.1uF" H 4360 2770 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 2850 50  0001 C CNN
F 3 "" H 4350 2850 50  0001 C CNN
F 4 "Yageo" H 4350 2850 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4350 2850 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4350 2850 50  0001 C CNN "Checked"
F 7 "Mouser" H 4350 2850 50  0001 C CNN "Distributor"
	1    4350 2850
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C25
U 1 1 5A0513CA
P 4350 3650
AR Path="/5A0513CA" Ref="C25"  Part="1" 
AR Path="/5D06A32E/5A0513CA" Ref="C25"  Part="1" 
F 0 "C25" H 4360 3720 50  0000 L CNN
F 1 "0.1uF" H 4360 3570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 3650 50  0001 C CNN
F 3 "" H 4350 3650 50  0001 C CNN
F 4 "Yageo" H 4350 3650 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4350 3650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4350 3650 50  0001 C CNN "Checked"
F 7 "Mouser" H 4350 3650 50  0001 C CNN "Distributor"
	1    4350 3650
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0141
U 1 1 5A118EA5
P 4350 2150
AR Path="/5A118EA5" Ref="#PWR0141"  Part="1" 
AR Path="/5D06A32E/5A118EA5" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4350 1900 50  0001 C CNN
F 1 "GND" H 4350 2000 50  0000 C CNN
F 2 "" H 4350 2150 50  0001 C CNN
F 3 "" H 4350 2150 50  0001 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0142
U 1 1 5A118FBC
P 4350 2950
AR Path="/5A118FBC" Ref="#PWR0142"  Part="1" 
AR Path="/5D06A32E/5A118FBC" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4350 2700 50  0001 C CNN
F 1 "GND" H 4350 2800 50  0000 C CNN
F 2 "" H 4350 2950 50  0001 C CNN
F 3 "" H 4350 2950 50  0001 C CNN
	1    4350 2950
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0143
U 1 1 5A119060
P 4350 3750
AR Path="/5A119060" Ref="#PWR0143"  Part="1" 
AR Path="/5D06A32E/5A119060" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 4350 3500 50  0001 C CNN
F 1 "GND" H 4350 3600 50  0000 C CNN
F 2 "" H 4350 3750 50  0001 C CNN
F 3 "" H 4350 3750 50  0001 C CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0145
U 1 1 5A119D9C
P 7150 5550
AR Path="/5A119D9C" Ref="#PWR0145"  Part="1" 
AR Path="/5D06A32E/5A119D9C" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7150 5300 50  0001 C CNN
F 1 "GND" H 7150 5400 50  0000 C CNN
F 2 "" H 7150 5550 50  0001 C CNN
F 3 "" H 7150 5550 50  0001 C CNN
	1    7150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4750 3200 4850
Wire Wire Line
	3200 5450 5050 5450
Connection ~ 3200 4850
Wire Wire Line
	4350 1950 5050 1950
Wire Wire Line
	4350 3550 5050 3550
Wire Wire Line
	5050 2750 4350 2750
Wire Wire Line
	7150 5550 7150 5450
Wire Wire Line
	7150 5450 7050 5450
Wire Wire Line
	3200 4850 5050 4850
Wire Wire Line
	3200 4850 3200 5450
Text GLabel 4800 5650 0    60   Input ~ 0
ETH0_LED_LINK1
Text GLabel 4800 5050 0    60   Input ~ 0
ETH0_LED_RX
Text GLabel 5050 2250 0    60   Output ~ 0
ETH0_D-
Text GLabel 5050 1650 0    60   Output ~ 0
ETH0_D+
Text GLabel 5050 3050 0    60   Output ~ 0
ETH0_C-
Text GLabel 5050 2450 0    60   Output ~ 0
ETH0_C+
Text GLabel 5050 3850 0    60   Output ~ 0
ETH0_B-
Text GLabel 5050 3250 0    60   Output ~ 0
ETH0_B+
Text GLabel 5050 4650 0    60   Output ~ 0
ETH0_A-
Text GLabel 5050 4050 0    60   Output ~ 0
ETH0_A+
Text GLabel 4800 5250 0    60   Input ~ 0
ETH0_LED_LINK2
Wire Wire Line
	2950 4900 2950 4850
Wire Wire Line
	2950 4850 3200 4850
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0140
U 1 1 5A04FDB4
P 2950 5100
AR Path="/5A04FDB4" Ref="#PWR0140"  Part="1" 
AR Path="/5D06A32E/5A04FDB4" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 2950 4850 50  0001 C CNN
F 1 "GND" H 2950 4950 50  0000 C CNN
F 2 "" H 2950 5100 50  0001 C CNN
F 3 "" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C22
U 1 1 5A04FD85
P 2950 5000
AR Path="/5A04FD85" Ref="C22"  Part="1" 
AR Path="/5D06A32E/5A04FD85" Ref="C22"  Part="1" 
F 0 "C22" H 2960 5070 50  0000 L CNN
F 1 "0.1uF" H 2960 4920 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2950 5000 50  0001 C CNN
F 3 "" H 2950 5000 50  0001 C CNN
F 4 "Yageo" H 2950 5000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 2950 5000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 2950 5000 50  0001 C CNN "Checked"
F 7 "Mouser" H 2950 5000 50  0001 C CNN "Distributor"
	1    2950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4350 4350 4350
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0144
U 1 1 5A119104
P 4350 4550
AR Path="/5A119104" Ref="#PWR0144"  Part="1" 
AR Path="/5D06A32E/5A119104" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 4350 4300 50  0001 C CNN
F 1 "GND" H 4350 4400 50  0000 C CNN
F 2 "" H 4350 4550 50  0001 C CNN
F 3 "" H 4350 4550 50  0001 C CNN
	1    4350 4550
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C26
U 1 1 5A05141B
P 4350 4450
AR Path="/5A05141B" Ref="C26"  Part="1" 
AR Path="/5D06A32E/5A05141B" Ref="C26"  Part="1" 
F 0 "C26" H 4360 4520 50  0000 L CNN
F 1 "0.1uF" H 4360 4370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0001 C CNN
F 4 "Yageo" H 4350 4450 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 4350 4450 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4350 4450 50  0001 C CNN "Checked"
F 7 "Mouser" H 4350 4450 50  0001 C CNN "Distributor"
	1    4350 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R116
U 1 1 5D3F4205
P 4950 5050
F 0 "R116" V 4850 5050 50  0000 C CNN
F 1 "0" V 4950 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 5050 50  0001 C CNN
F 3 "~" H 4950 5050 50  0001 C CNN
F 4 "Vishay Dale" H 4950 5050 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4950 5050 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4950 5050 50  0001 C CNN "Distributor"
F 7 "y" H 4950 5050 50  0001 C CNN "Checked"
	1    4950 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R146
U 1 1 5D3F4A40
P 4950 5250
F 0 "R146" V 4850 5250 50  0000 C CNN
F 1 "0" V 4950 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 5250 50  0001 C CNN
F 3 "~" H 4950 5250 50  0001 C CNN
F 4 "Vishay Dale" H 4950 5250 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4950 5250 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4950 5250 50  0001 C CNN "Distributor"
F 7 "y" H 4950 5250 50  0001 C CNN "Checked"
	1    4950 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R147
U 1 1 5D3F5686
P 4950 5650
F 0 "R147" V 4850 5650 50  0000 C CNN
F 1 "0" V 4950 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 5650 50  0001 C CNN
F 3 "~" H 4950 5650 50  0001 C CNN
F 4 "Vishay Dale" H 4950 5650 50  0001 C CNN "Manufacturer"
F 5 "CRCW06030000Z0EAC" H 4950 5650 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 4950 5650 50  0001 C CNN "Distributor"
F 7 "y" H 4950 5650 50  0001 C CNN "Checked"
	1    4950 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5650 4850 5650
Wire Wire Line
	4800 5250 4850 5250
Wire Wire Line
	4800 5050 4850 5050
Text Notes 5250 6250 0    50   ~ 0
Equiv: TE 1-2301994-1
$EndSCHEMATC
