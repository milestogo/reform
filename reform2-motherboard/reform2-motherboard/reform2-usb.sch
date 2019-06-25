EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "MNT Reform 2 USB"
Date "2019-06-21"
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
P 8750 3650
AR Path="/5D114731" Ref="U?"  Part="1" 
AR Path="/5D06A2FD/5D114731" Ref="U9"  Part="1" 
F 0 "U9" H 7850 1650 50  0000 C CNN
F 1 "TUSB8041" H 7850 1550 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-64-1EP_9x9mm_P0.5mm_EP6x6mm_ThermalVias" H 9950 5650 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tusb8041.pdf" H 8450 3850 50  0001 C CNN
	1    8750 3650
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:Crystal_Small-reform-motherboard-rescue Y1
U 1 1 5D1A9B07
P 6700 2350
AR Path="/5D1A9B07" Ref="Y1"  Part="1" 
AR Path="/5D06A2FD/5D1A9B07" Ref="Y1"  Part="1" 
F 0 "Y1" H 6700 2450 50  0000 C CNN
F 1 "24MHz" H 6700 2250 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 6700 2350 50  0001 C CNN
F 3 "" H 6700 2350 50  0001 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:R_Small-reform-motherboard-rescue R41
U 1 1 5D1A9B0D
P 6700 2100
AR Path="/5D1A9B0D" Ref="R41"  Part="1" 
AR Path="/5D06A2FD/5D1A9B0D" Ref="R41"  Part="1" 
F 0 "R41" H 6730 2120 50  0000 L CNN
F 1 "1M" H 6730 2060 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 2100 50  0001 C CNN
F 3 "" H 6700 2100 50  0001 C CNN
	1    6700 2100
	0    -1   -1   0   
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C21
U 1 1 5D1A9B13
P 7000 2450
AR Path="/5D1A9B13" Ref="C21"  Part="1" 
AR Path="/5D06A2FD/5D1A9B13" Ref="C21"  Part="1" 
F 0 "C21" H 7010 2520 50  0000 L CNN
F 1 "18pF" H 7010 2370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 2450 50  0001 C CNN
F 3 "" H 7000 2450 50  0001 C CNN
	1    7000 2450
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0136
U 1 1 5D1A9B19
P 7000 2550
AR Path="/5D1A9B19" Ref="#PWR0136"  Part="1" 
AR Path="/5D06A2FD/5D1A9B19" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 7000 2300 50  0001 C CNN
F 1 "GND" H 7000 2400 50  0000 C CNN
F 2 "" H 7000 2550 50  0001 C CNN
F 3 "" H 7000 2550 50  0001 C CNN
	1    7000 2550
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C20
U 1 1 5D1A9B1F
P 6400 2450
AR Path="/5D1A9B1F" Ref="C20"  Part="1" 
AR Path="/5D06A2FD/5D1A9B1F" Ref="C20"  Part="1" 
F 0 "C20" H 6410 2520 50  0000 L CNN
F 1 "18pF" H 6410 2370 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6400 2450 50  0001 C CNN
F 3 "" H 6400 2450 50  0001 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
$Comp
L reform2-motherboard-rescue:GND-reform-motherboard-rescue #PWR0137
U 1 1 5D1A9B25
P 6400 2550
AR Path="/5D1A9B25" Ref="#PWR0137"  Part="1" 
AR Path="/5D06A2FD/5D1A9B25" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 6400 2300 50  0001 C CNN
F 1 "GND" H 6400 2400 50  0000 C CNN
F 2 "" H 6400 2550 50  0001 C CNN
F 3 "" H 6400 2550 50  0001 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2350 7000 2350
Wire Wire Line
	6200 2350 6400 2350
Connection ~ 6400 2350
Connection ~ 7000 2350
Wire Wire Line
	6400 2350 6400 2100
Wire Wire Line
	6400 2100 6600 2100
Wire Wire Line
	6800 2100 7000 2100
Wire Wire Line
	7000 2100 7000 2350
Wire Wire Line
	6400 2350 6600 2350
Wire Wire Line
	7000 2350 7250 2350
Text GLabel 6150 3050 0    50   Output ~ 0
USB1_TX_N
Text GLabel 6150 2950 0    50   Output ~ 0
USB1_TX_P
Text GLabel 7450 3450 0    50   Output ~ 0
USB1_DN
Text GLabel 7450 3350 0    50   Output ~ 0
USB1_DP
Text GLabel 7450 3250 0    50   Input ~ 0
USB1_RX_N
Text GLabel 7450 3150 0    50   Input ~ 0
USB1_RX_P
$Comp
L power:GND #PWR0138
U 1 1 5D1C1DA2
P 8750 5800
F 0 "#PWR0138" H 8750 5550 50  0001 C CNN
F 1 "GND" H 8755 5627 50  0000 C CNN
F 2 "" H 8750 5800 50  0001 C CNN
F 3 "" H 8750 5800 50  0001 C CNN
	1    8750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5800 8750 5750
$Comp
L Device:R_Small R59
U 1 1 5D9E4389
P 6350 4550
F 0 "R59" H 6409 4596 50  0000 L CNN
F 1 "4.7k" H 6409 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6350 4550 50  0001 C CNN
F 3 "~" H 6350 4550 50  0001 C CNN
	1    6350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R58
U 1 1 5D9E4EC1
P 6050 4550
F 0 "R58" H 6109 4596 50  0000 L CNN
F 1 "4.7k" H 6109 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6050 4550 50  0001 C CNN
F 3 "~" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4350 6350 4350
Wire Wire Line
	7450 4150 6050 4150
Wire Wire Line
	6050 4150 6050 4450
$Comp
L power:GND #PWR028
U 1 1 5D9E5AD7
P 6050 4750
F 0 "#PWR028" H 6050 4500 50  0001 C CNN
F 1 "GND" H 6055 4577 50  0000 C CNN
F 2 "" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4750 6050 4650
$Comp
L power:GND #PWR029
U 1 1 5D9E5E15
P 6350 4750
F 0 "#PWR029" H 6350 4500 50  0001 C CNN
F 1 "GND" H 6355 4577 50  0000 C CNN
F 2 "" H 6350 4750 50  0001 C CNN
F 3 "" H 6350 4750 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4650 6350 4750
Wire Wire Line
	6350 4450 6350 4350
$Comp
L Device:R_Small R61
U 1 1 5D9E866F
P 6750 1300
F 0 "R61" V 6554 1300 50  0000 C CNN
F 1 "90.9k 1%" V 6645 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6750 1300 50  0001 C CNN
F 3 "~" H 6750 1300 50  0001 C CNN
	1    6750 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R62
U 1 1 5D9E8B2B
P 7000 1500
F 0 "R62" H 7059 1546 50  0000 L CNN
F 1 "10k 1%" H 7059 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 1500 50  0001 C CNN
F 3 "~" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1300 7000 1300
Wire Wire Line
	7000 1400 7000 1300
$Comp
L power:GND #PWR032
U 1 1 5D9E9423
P 7000 1650
F 0 "#PWR032" H 7000 1400 50  0001 C CNN
F 1 "GND" H 7005 1477 50  0000 C CNN
F 2 "" H 7000 1650 50  0001 C CNN
F 3 "" H 7000 1650 50  0001 C CNN
	1    7000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1650 7000 1600
$Comp
L Device:C_Small C43
U 1 1 5D9E9C3A
P 6400 1500
F 0 "C43" H 6492 1546 50  0000 L CNN
F 1 "10uF" H 6492 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6400 1500 50  0001 C CNN
F 3 "~" H 6400 1500 50  0001 C CNN
	1    6400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1300 6400 1300
Wire Wire Line
	6400 1300 6400 1400
$Comp
L power:GND #PWR030
U 1 1 5D9EA2D0
P 6400 1650
F 0 "#PWR030" H 6400 1400 50  0001 C CNN
F 1 "GND" H 6405 1477 50  0000 C CNN
F 2 "" H 6400 1650 50  0001 C CNN
F 3 "" H 6400 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1650 6400 1600
Text GLabel 6100 1300 0    50   Input ~ 0
USB_PWR
Wire Wire Line
	6100 1300 6400 1300
Connection ~ 6400 1300
$Comp
L power:+1V1 #PWR035
U 1 1 5D9F2CBF
P 9050 900
F 0 "#PWR035" H 9050 750 50  0001 C CNN
F 1 "+1V1" H 9065 1073 50  0000 C CNN
F 2 "" H 9050 900 50  0001 C CNN
F 3 "" H 9050 900 50  0001 C CNN
	1    9050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1350 8450 1350
Wire Wire Line
	8450 1350 8450 1550
Wire Wire Line
	8350 1350 8350 1550
Wire Wire Line
	8450 1350 8550 1350
Wire Wire Line
	8550 1350 8550 1550
Connection ~ 8450 1350
Wire Wire Line
	8550 1350 8650 1350
Wire Wire Line
	8650 1350 8650 1550
Connection ~ 8550 1350
Wire Wire Line
	8650 1350 8750 1350
Wire Wire Line
	8750 1350 8750 1550
Connection ~ 8650 1350
Wire Wire Line
	9050 1350 9050 1550
Connection ~ 8750 1350
Wire Wire Line
	8950 1550 8950 1350
Wire Wire Line
	8750 1350 8850 1350
Connection ~ 8950 1350
Wire Wire Line
	8950 1350 9050 1350
Wire Wire Line
	8850 1550 8850 1350
Connection ~ 8850 1350
Wire Wire Line
	8850 1350 8950 1350
$Comp
L power:+3V3 #PWR034
U 1 1 5D9F6507
P 7850 900
F 0 "#PWR034" H 7850 750 50  0001 C CNN
F 1 "+3V3" H 7865 1073 50  0000 C CNN
F 2 "" H 7850 900 50  0001 C CNN
F 3 "" H 7850 900 50  0001 C CNN
	1    7850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1350 7950 1350
Wire Wire Line
	8150 1350 8150 1550
Connection ~ 7850 1350
Wire Wire Line
	7850 1350 7850 1550
Wire Wire Line
	8050 1550 8050 1350
Connection ~ 8050 1350
Wire Wire Line
	8050 1350 8150 1350
Wire Wire Line
	7950 1550 7950 1350
Connection ~ 7950 1350
Wire Wire Line
	7950 1350 8050 1350
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5D9FBA06
P 6500 2950
AR Path="/5D9FBA06" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5D9FBA06" Ref="C44"  Part="1" 
F 0 "C44" H 6510 3020 50  0000 L CNN
F 1 "0.1uF" H 6510 2870 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 2950 50  0001 C CNN
F 3 "" H 6500 2950 50  0001 C CNN
	1    6500 2950
	0    1    1    0   
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5D9FD520
P 6750 3050
AR Path="/5D9FD520" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5D9FD520" Ref="C45"  Part="1" 
F 0 "C45" H 6760 3120 50  0000 L CNN
F 1 "0.1uF" H 6760 2970 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6750 3050 50  0001 C CNN
F 3 "" H 6750 3050 50  0001 C CNN
	1    6750 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 2950 7450 2950
Wire Wire Line
	6400 2950 6150 2950
Wire Wire Line
	6650 3050 6150 3050
Wire Wire Line
	6850 3050 7450 3050
Text GLabel 10050 1850 2    50   Output ~ 0
USB3_1_SSTXP
Text GLabel 10050 1950 2    50   Output ~ 0
USB3_1_SSTXN
Text GLabel 10050 2050 2    50   Output ~ 0
USB3_1_SSRXP
Text GLabel 10050 2150 2    50   Output ~ 0
USB3_1_SSRXN
Text GLabel 10050 2250 2    50   Output ~ 0
USB3_1_DP
Text GLabel 10050 2350 2    50   Output ~ 0
USB3_1_DN
Text GLabel 2500 4250 2    50   Input ~ 0
USB3_1_SSTXP
Text GLabel 2500 4150 2    50   Input ~ 0
USB3_1_SSTXN
Text GLabel 1600 3950 2    50   Input ~ 0
USB3_1_SSRXP
Text GLabel 1600 3850 2    50   Input ~ 0
USB3_1_SSRXN
Text GLabel 1600 3650 2    50   Input ~ 0
USB3_1_DP
Text GLabel 1600 3550 2    50   Input ~ 0
USB3_1_DN
$Comp
L Device:R_Small R55
U 1 1 5DA0DCB3
P 900 4650
F 0 "R55" H 959 4696 50  0000 L CNN
F 1 "1M" H 959 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 900 4650 50  0001 C CNN
F 3 "~" H 900 4650 50  0001 C CNN
	1    900  4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB3_A J6
U 1 1 5DA00825
P 1100 3750
F 0 "J6" H 1157 4467 50  0000 C CNN
F 1 "USB3_A" H 1157 4376 50  0000 C CNN
F 2 "Connector_USB:USB3_A_Molex_48393-001" H 1250 3850 50  0001 C CNN
F 3 "~" H 1250 3850 50  0001 C CNN
	1    1100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5DA0F5B1
P 1450 5050
F 0 "#PWR024" H 1450 4800 50  0001 C CNN
F 1 "GND" H 1455 4877 50  0000 C CNN
F 2 "" H 1450 5050 50  0001 C CNN
F 3 "" H 1450 5050 50  0001 C CNN
	1    1450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5050 1450 4850
Wire Wire Line
	1450 4450 1100 4450
Wire Wire Line
	900  4550 900  4450
Wire Wire Line
	900  4750 900  4850
Wire Wire Line
	900  4850 1450 4850
Connection ~ 1450 4850
Wire Wire Line
	1450 4850 1450 4450
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5DA14D06
P 1900 4150
AR Path="/5DA14D06" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5DA14D06" Ref="C40"  Part="1" 
F 0 "C40" H 1910 4220 50  0000 L CNN
F 1 "0.1uF" H 1910 4070 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1900 4150 50  0001 C CNN
F 3 "" H 1900 4150 50  0001 C CNN
	1    1900 4150
	0    1    1    0   
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5DA15148
P 2150 4250
AR Path="/5DA15148" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5DA15148" Ref="C42"  Part="1" 
F 0 "C42" H 2160 4320 50  0000 L CNN
F 1 "0.1uF" H 2160 4170 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0001 C CNN
	1    2150 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 4250 2500 4250
Wire Wire Line
	2500 4150 2000 4150
Wire Wire Line
	2050 4250 1600 4250
Wire Wire Line
	1800 4150 1600 4150
Text GLabel 10050 2750 2    50   Output ~ 0
USB3_2_SSTXP
Text GLabel 10050 2850 2    50   Output ~ 0
USB3_2_SSTXN
Text GLabel 10050 2950 2    50   Output ~ 0
USB3_2_SSRXP
Text GLabel 10050 3050 2    50   Output ~ 0
USB3_2_SSRXN
Text GLabel 10050 3150 2    50   Output ~ 0
USB3_2_DP
Text GLabel 10050 3250 2    50   Output ~ 0
USB3_2_DN
Text GLabel 10050 3650 2    50   Output ~ 0
USB3_3_SSTXP
Text GLabel 10050 3750 2    50   Output ~ 0
USB3_3_SSTXN
Text GLabel 10050 3850 2    50   Output ~ 0
USB3_3_SSRXP
Text GLabel 10050 3950 2    50   Output ~ 0
USB3_3_SSRXN
Text GLabel 10050 4050 2    50   Output ~ 0
USB3_3_DP
Text GLabel 10050 4150 2    50   Output ~ 0
USB3_3_DN
Text GLabel 10050 4550 2    50   Output ~ 0
USB3_4_SSTXP
Text GLabel 10050 4650 2    50   Output ~ 0
USB3_4_SSTXN
Text GLabel 10050 4750 2    50   Output ~ 0
USB3_4_SSRXP
Text GLabel 10050 4850 2    50   Output ~ 0
USB3_4_SSRXN
Text GLabel 10050 4950 2    50   Output ~ 0
USB3_4_DP
Text GLabel 10050 5050 2    50   Output ~ 0
USB3_4_DN
Text GLabel 2450 6750 2    50   Input ~ 0
USB3_2_SSTXP
Text GLabel 2450 6650 2    50   Input ~ 0
USB3_2_SSTXN
Text GLabel 1550 6450 2    50   Input ~ 0
USB3_2_SSRXP
Text GLabel 1550 6350 2    50   Input ~ 0
USB3_2_SSRXN
Text GLabel 1550 6150 2    50   Input ~ 0
USB3_2_DP
Text GLabel 1550 6050 2    50   Input ~ 0
USB3_2_DN
$Comp
L Device:R_Small R56
U 1 1 5DA23903
P 850 7150
F 0 "R56" H 909 7196 50  0000 L CNN
F 1 "1M" H 909 7105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 850 7150 50  0001 C CNN
F 3 "~" H 850 7150 50  0001 C CNN
	1    850  7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB3_A J5
U 1 1 5DA2390D
P 1050 6250
F 0 "J5" H 1107 6967 50  0000 C CNN
F 1 "USB3_A" H 1107 6876 50  0000 C CNN
F 2 "Connector_USB:USB3_A_Molex_48393-001" H 1200 6350 50  0001 C CNN
F 3 "~" H 1200 6350 50  0001 C CNN
	1    1050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5DA23917
P 1400 7550
F 0 "#PWR025" H 1400 7300 50  0001 C CNN
F 1 "GND" H 1405 7377 50  0000 C CNN
F 2 "" H 1400 7550 50  0001 C CNN
F 3 "" H 1400 7550 50  0001 C CNN
	1    1400 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7550 1400 7350
Wire Wire Line
	1400 6950 1050 6950
Wire Wire Line
	850  7050 850  6950
Wire Wire Line
	850  7250 850  7350
Wire Wire Line
	850  7350 1400 7350
Connection ~ 1400 7350
Wire Wire Line
	1400 7350 1400 6950
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5DA23928
P 1850 6650
AR Path="/5DA23928" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5DA23928" Ref="C39"  Part="1" 
F 0 "C39" H 1860 6720 50  0000 L CNN
F 1 "0.1uF" H 1860 6570 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 6650 50  0001 C CNN
F 3 "" H 1850 6650 50  0001 C CNN
	1    1850 6650
	0    1    1    0   
$EndComp
$Comp
L reform2-motherboard-rescue:C_Small-reform-motherboard-rescue C?
U 1 1 5DA23932
P 2100 6750
AR Path="/5DA23932" Ref="C?"  Part="1" 
AR Path="/5D06A2FD/5DA23932" Ref="C41"  Part="1" 
F 0 "C41" H 2110 6820 50  0000 L CNN
F 1 "0.1uF" H 2110 6670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2100 6750 50  0001 C CNN
F 3 "" H 2100 6750 50  0001 C CNN
	1    2100 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 6750 2450 6750
Wire Wire Line
	2450 6650 1950 6650
Wire Wire Line
	2000 6750 1550 6750
Wire Wire Line
	1750 6650 1550 6650
$Comp
L Interface_USB:TPS2561 U15
U 1 1 5DA289BD
P 2050 1650
F 0 "U15" H 2050 2217 50  0000 C CNN
F 1 "TPS2561" H 2050 2126 50  0000 C CNN
F 2 "Package_SON:VSON-10-1EP_3x3mm_P0.5mm_EP1.65x2.4mm_ThermalVias" H 2250 2150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps2561.pdf" H 1650 2150 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:TPS2561 U16
U 1 1 5DA34B5D
P 4300 1650
F 0 "U16" H 4300 2217 50  0000 C CNN
F 1 "TPS2561" H 4300 2126 50  0000 C CNN
F 2 "Package_SON:VSON-10-1EP_3x3mm_P0.5mm_EP1.65x2.4mm_ThermalVias" H 4500 2150 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps2561.pdf" H 3900 2150 50  0001 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2350 7250 2650
Wire Wire Line
	7250 2650 7450 2650
Wire Wire Line
	6200 2350 6200 2750
Wire Wire Line
	6200 2750 7450 2750
Wire Wire Line
	7000 1300 7400 1300
Wire Wire Line
	7400 1300 7400 2250
Wire Wire Line
	7400 2250 7450 2250
Connection ~ 7000 1300
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5DA4FAF9
P 9050 1100
F 0 "FB2" H 9150 1146 50  0000 L CNN
F 1 "220@100MHz" H 9150 1055 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 8980 1100 50  0001 C CNN
F 3 "~" H 9050 1100 50  0001 C CNN
	1    9050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5DA53C5D
P 7850 1100
F 0 "FB1" H 7950 1146 50  0000 L CNN
F 1 "220@100MHz" H 7950 1055 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 7780 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1200 7850 1350
Wire Wire Line
	9050 900  9050 1000
Wire Wire Line
	7850 900  7850 1000
Wire Wire Line
	9050 1200 9050 1350
Connection ~ 9050 1350
Text Notes 10000 1150 0    50   ~ 0
TODO: 1 million caps
$Comp
L Device:R_Small R57
U 1 1 5DA64888
P 6050 3700
F 0 "R57" H 6109 3746 50  0000 L CNN
F 1 "9.53k" H 6109 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6050 3700 50  0001 C CNN
F 3 "~" H 6050 3700 50  0001 C CNN
	1    6050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3550 6050 3550
Wire Wire Line
	6050 3600 6050 3550
$Comp
L Device:R_Small R63
U 1 1 5DA6B593
P 7050 4800
F 0 "R63" H 7109 4846 50  0000 L CNN
F 1 "4.7k" H 7109 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7050 4800 50  0001 C CNN
F 3 "~" H 7050 4800 50  0001 C CNN
	1    7050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7050 4650
Wire Wire Line
	7050 4650 7050 4700
$Comp
L power:GND #PWR033
U 1 1 5DA72058
P 7050 5000
F 0 "#PWR033" H 7050 4750 50  0001 C CNN
F 1 "GND" H 7055 4827 50  0000 C CNN
F 2 "" H 7050 5000 50  0001 C CNN
F 3 "" H 7050 5000 50  0001 C CNN
	1    7050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5000 7050 4900
$Comp
L power:GND #PWR027
U 1 1 5DA75317
P 6050 3850
F 0 "#PWR027" H 6050 3600 50  0001 C CNN
F 1 "GND" H 6055 3677 50  0000 C CNN
F 2 "" H 6050 3850 50  0001 C CNN
F 3 "" H 6050 3850 50  0001 C CNN
	1    6050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3850 6050 3800
NoConn ~ 7450 4250
Text Notes 2400 2450 0    50   ~ 0
TODO: wire up port power switches
Text Notes 2400 2600 0    50   ~ 0
TODO: internal USB
$Comp
L Device:R_Small R60
U 1 1 5DB86F24
P 6650 4550
F 0 "R60" H 6709 4596 50  0000 L CNN
F 1 "4.7k" H 6709 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6650 4550 50  0001 C CNN
F 3 "~" H 6650 4550 50  0001 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4450 6650 4450
$Comp
L power:GND #PWR031
U 1 1 5DB89628
P 6650 4750
F 0 "#PWR031" H 6650 4500 50  0001 C CNN
F 1 "GND" H 6655 4577 50  0000 C CNN
F 2 "" H 6650 4750 50  0001 C CNN
F 3 "" H 6650 4750 50  0001 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4750 6650 4650
Text GLabel 10050 2450 2    50   Output ~ 0
USB3_1_EN
Text GLabel 10050 3350 2    50   Output ~ 0
USB3_2_EN
Text GLabel 10050 4250 2    50   Output ~ 0
USB3_3_EN
Text GLabel 10050 5150 2    50   Output ~ 0
USB3_4_EN
Text GLabel 1350 1650 0    50   Input ~ 0
USB3_1_EN
Wire Wire Line
	1350 1650 1450 1650
Text GLabel 1350 1750 0    50   Input ~ 0
USB3_2_EN
Wire Wire Line
	1350 1750 1450 1750
Text GLabel 1600 3350 2    50   Input ~ 0
USB3_1_VBUS
Text GLabel 2650 1350 2    50   Output ~ 0
USB3_1_VBUS
Text GLabel 2650 1650 2    50   Output ~ 0
USB3_2_VBUS
$Comp
L power:GND #PWR026
U 1 1 5DB9560B
P 2150 2350
F 0 "#PWR026" H 2150 2100 50  0001 C CNN
F 1 "GND" H 2155 2177 50  0000 C CNN
F 2 "" H 2150 2350 50  0001 C CNN
F 3 "" H 2150 2350 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2350 2150 2250
$Comp
L power:+5V #PWR023
U 1 1 5DB992A4
P 1050 1250
F 0 "#PWR023" H 1050 1100 50  0001 C CNN
F 1 "+5V" H 1065 1423 50  0000 C CNN
F 2 "" H 1050 1250 50  0001 C CNN
F 3 "" H 1050 1250 50  0001 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1250 1050 1350
Wire Wire Line
	1050 1350 1450 1350
Wire Wire Line
	1450 1450 1050 1450
Wire Wire Line
	1050 1450 1050 1350
Connection ~ 1050 1350
Text Notes 800  950  0    50   ~ 0
TODO: beads?
Text GLabel 1550 5850 2    50   Input ~ 0
USB3_2_VBUS
Text Notes 800  850  0    50   ~ 0
TODO: pullup/down on ENs?
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 60F17696
P 3850 3750
F 0 "J9" H 3958 4031 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3958 3940 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Horizontal" H 3850 3750 50  0001 C CNN
F 3 "~" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
Text GLabel 7000 3750 0    50   Input ~ 0
USBH_SCL
Wire Wire Line
	7000 3750 7450 3750
Text GLabel 7000 3850 0    50   Input ~ 0
USBH_SDA
Wire Wire Line
	7000 3850 7450 3850
Text GLabel 6450 7000 0    50   Output ~ 0
USB2_TX_N
Text GLabel 6450 7100 0    50   Output ~ 0
USB2_TX_P
Text GLabel 6450 7200 0    50   Output ~ 0
USB2_DN
Text GLabel 6450 7300 0    50   Output ~ 0
USB2_DP
Text GLabel 6450 6800 0    50   Input ~ 0
USB2_RX_N
Text GLabel 6450 6900 0    50   Input ~ 0
USB2_RX_P
Text Notes 5900 6700 0    50   ~ 0
TODO: 3rd USB
$EndSCHEMATC
