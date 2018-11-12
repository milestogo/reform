EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:reform-trackball-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Reform Trackball"
Date "2018-11-11"
Rev "1"
Comp "MNT Media and Technology UG"
Comment1 "License: GPLv3+ https://www.gnu.org/licenses/gpl-3.0.en.html"
Comment2 "Copyright 2017,2018 Lukas F. Hartmann / mntmn"
Comment3 "https://mntmn.com/reform"
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega32U2-AU U1
U 1 1 5B5DCA22
P 5750 3550
F 0 "U1" H 6050 2200 50  0000 C CNN
F 1 "ATmega32U2-AU" H 6150 2100 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 5750 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc7799.pdf" H 5750 3550 50  0001 C CNN
	1    5750 3550
	1    0    0    -1  
$EndComp
$Comp
L reform-trackball:ML SW1
U 1 1 5B5DCCA1
P 8300 3800
F 0 "SW1" H 8591 3921 50  0000 L CNN
F 1 "ML" H 8591 3830 50  0000 L CNN
F 2 "mntcomp-keyboard:cherry-ml" H 8300 3800 50  0001 C CNN
F 3 "" H 8300 3800 50  0000 C CNN
	1    8300 3800
	1    0    0    -1  
$EndComp
$Comp
L reform-trackball:ML SW2
U 1 1 5B5F13A7
P 8950 3700
F 0 "SW2" H 9241 3821 50  0000 L CNN
F 1 "ML" H 9241 3730 50  0000 L CNN
F 2 "mntcomp-keyboard:cherry-ml" H 8950 3700 50  0001 C CNN
F 3 "" H 8950 3700 50  0000 C CNN
	1    8950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5B5F150B
P 8950 4150
F 0 "#PWR0101" H 8950 3900 50  0001 C CNN
F 1 "GND" H 8955 3977 50  0000 C CNN
F 2 "" H 8950 4150 50  0001 C CNN
F 3 "" H 8950 4150 50  0001 C CNN
	1    8950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4150 8950 4050
Wire Wire Line
	8300 4000 8300 4050
Wire Wire Line
	8300 4050 8950 4050
Connection ~ 8950 4050
Wire Wire Line
	8950 4050 8950 3900
$Comp
L power:GND #PWR0102
U 1 1 5B5F1598
P 5750 5400
F 0 "#PWR0102" H 5750 5150 50  0001 C CNN
F 1 "GND" H 5755 5227 50  0000 C CNN
F 2 "" H 5750 5400 50  0001 C CNN
F 3 "" H 5750 5400 50  0001 C CNN
	1    5750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5400 5750 5300
Wire Wire Line
	5650 4950 5650 5300
Wire Wire Line
	5650 5300 5750 5300
Connection ~ 5750 5300
Wire Wire Line
	5750 5300 5750 4950
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5B5F1753
P 3050 3050
F 0 "J1" H 3156 3328 50  0000 C CNN
F 1 "Conn_USB" H 3156 3237 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 3050 3050 50  0001 C CNN
F 3 "~" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3050 3250 3050
Wire Wire Line
	3250 3150 5050 3150
$Comp
L power:GND #PWR0103
U 1 1 5B5F191B
P 3350 3500
F 0 "#PWR0103" H 3350 3250 50  0001 C CNN
F 1 "GND" H 3355 3327 50  0000 C CNN
F 2 "" H 3350 3500 50  0001 C CNN
F 3 "" H 3350 3500 50  0001 C CNN
	1    3350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3500 3350 2950
Wire Wire Line
	3350 2950 3250 2950
Wire Wire Line
	3250 3250 3450 3250
Wire Wire Line
	3450 3250 3450 2000
Wire Wire Line
	3450 2000 4100 2000
Wire Wire Line
	5650 2000 5650 2150
Wire Wire Line
	5650 2000 5750 2000
Wire Wire Line
	5750 2000 5750 2150
Connection ~ 5650 2000
Wire Wire Line
	5750 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2150
Connection ~ 5750 2000
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5B5DC761
P 3600 5500
F 0 "J2" V 3528 5427 50  0000 C CNN
F 1 "Conn_Sensor" V 3437 5427 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 3600 5500 50  0001 C CNN
F 3 "~" H 3600 5500 50  0001 C CNN
	1    3600 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5B5DCB57
P 3450 2000
F 0 "#PWR02" H 3450 1850 50  0001 C CNN
F 1 "+5V" H 3465 2173 50  0000 C CNN
F 2 "" H 3450 2000 50  0001 C CNN
F 3 "" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Connection ~ 3450 2000
$Comp
L power:+5V #PWR01
U 1 1 5B5DCB73
P 3300 4900
F 0 "#PWR01" H 3300 4750 50  0001 C CNN
F 1 "+5V" H 3315 5073 50  0000 C CNN
F 2 "" H 3300 4900 50  0001 C CNN
F 3 "" H 3300 4900 50  0001 C CNN
	1    3300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4900 3300 5300
Text GLabel 3400 5300 1    60   Input ~ 0
MISO
Text GLabel 3500 5300 1    60   Input ~ 0
MOSI
Text GLabel 3600 5300 1    60   Input ~ 0
SCLK
Text GLabel 3700 5300 1    60   Input ~ 0
SS
Text GLabel 3800 5300 1    60   Input ~ 0
MT
Text GLabel 4000 5300 1    60   Input ~ 0
RESET
$Comp
L power:GND #PWR03
U 1 1 5B5DCF8B
P 3900 4900
F 0 "#PWR03" H 3900 4650 50  0001 C CNN
F 1 "GND" H 3905 4727 50  0000 C CNN
F 2 "" H 3900 4900 50  0001 C CNN
F 3 "" H 3900 4900 50  0001 C CNN
	1    3900 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 4900 3900 5300
Text GLabel 6650 2650 2    60   Input ~ 0
MOSI
Wire Wire Line
	6650 2650 6450 2650
Text GLabel 6650 2550 2    60   Input ~ 0
SCLK
Wire Wire Line
	6650 2550 6450 2550
Text GLabel 6650 2750 2    60   Input ~ 0
MISO
Wire Wire Line
	6650 2750 6450 2750
Text GLabel 6650 2950 2    60   Input ~ 0
MT
Wire Wire Line
	6450 2950 6650 2950
Wire Wire Line
	8300 3450 6450 3450
Wire Wire Line
	6450 3350 8950 3350
Text GLabel 6650 3050 2    60   Input ~ 0
RESET
Wire Wire Line
	6650 3050 6450 3050
Text GLabel 6650 3150 2    60   Input ~ 0
SS
Wire Wire Line
	6650 3150 6450 3150
$Comp
L Mechanical:Mounting_Hole MK2
U 1 1 5B5F3C4A
P 7450 5050
F 0 "MK2" H 7550 5096 50  0000 L CNN
F 1 "Mounting_Hole" H 7550 5005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_DIN965" H 7450 5050 50  0001 C CNN
F 3 "" H 7450 5050 50  0001 C CNN
	1    7450 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK3
U 1 1 5B5F3C76
P 7450 5250
F 0 "MK3" H 7550 5296 50  0000 L CNN
F 1 "Mounting_Hole" H 7550 5205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_DIN965" H 7450 5250 50  0001 C CNN
F 3 "" H 7450 5250 50  0001 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK4
U 1 1 5B5F3C9A
P 7450 5450
F 0 "MK4" H 7550 5496 50  0000 L CNN
F 1 "Mounting_Hole" H 7550 5405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_DIN965" H 7450 5450 50  0001 C CNN
F 3 "" H 7450 5450 50  0001 C CNN
	1    7450 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK5
U 1 1 5B5F3DA7
P 8450 4850
F 0 "MK5" H 8550 4896 50  0000 L CNN
F 1 "Mounting_Hole" H 8550 4805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm" H 8450 4850 50  0001 C CNN
F 3 "" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK6
U 1 1 5B5F3DAD
P 8450 5050
F 0 "MK6" H 8550 5096 50  0000 L CNN
F 1 "Mounting_Hole" H 8550 5005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm" H 8450 5050 50  0001 C CNN
F 3 "" H 8450 5050 50  0001 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK7
U 1 1 5B5F3DB3
P 8450 5250
F 0 "MK7" H 8550 5296 50  0000 L CNN
F 1 "Mounting_Hole" H 8550 5205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm" H 8450 5250 50  0001 C CNN
F 3 "" H 8450 5250 50  0001 C CNN
	1    8450 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK8
U 1 1 5B5F3DB9
P 8450 5450
F 0 "MK8" H 8550 5496 50  0000 L CNN
F 1 "Mounting_Hole" H 8550 5405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_4mm" H 8450 5450 50  0001 C CNN
F 3 "" H 8450 5450 50  0001 C CNN
	1    8450 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK9
U 1 1 5B5F4257
P 9400 4850
F 0 "MK9" H 9500 4896 50  0000 L CNN
F 1 "Mounting_Hole" H 9500 4805 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 9400 4850 50  0001 C CNN
F 3 "" H 9400 4850 50  0001 C CNN
	1    9400 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK10
U 1 1 5B5F425D
P 9400 5050
F 0 "MK10" H 9500 5096 50  0000 L CNN
F 1 "Mounting_Hole" H 9500 5005 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 9400 5050 50  0001 C CNN
F 3 "" H 9400 5050 50  0001 C CNN
	1    9400 5050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK11
U 1 1 5B5F4263
P 9400 5250
F 0 "MK11" H 9500 5296 50  0000 L CNN
F 1 "Mounting_Hole" H 9500 5205 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 9400 5250 50  0001 C CNN
F 3 "" H 9400 5250 50  0001 C CNN
	1    9400 5250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Mounting_Hole MK12
U 1 1 5B5F4269
P 9400 5450
F 0 "MK12" H 9500 5496 50  0000 L CNN
F 1 "Mounting_Hole" H 9500 5405 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 9400 5450 50  0001 C CNN
F 3 "" H 9400 5450 50  0001 C CNN
	1    9400 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5B5F4C0A
P 4100 2150
F 0 "C3" H 4192 2196 50  0000 L CNN
F 1 "0.1uF" H 4192 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4100 2150 50  0001 C CNN
F 3 "~" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2050 4100 2000
Connection ~ 4100 2000
Wire Wire Line
	4100 2000 4900 2000
$Comp
L power:GND #PWR05
U 1 1 5B5F50BF
P 4100 2250
F 0 "#PWR05" H 4100 2000 50  0001 C CNN
F 1 "GND" H 4105 2077 50  0000 C CNN
F 2 "" H 4100 2250 50  0001 C CNN
F 3 "" H 4100 2250 50  0001 C CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5B5F5601
P 4700 3500
F 0 "C4" H 4792 3546 50  0000 L CNN
F 1 "1uF" H 4792 3455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4700 3500 50  0001 C CNN
F 3 "~" H 4700 3500 50  0001 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3400 4700 3350
Wire Wire Line
	4700 3350 5050 3350
$Comp
L power:GND #PWR07
U 1 1 5B5F5B5F
P 4700 3600
F 0 "#PWR07" H 4700 3350 50  0001 C CNN
F 1 "GND" H 4705 3427 50  0000 C CNN
F 2 "" H 4700 3600 50  0001 C CNN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5B5F78A5
P 7700 4250
F 0 "J7" V 7573 4330 50  0000 L CNN
F 1 "Conn_HWB" V 7664 4330 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7700 4250 50  0001 C CNN
F 3 "~" H 7700 4250 50  0001 C CNN
	1    7700 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5B5F7EBC
P 7700 3900
F 0 "#PWR010" H 7700 3650 50  0001 C CNN
F 1 "GND" V 7705 3772 50  0000 R CNN
F 2 "" H 7700 3900 50  0001 C CNN
F 3 "" H 7700 3900 50  0001 C CNN
	1    7700 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5B5F9132
P 7300 3850
F 0 "R2" H 7359 3896 50  0000 L CNN
F 1 "10k" H 7359 3805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7300 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3950 7300 4050
Connection ~ 7300 4050
Wire Wire Line
	7300 4050 6450 4050
$Comp
L power:+5V #PWR09
U 1 1 5B5FC05D
P 7300 3750
F 0 "#PWR09" H 7300 3600 50  0001 C CNN
F 1 "+5V" H 7315 3923 50  0000 C CNN
F 2 "" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5B5FD0BE
P 4600 2450
F 0 "J3" H 4520 2125 50  0000 C CNN
F 1 "Conn_RST" H 4520 2216 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4600 2450 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 2350 4900 2350
Wire Wire Line
	5000 2350 5000 2450
Wire Wire Line
	5000 2450 5050 2450
$Comp
L power:GND #PWR08
U 1 1 5B5FE6D6
P 4800 2450
F 0 "#PWR08" H 4800 2200 50  0001 C CNN
F 1 "GND" V 4750 2350 50  0000 R CNN
F 2 "" H 4800 2450 50  0001 C CNN
F 3 "" H 4800 2450 50  0001 C CNN
	1    4800 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5B5FE7C4
P 4900 2200
F 0 "R1" H 4959 2246 50  0000 L CNN
F 1 "10k" H 4959 2155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4900 2200 50  0001 C CNN
F 3 "~" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2300 4900 2350
Connection ~ 4900 2350
Wire Wire Line
	4900 2350 5000 2350
Wire Wire Line
	4900 2100 4900 2000
Connection ~ 4900 2000
Wire Wire Line
	4900 2000 5650 2000
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5B600FBC
P 7650 2500
F 0 "J6" V 7523 2580 50  0000 L CNN
F 1 "Conn_PWR" V 7614 2580 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7650 2500 50  0001 C CNN
F 3 "~" H 7650 2500 50  0001 C CNN
	1    7650 2500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5B601183
P 7550 2300
F 0 "#PWR011" H 7550 2150 50  0001 C CNN
F 1 "+5V" H 7565 2473 50  0000 C CNN
F 2 "" H 7550 2300 50  0001 C CNN
F 3 "" H 7550 2300 50  0001 C CNN
	1    7550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5B6011C2
P 7750 2200
F 0 "#PWR012" H 7750 1950 50  0001 C CNN
F 1 "GND" V 7755 2072 50  0000 R CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 2200 7650 2200
Wire Wire Line
	7650 2200 7650 2300
$Comp
L Device:C_Small C1
U 1 1 5B6024C5
P 3800 2650
F 0 "C1" V 3571 2650 50  0000 C CNN
F 1 "18pF" V 3662 2650 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3800 2650 50  0001 C CNN
F 3 "~" H 3800 2650 50  0001 C CNN
	1    3800 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5B6025A9
P 3800 2850
F 0 "C2" V 3750 2750 50  0000 C CNN
F 1 "18pF" V 3650 2850 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3800 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5B60702D
P 3650 3500
F 0 "#PWR04" H 3650 3250 50  0001 C CNN
F 1 "GND" H 3655 3327 50  0000 C CNN
F 2 "" H 3650 3500 50  0001 C CNN
F 3 "" H 3650 3500 50  0001 C CNN
	1    3650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3500 3650 2850
Wire Wire Line
	3650 2650 3700 2650
Wire Wire Line
	3700 2850 3650 2850
Connection ~ 3650 2850
Wire Wire Line
	3650 2850 3650 2650
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5B608FD3
P 4200 2750
F 0 "Y1" V 4154 2991 50  0000 L CNN
F 1 "Crystal_GND24" V 4245 2991 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm_HandSoldering" H 4200 2750 50  0001 C CNN
F 3 "~" H 4200 2750 50  0001 C CNN
	1    4200 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2600 4200 2600
Wire Wire Line
	5050 2650 5000 2650
Wire Wire Line
	5000 2650 5000 2600
Wire Wire Line
	5000 2600 4200 2600
Connection ~ 4200 2600
Wire Wire Line
	3900 2850 3950 2850
Wire Wire Line
	3950 2850 3950 2900
Wire Wire Line
	3950 2900 4200 2900
Wire Wire Line
	5000 2900 5000 2850
Wire Wire Line
	5000 2850 5050 2850
Wire Wire Line
	4200 2900 5000 2900
Connection ~ 4200 2900
$Comp
L power:GND #PWR06
U 1 1 5B60F0CD
P 4200 3500
F 0 "#PWR06" H 4200 3250 50  0001 C CNN
F 1 "GND" H 4205 3327 50  0000 C CNN
F 2 "" H 4200 3500 50  0001 C CNN
F 3 "" H 4200 3500 50  0001 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2750 4400 3400
Wire Wire Line
	4400 3400 4200 3400
Wire Wire Line
	4200 3400 4200 3500
Wire Wire Line
	4200 3400 4000 3400
Wire Wire Line
	4000 3400 4000 2750
Connection ~ 4200 3400
Wire Wire Line
	3950 2600 3950 2650
Wire Wire Line
	3950 2650 3900 2650
$Comp
L Mechanical:Mounting_Hole MK13
U 1 1 5B61922F
P 7450 5800
F 0 "MK13" H 7550 5846 50  0000 L CNN
F 1 "LOGO" H 7550 5755 50  0000 L CNN
F 2 "mnt:mnt" H 7450 5800 50  0001 C CNN
F 3 "" H 7450 5800 50  0001 C CNN
	1    7450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4050 7600 4050
Wire Wire Line
	7700 4050 7700 3900
$Comp
L Mechanical:Mounting_Hole MK14
U 1 1 5B620005
P 7450 6050
F 0 "MK14" H 7550 6096 50  0000 L CNN
F 1 "LOGO2" H 7550 6005 50  0000 L CNN
F 2 "mnt:reform04" H 7450 6050 50  0001 C CNN
F 3 "" H 7450 6050 50  0001 C CNN
	1    7450 6050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
