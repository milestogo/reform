EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:DF40C-100DS-0.4V_51_
LIBS:5622-4100-ML
LIBS:mpcie
LIBS:TPS54616PWPR
LIBS:conn_hdmi
LIBS:J0G-0003NL
LIBS:reform-motherboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Conn_02x08_Odd_Even J14
U 1 1 5A0313D4
P 3350 3250
F 0 "J14" H 3400 3650 50  0000 C CNN
F 1 "LVDS_Conn" H 3400 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x08_Pitch2.54mm" H 3350 3250 50  0001 C CNN
F 3 "" H 3350 3250 50  0001 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
Text GLabel 3150 2950 0    60   Input ~ 0
LVDS0_CLK_N
Text GLabel 3150 3050 0    60   Input ~ 0
LVDS0_CLK_P
Text GLabel 3150 3250 0    60   Input ~ 0
LVDS0_TX2_N
Text GLabel 3150 3350 0    60   Input ~ 0
LVDS0_TX2_P
Text GLabel 3150 3550 0    60   Input ~ 0
LVDS0_TX3_N
Text GLabel 3150 3650 0    60   Input ~ 0
LVDS0_TX3_P
Text GLabel 3650 2950 2    60   Input ~ 0
LVDS0_TX0_N
Text GLabel 3650 3050 2    60   Input ~ 0
LVDS0_TX0_P
Text GLabel 3650 3250 2    60   Input ~ 0
LVDS0_TX1_N
Text GLabel 3650 3350 2    60   Input ~ 0
LVDS0_TX1_P
Text GLabel 3650 3550 2    60   Input ~ 0
LVDS0_PWM
$Comp
L GND #PWR097
U 1 1 5A04D243
P 2250 3450
F 0 "#PWR097" H 2250 3200 50  0001 C CNN
F 1 "GND" H 2250 3300 50  0000 C CNN
F 2 "" H 2250 3450 50  0001 C CNN
F 3 "" H 2250 3450 50  0001 C CNN
	1    2250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3450 2250 3450
$Comp
L +3V3 #PWR098
U 1 1 5A04D9E1
P 2350 3150
F 0 "#PWR098" H 2350 3000 50  0001 C CNN
F 1 "+3V3" H 2350 3290 50  0000 C CNN
F 2 "" H 2350 3150 50  0001 C CNN
F 3 "" H 2350 3150 50  0001 C CNN
	1    2350 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 3150 3150 3150
$Comp
L +5V #PWR099
U 1 1 5A04DA01
P 4450 3150
F 0 "#PWR099" H 4450 3000 50  0001 C CNN
F 1 "+5V" H 4450 3290 50  0000 C CNN
F 2 "" H 4450 3150 50  0001 C CNN
F 3 "" H 4450 3150 50  0001 C CNN
	1    4450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 3150 4450 3150
Text GLabel 3650 1750 2    60   Input ~ 0
HDMI_D1_N
Text GLabel 3650 1650 2    60   Input ~ 0
HDMI_D1_P
Text GLabel 3150 1650 0    60   Input ~ 0
HDMI_D2_N
Text GLabel 3150 1550 0    60   Input ~ 0
HDMI_D2_P
Text GLabel 3150 2450 0    60   Output ~ 0
HDMI_HPD
Text GLabel 3650 2050 2    60   Input ~ 0
HDMI_CLK_N
Text GLabel 3650 1950 2    60   Input ~ 0
HDMI_CLK_P
Text GLabel 3150 1950 0    60   Input ~ 0
HDMI_D0_N
Text GLabel 3150 1850 0    60   Input ~ 0
HDMI_D0_P
Text GLabel 3150 2150 0    60   Input ~ 0
HDMI_CEC_IN
$Comp
L GND #PWR0100
U 1 1 5A04E695
P 2200 2450
F 0 "#PWR0100" H 2200 2200 50  0001 C CNN
F 1 "GND" H 2200 2300 50  0000 C CNN
F 2 "" H 2200 2450 50  0001 C CNN
F 3 "" H 2200 2450 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1750 2200 2450
Wire Wire Line
	2200 2350 3150 2350
Wire Wire Line
	3150 1750 2200 1750
Connection ~ 2200 2350
Wire Wire Line
	3150 2050 2200 2050
Connection ~ 2200 2050
Wire Wire Line
	3650 1550 4300 1550
Wire Wire Line
	4300 1550 4300 2500
Wire Wire Line
	4300 1850 3650 1850
$Comp
L Conn_HDMI J13
U 1 1 5A04EB26
P 3350 1950
F 0 "J13" H 3400 2450 50  0000 C CNN
F 1 "Conn_HDMI" H 3400 1350 50  0000 C CNN
F 2 "685119134923:685119134923" H 3350 1950 50  0001 C CNN
F 3 "" H 3350 1950 50  0001 C CNN
	1    3350 1950
	1    0    0    -1  
$EndComp
Text GLabel 3150 2250 0    60   Input ~ 0
I2C1_SCL
Text GLabel 3650 2250 2    60   BiDi ~ 0
I2C1_SDA
Connection ~ 4300 1850
$Comp
L GND #PWR0101
U 1 1 5A04F2E0
P 4300 2500
F 0 "#PWR0101" H 4300 2250 50  0001 C CNN
F 1 "GND" H 4300 2350 50  0000 C CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
