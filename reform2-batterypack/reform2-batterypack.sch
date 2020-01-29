EESchema Schematic File Version 4
LIBS:reform2-batterypack-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L reform2-batterypack:KEYSTONE_54 U2
U 1 1 5F0F9013
P 3450 2850
F 0 "U2" H 3450 2850 50  0001 L BNN
F 1 "KEYSTONE_54" H 3200 3600 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 3450 2850 50  0001 C CNN
F 3 "" H 3450 2850 50  0001 C CNN
	1    3450 2850
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U3
U 1 1 5F0FA857
P 3900 2850
F 0 "U3" H 3900 2850 50  0001 L BNN
F 1 "KEYSTONE_54" H 3650 3600 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 3900 2850 50  0001 C CNN
F 3 "" H 3900 2850 50  0001 C CNN
	1    3900 2850
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U4
U 1 1 5F0FA861
P 4350 2850
F 0 "U4" H 4350 2850 50  0001 L BNN
F 1 "KEYSTONE_54" H 4100 3600 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 4350 2850 50  0001 C CNN
F 3 "" H 4350 2850 50  0001 C CNN
	1    4350 2850
	1    0    0    -1  
$EndComp
$Comp
L reform2-batterypack:KEYSTONE_54 U1
U 1 1 5F0F7120
P 3000 2850
F 0 "U1" H 3000 2850 50  0001 L BNN
F 1 "KEYSTONE_54" H 2750 3600 50  0001 L BNN
F 2 "reform2-batterypack:Keystone54" H 3000 2850 50  0001 C CNN
F 3 "" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2550 3000 2400
Wire Wire Line
	3000 2400 3100 2400
Wire Wire Line
	3250 2400 3250 3150
Wire Wire Line
	3250 3150 3450 3150
Wire Wire Line
	3450 3150 3450 3000
Wire Wire Line
	3450 2550 3450 2400
Wire Wire Line
	3450 2400 3550 2400
Wire Wire Line
	3700 2400 3700 3150
Wire Wire Line
	3700 3150 3900 3150
Wire Wire Line
	3900 3150 3900 3000
Wire Wire Line
	3900 2550 3900 2400
Wire Wire Line
	3900 2400 4000 2400
Wire Wire Line
	4150 2400 4150 3150
Wire Wire Line
	4150 3150 4350 3150
Wire Wire Line
	4350 3150 4350 3000
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5DC7747A
P 3700 1550
F 0 "J1" V 3638 1162 50  0000 R CNN
F 1 "Conn_01x05_Female" V 3547 1162 50  0000 R CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105309-xx05_1x05_P2.50mm_Vertical" H 3700 1550 50  0001 C CNN
F 3 "~" H 3700 1550 50  0001 C CNN
	1    3700 1550
	0    1    -1   0   
$EndComp
Wire Wire Line
	4350 2550 4350 2000
Wire Wire Line
	4350 2000 3900 2000
Wire Wire Line
	3800 2100 4000 2100
Wire Wire Line
	4000 2100 4000 2400
Connection ~ 4000 2400
Wire Wire Line
	4000 2400 4150 2400
Wire Wire Line
	3700 2100 3550 2100
Wire Wire Line
	3550 2100 3550 2400
Connection ~ 3550 2400
Wire Wire Line
	3550 2400 3700 2400
Wire Wire Line
	3600 2000 3100 2000
Wire Wire Line
	3100 2000 3100 2400
Connection ~ 3100 2400
Wire Wire Line
	3100 2400 3250 2400
Wire Wire Line
	2800 3150 3000 3150
Wire Wire Line
	3000 3150 3000 3000
$Comp
L Mechanical:MountingHole H1
U 1 1 5DC7B165
P 1750 2100
F 0 "H1" H 1850 2146 50  0000 L CNN
F 1 "MountingHole" H 1850 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1750 2100 50  0001 C CNN
F 3 "~" H 1750 2100 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DC7B332
P 1750 2300
F 0 "H2" H 1850 2346 50  0000 L CNN
F 1 "MountingHole" H 1850 2255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1750 2300 50  0001 C CNN
F 3 "~" H 1750 2300 50  0001 C CNN
	1    1750 2300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DC7B6D8
P 1750 2500
F 0 "H3" H 1850 2546 50  0000 L CNN
F 1 "MountingHole" H 1850 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1750 2500 50  0001 C CNN
F 3 "~" H 1750 2500 50  0001 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DC7B8FF
P 1750 2700
F 0 "H4" H 1850 2746 50  0000 L CNN
F 1 "MountingHole" H 1850 2655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1750 2700 50  0001 C CNN
F 3 "~" H 1750 2700 50  0001 C CNN
	1    1750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1750 3500 1850
Wire Wire Line
	3500 1850 2800 1850
Wire Wire Line
	2800 1850 2800 3150
Wire Wire Line
	3600 1750 3600 2000
Wire Wire Line
	3700 1750 3700 2100
Wire Wire Line
	3800 1750 3800 2100
Wire Wire Line
	3900 1750 3900 2000
$EndSCHEMATC
