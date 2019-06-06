EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 2
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
L Connector:Jack-DC J?
U 1 1 5CC82E0E
P 1250 1450
F 0 "J?" H 1307 1775 50  0000 C CNN
F 1 "Jack-DC" H 1307 1684 50  0000 C CNN
F 2 "" H 1300 1410 50  0001 C CNN
F 3 "~" H 1300 1410 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 1850 1350
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC83E05
P 4950 7250
F 0 "BT?" H 5068 7346 50  0000 L CNN
F 1 "Battery_Cell" H 5068 7255 50  0000 L CNN
F 2 "" V 4950 7310 50  0001 C CNN
F 3 "~" V 4950 7310 50  0001 C CNN
	1    4950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC8446F
P 4950 7750
F 0 "BT?" H 5068 7846 50  0000 L CNN
F 1 "Battery_Cell" H 5068 7755 50  0000 L CNN
F 2 "" V 4950 7810 50  0001 C CNN
F 3 "~" V 4950 7810 50  0001 C CNN
	1    4950 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7550 4950 7450
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC84A1C
P 4950 5250
F 0 "BT?" H 5068 5346 50  0000 L CNN
F 1 "Battery_Cell" H 5068 5255 50  0000 L CNN
F 2 "" V 4950 5310 50  0001 C CNN
F 3 "~" V 4950 5310 50  0001 C CNN
	1    4950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 8050 4950 7950
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC85454
P 4950 5750
F 0 "BT?" H 5068 5846 50  0000 L CNN
F 1 "Battery_Cell" H 5068 5755 50  0000 L CNN
F 2 "" V 4950 5810 50  0001 C CNN
F 3 "~" V 4950 5810 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5350 4950 5450
$Comp
L Device:D_Schottky D?
U 1 1 5CC8B283
P 5050 1700
F 0 "D?" V 5004 1621 50  0000 R CNN
F 1 "D_Schottky" V 5095 1621 50  0000 R CNN
F 2 "" H 5050 1700 50  0001 C CNN
F 3 "~" H 5050 1700 50  0001 C CNN
	1    5050 1700
	0    -1   1    0   
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC8E8E5
P 4950 8250
F 0 "BT?" H 5068 8346 50  0000 L CNN
F 1 "Battery_Cell" H 5068 8255 50  0000 L CNN
F 2 "" V 4950 8310 50  0001 C CNN
F 3 "~" V 4950 8310 50  0001 C CNN
	1    4950 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC8EDE0
P 4950 8800
F 0 "BT?" H 5068 8896 50  0000 L CNN
F 1 "Battery_Cell" H 5068 8805 50  0000 L CNN
F 2 "" V 4950 8860 50  0001 C CNN
F 3 "~" V 4950 8860 50  0001 C CNN
	1    4950 8800
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC907EA
P 4950 6250
F 0 "BT?" H 5068 6346 50  0000 L CNN
F 1 "Battery_Cell" H 5068 6255 50  0000 L CNN
F 2 "" V 4950 6310 50  0001 C CNN
F 3 "~" V 4950 6310 50  0001 C CNN
	1    4950 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5CC90A08
P 4950 6750
F 0 "BT?" H 5068 6846 50  0000 L CNN
F 1 "Battery_Cell" H 5068 6755 50  0000 L CNN
F 2 "" V 4950 6810 50  0001 C CNN
F 3 "~" V 4950 6810 50  0001 C CNN
	1    4950 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6050 4950 5950
Wire Wire Line
	4950 6550 4950 6400
Wire Wire Line
	4950 7050 4950 6950
$Comp
L power:GND #PWR?
U 1 1 5CC9541B
P 4950 9000
F 0 "#PWR?" H 4950 8750 50  0001 C CNN
F 1 "GND" H 4955 8827 50  0000 C CNN
F 2 "" H 4950 9000 50  0001 C CNN
F 3 "" H 4950 9000 50  0001 C CNN
	1    4950 9000
	1    0    0    -1  
$EndComp
Text Notes 5000 1400 0    50   ~ 0
10v - 12.8v
$Comp
L Transistor_FET:Si2319CDS Q?
U 1 1 5CC96D4E
P 6300 1400
F 0 "Q?" V 6551 1400 50  0000 C CNN
F 1 "Si2319CDS" V 6642 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 1325 50  0001 L CIN
F 3 "http://www.vishay.com/docs/66709/si2319cd.pdf" H 6300 1400 50  0001 L CNN
	1    6300 1400
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:Si2319CDS Q?
U 1 1 5CC97C45
P 6850 1400
F 0 "Q?" V 7101 1400 50  0000 C CNN
F 1 "Si2319CDS" V 7192 1400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 1325 50  0001 L CIN
F 3 "http://www.vishay.com/docs/66709/si2319cd.pdf" H 6850 1400 50  0001 L CNN
	1    6850 1400
	0    -1   1    0   
$EndComp
Wire Wire Line
	6650 1500 6500 1500
$Comp
L Device:D_Schottky D?
U 1 1 5CC98DCF
P 7350 1350
F 0 "D?" V 7396 1429 50  0000 L CNN
F 1 "D_Schottky" V 7305 1429 50  0000 L CNN
F 2 "" H 7350 1350 50  0001 C CNN
F 3 "~" H 7350 1350 50  0001 C CNN
	1    7350 1350
	0    1    -1   0   
$EndComp
Wire Wire Line
	1850 1350 1850 1200
Wire Wire Line
	1850 1200 2350 1200
Connection ~ 1850 1350
Wire Wire Line
	6300 1200 6850 1200
Connection ~ 6300 1200
Wire Wire Line
	6850 1200 7350 1200
Connection ~ 6850 1200
$Comp
L Device:R_Small R?
U 1 1 5CC9BD23
P 2350 1350
F 0 "R?" H 2409 1396 50  0000 L CNN
F 1 "R_Small" H 2409 1305 50  0000 L CNN
F 2 "" H 2350 1350 50  0001 C CNN
F 3 "~" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1250 2350 1200
Connection ~ 2350 1200
Wire Wire Line
	2350 1200 6300 1200
$Comp
L power:GND #PWR?
U 1 1 5CC9C64F
P 2350 1550
F 0 "#PWR?" H 2350 1300 50  0001 C CNN
F 1 "GND" H 2355 1377 50  0000 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "" H 2350 1550 50  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2350 1450
$Comp
L Sensor:INA260 U?
U 1 1 5CC9E442
P 5500 2450
F 0 "U?" H 5500 1869 50  0000 C CNN
F 1 "INA260" H 5500 1960 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5500 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina260.pdf" H 5500 2350 50  0001 C CNN
	1    5500 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 1500 5050 1500
Connection ~ 5050 1500
Wire Wire Line
	5050 1500 6100 1500
Wire Wire Line
	5050 1500 5050 1550
Wire Wire Line
	3950 1500 3950 2100
Wire Wire Line
	5100 2250 5050 2250
Wire Wire Line
	5050 2650 5100 2650
Wire Wire Line
	7050 1500 7350 1500
Connection ~ 7350 1500
Wire Wire Line
	7350 1500 8450 1500
Text Notes 8150 1450 0    50   ~ 0
SYSPOWER
Wire Wire Line
	1850 1350 1850 3050
Wire Wire Line
	5050 1850 5050 2250
Wire Wire Line
	4950 8900 4950 9000
$Comp
L Battery_Management:LTC6803-4 U?
U 1 1 5CEF5F44
P 2950 7500
F 0 "U?" H 2950 9081 50  0000 C CNN
F 1 "LTC6803-4" H 2950 8990 50  0000 C CNN
F 2 "Package_SO:SSOP-44_5.3x12.8mm_P0.5mm" H 2950 7500 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/680324fa.pdf" H 3500 8850 50  0001 C CNN
	1    2950 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 8350 4950 8500
Connection ~ 4950 8500
Wire Wire Line
	4950 8500 4950 8600
Wire Wire Line
	3450 8300 4450 8300
Wire Wire Line
	4450 8300 4450 7950
Wire Wire Line
	4450 7950 4950 7950
Connection ~ 4950 7950
Wire Wire Line
	4950 7950 4950 7850
Wire Wire Line
	3450 8100 4300 8100
Wire Wire Line
	4300 8100 4300 7450
Wire Wire Line
	4300 7450 4950 7450
Connection ~ 4950 7450
Wire Wire Line
	4950 7450 4950 7350
Wire Wire Line
	3450 7900 4150 7900
Wire Wire Line
	4150 7900 4150 6950
Wire Wire Line
	4150 6950 4950 6950
Connection ~ 4950 6950
Wire Wire Line
	4950 6950 4950 6850
Wire Wire Line
	3450 7700 4050 7700
Wire Wire Line
	4050 7700 4050 6400
Wire Wire Line
	4050 6400 4950 6400
Connection ~ 4950 6400
Wire Wire Line
	4950 6400 4950 6350
Wire Wire Line
	3450 7500 3950 7500
Wire Wire Line
	3950 7500 3950 5950
Wire Wire Line
	3950 5950 4950 5950
Connection ~ 4950 5950
Wire Wire Line
	4950 5950 4950 5850
Wire Wire Line
	3450 7300 3850 7300
Wire Wire Line
	3850 7300 3850 5450
Wire Wire Line
	3850 5450 4950 5450
Connection ~ 4950 5450
Wire Wire Line
	4950 5450 4950 5550
$Comp
L Transistor_FET:DMG2301L Q?
U 1 1 5CF0C85B
P 4350 8800
F 0 "Q?" V 4693 8800 50  0000 C CNN
F 1 "DMG2301L" V 4602 8800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4550 8725 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/DMG2301L.pdf" H 4350 8800 50  0001 L CNN
	1    4350 8800
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 8700 4050 8700
Wire Wire Line
	4050 8700 4050 8500
Wire Wire Line
	4050 8500 4950 8500
$Comp
L Device:R_Small R?
U 1 1 5CF119DC
P 3800 8500
F 0 "R?" V 4000 8500 50  0000 C CNN
F 1 "R_Small" V 3900 8500 50  0000 C CNN
F 2 "" H 3800 8500 50  0001 C CNN
F 3 "~" H 3800 8500 50  0001 C CNN
	1    3800 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 8500 4050 8500
Connection ~ 4050 8500
Wire Wire Line
	3700 8500 3450 8500
$Comp
L Device:R_Small R?
U 1 1 5CF1483A
P 4150 9000
F 0 "R?" V 3954 9000 50  0000 C CNN
F 1 "R_Small" V 4045 9000 50  0000 C CNN
F 2 "" H 4150 9000 50  0001 C CNN
F 3 "~" H 4150 9000 50  0001 C CNN
	1    4150 9000
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 9000 4250 9000
Wire Wire Line
	3450 8600 3600 8600
Wire Wire Line
	3600 8600 3600 9000
Wire Wire Line
	3600 9000 4050 9000
Text Notes 2200 9050 0    50   ~ 0
mismatch in datasheet v- / c0\n
$EndSCHEMATC
