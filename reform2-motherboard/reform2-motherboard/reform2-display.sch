EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
Title "MNT Reform 2 Internal Display"
Date "2019-06-14"
Rev "0.1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L reform2:SN65DSI86ZQER U?
U 1 1 5D1D2542
P 4950 3450
F 0 "U?" H 4400 5250 50  0000 C CNN
F 1 "SN65DSI86ZQER" H 4650 1250 50  0000 C CNN
F 2 "BGA64C50P9X9_500X500X100" H 4400 800 50  0001 L BNN
F 3 "" H 4950 3450 50  0001 L BNN
F 4 "Dual-Channel MIPI® DSI to Embedded DisplayPort™ _eDP _ Bridge 64-BGA MICROSTAR JUNIOR -40 to 85" H 2850 950 50  0001 L BNN "Field4"
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D1D45E5
P 5300 5800
F 0 "#PWR?" H 5300 5550 50  0001 C CNN
F 1 "GND" H 5305 5627 50  0000 C CNN
F 2 "" H 5300 5800 50  0001 C CNN
F 3 "" H 5300 5800 50  0001 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5650 5100 5700
Wire Wire Line
	5100 5700 5200 5700
Wire Wire Line
	5500 5700 5500 5650
Wire Wire Line
	5400 5650 5400 5700
Connection ~ 5400 5700
Wire Wire Line
	5400 5700 5500 5700
Wire Wire Line
	5300 5650 5300 5700
Connection ~ 5300 5700
Wire Wire Line
	5300 5700 5400 5700
Wire Wire Line
	5200 5650 5200 5700
Connection ~ 5200 5700
Wire Wire Line
	5200 5700 5300 5700
Wire Wire Line
	5300 5700 5300 5800
NoConn ~ 4250 2950
NoConn ~ 4250 3050
NoConn ~ 4250 3150
NoConn ~ 4250 3250
NoConn ~ 4250 3350
NoConn ~ 4250 3450
NoConn ~ 4250 3550
NoConn ~ 4250 3650
NoConn ~ 4250 3750
NoConn ~ 4250 3850
$EndSCHEMATC
