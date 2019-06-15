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
L reform2:SN65DSI86ZQER U10
U 1 1 5D1D2542
P 4950 3450
F 0 "U10" H 4400 5250 50  0000 C CNN
F 1 "SN65DSI86ZQER" H 4650 1250 50  0000 C CNN
F 2 "Package_QFP:HTQFP-64-1EP_10x10mm_P0.5mm_EP8x8mm" H 4400 800 50  0001 L BNN
F 3 "" H 4950 3450 50  0001 L BNN
F 4 "Dual-Channel MIPI® DSI to Embedded DisplayPort™ _eDP _ Bridge 64-BGA MICROSTAR JUNIOR -40 to 85" H 2850 950 50  0001 L BNN "Field4"
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5D1D45E5
P 5300 5800
F 0 "#PWR0146" H 5300 5550 50  0001 C CNN
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
Text GLabel 4250 2550 0    50   Input ~ 0
DSI_D3_N
Text GLabel 4250 2450 0    50   Input ~ 0
DSI_D3_P
Text GLabel 4250 1950 0    50   Input ~ 0
DSI_D0_N
Text GLabel 4250 1850 0    50   Input ~ 0
DSI_D0_P
Text GLabel 4250 2750 0    50   Input ~ 0
DSI_CLK_N
Text GLabel 4250 2650 0    50   Input ~ 0
DSI_CLK_P
Text GLabel 4250 2150 0    50   Input ~ 0
DSI_D1_N
Text GLabel 4250 2050 0    50   Input ~ 0
DSI_D1_P
Text GLabel 4250 2250 0    50   Input ~ 0
DSI_D2_P
Text GLabel 4250 2350 0    50   Input ~ 0
DSI_D2_N
$Comp
L Connector_Generic:Conn_01x30 J2
U 1 1 5DA8371C
P 8900 3650
F 0 "J2" H 8980 3642 50  0000 L CNN
F 1 "EDP_30" H 8980 3551 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-30S-0.5SH_1x30-1MP_P0.50mm_Horizontal" H 8900 3650 50  0001 C CNN
F 3 "~" H 8900 3650 50  0001 C CNN
	1    8900 3650
	1    0    0    -1  
$EndComp
Text GLabel 8700 2750 0    50   Input ~ 0
EDP_TX0_DP
Text GLabel 8700 2850 0    50   Input ~ 0
EDP_TX0_DN
Text GLabel 8700 2450 0    50   Input ~ 0
EDP_TX1_DP
Text GLabel 8700 2550 0    50   Input ~ 0
EDP_TX1_DN
Text GLabel 8700 3050 0    50   Input ~ 0
EDP_AUX_DP
Text GLabel 8700 3150 0    50   Input ~ 0
EDP_AUX_DN
Text Label 8700 3350 2    50   ~ 0
EDP_LCD_VCC
Text Label 8700 3450 2    50   ~ 0
EDP_LCD_VCC
Text Label 8700 3650 2    50   ~ 0
EDP_LCD_VCC
Text Label 8700 3750 2    50   ~ 0
EDP_LCD_VCC
Text Label 8700 3850 2    50   ~ 0
EDP_HPD
Text Label 8700 3950 2    50   ~ 0
EDP_BL_GND
Text Label 8700 4050 2    50   ~ 0
EDP_BL_GND
Text Label 8700 4150 2    50   ~ 0
EDP_BL_GND
Text Label 8700 4250 2    50   ~ 0
EDP_BL_GND
Text Label 8700 4350 2    50   ~ 0
EDP_BL_ENABLE
Text Label 8700 4450 2    50   ~ 0
EDP_BL_PWM
NoConn ~ 8700 4550
NoConn ~ 8700 4650
NoConn ~ 8700 5150
Text Label 8700 4750 2    50   ~ 0
EDP_BL_VCC
Text Label 8700 4850 2    50   ~ 0
EDP_BL_VCC
Text Label 8700 4950 2    50   ~ 0
EDP_BL_VCC
Text Label 8700 5050 2    50   ~ 0
EDP_BL_VCC
Text Label 8700 3550 2    50   ~ 0
EDP_LCD_TEST
$Comp
L power:GND #PWR0147
U 1 1 5DA89FD9
P 8050 3250
F 0 "#PWR0147" H 8050 3000 50  0001 C CNN
F 1 "GND" V 8055 3122 50  0000 R CNN
F 2 "" H 8050 3250 50  0001 C CNN
F 3 "" H 8050 3250 50  0001 C CNN
	1    8050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3250 8700 3250
$Comp
L power:GND #PWR0148
U 1 1 5DA8A3CC
P 8050 2950
F 0 "#PWR0148" H 8050 2700 50  0001 C CNN
F 1 "GND" V 8055 2822 50  0000 R CNN
F 2 "" H 8050 2950 50  0001 C CNN
F 3 "" H 8050 2950 50  0001 C CNN
	1    8050 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5DA8A5CE
P 8050 2650
F 0 "#PWR0149" H 8050 2400 50  0001 C CNN
F 1 "GND" V 8055 2522 50  0000 R CNN
F 2 "" H 8050 2650 50  0001 C CNN
F 3 "" H 8050 2650 50  0001 C CNN
	1    8050 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5DA8A7A0
P 8050 2350
F 0 "#PWR0150" H 8050 2100 50  0001 C CNN
F 1 "GND" V 8055 2222 50  0000 R CNN
F 2 "" H 8050 2350 50  0001 C CNN
F 3 "" H 8050 2350 50  0001 C CNN
	1    8050 2350
	0    1    1    0   
$EndComp
NoConn ~ 8700 2250
Wire Wire Line
	8050 2350 8700 2350
Wire Wire Line
	8700 2650 8050 2650
Wire Wire Line
	8050 2950 8700 2950
Text GLabel 5900 2550 2    50   Output ~ 0
EDP_TX1_DP
Text GLabel 5900 2450 2    50   Output ~ 0
EDP_TX1_DN
Text GLabel 5900 2850 2    50   Output ~ 0
EDP_TX0_DP
Text GLabel 5900 2750 2    50   Output ~ 0
EDP_TX0_DN
Text GLabel 5900 3150 2    50   Output ~ 0
EDP_AUX_DP
Text GLabel 5900 3050 2    50   Output ~ 0
EDP_AUX_DN
Text Label 6100 3750 0    50   ~ 0
EDP_HPD
Wire Wire Line
	6100 3750 5900 3750
$EndSCHEMATC
