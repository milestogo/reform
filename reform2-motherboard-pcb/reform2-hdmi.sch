EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
Title "MNT Reform 2 External Display"
Date "2020-10-29"
Rev "2.0R-2C"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 "License: CERN-OHL-S 2.0"
Comment4 ""
$EndDescr
$Comp
L Connector:HDMI_A J?
U 1 1 5D123420
P 8050 2600
AR Path="/5D123420" Ref="J?"  Part="1" 
AR Path="/5D0D8363/5D123420" Ref="J4"  Part="1" 
F 0 "J4" H 8480 2646 50  0000 L CNN
F 1 "HDMI_A" H 8480 2555 50  0000 L CNN
F 2 "footprints:HDMI-685119134923" H 8075 2600 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/HDMI" H 8075 2600 50  0001 C CNN
F 4 "Wurth" H 8050 2600 50  0001 C CNN "Manufacturer"
F 5 "685119134923" H 8050 2600 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 8050 2600 50  0001 C CNN "Checked"
F 7 "Mouser" H 8050 2600 50  0001 C CNN "Distributor"
	1    8050 2600
	1    0    0    -1  
$EndComp
Text GLabel 2650 1900 0    50   Input ~ 0
HDMI_D2-
Text GLabel 2650 1800 0    50   Input ~ 0
HDMI_D2+
Text GLabel 2650 2100 0    50   Input ~ 0
HDMI_D1-
Text GLabel 2650 2000 0    50   Input ~ 0
HDMI_D1+
Text GLabel 2650 2500 0    50   Input ~ 0
HDMI_CLK-
Text GLabel 2650 2400 0    50   Input ~ 0
HDMI_CLK+
Text GLabel 2650 2300 0    50   Input ~ 0
HDMI_D0-
Text GLabel 2650 2200 0    50   Input ~ 0
HDMI_D0+
$Comp
L reform2:CM2020-00TR U22
U 1 1 5D124B0E
P 4800 5100
F 0 "U22" H 4800 6467 50  0000 C CNN
F 1 "TPD12S521" H 4800 6376 50  0000 C CNN
F 2 "footprints:TSSOP50P640X120-38N" H 4350 2950 50  0001 L BNN
F 3 "" H 4800 5100 50  0001 L BNN
F 4 "Texas Instruments" H 4800 5100 50  0001 C CNN "Manufacturer"
F 5 "TPD12S521" H 4800 5100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 4800 5100 50  0001 C CNN "Checked"
F 7 "Mouser" H 4800 5100 50  0001 C CNN "Distributor"
	1    4800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1800 2900 1800
Wire Wire Line
	2650 2000 3100 2000
Wire Wire Line
	7650 2100 3200 2100
Wire Wire Line
	2650 2200 3300 2200
Wire Wire Line
	7650 2300 3400 2300
Wire Wire Line
	2650 2400 3500 2400
Wire Wire Line
	7650 2500 3600 2500
Wire Wire Line
	3700 4500 3500 4500
Wire Wire Line
	3500 4500 3500 2400
Connection ~ 3500 2400
Wire Wire Line
	3500 2400 7650 2400
Wire Wire Line
	3700 4600 3600 4600
Wire Wire Line
	3600 4600 3600 2500
Connection ~ 3600 2500
Wire Wire Line
	3600 2500 2650 2500
Wire Wire Line
	3700 4900 3400 4900
Wire Wire Line
	3400 4900 3400 2300
Connection ~ 3400 2300
Wire Wire Line
	3400 2300 2650 2300
Wire Wire Line
	3700 4800 3300 4800
Wire Wire Line
	3300 4800 3300 2200
Connection ~ 3300 2200
Wire Wire Line
	3300 2200 7650 2200
Wire Wire Line
	3700 5200 3200 5200
Wire Wire Line
	3200 5200 3200 2100
Connection ~ 3200 2100
Wire Wire Line
	3200 2100 2650 2100
Wire Wire Line
	3700 5100 3100 5100
Wire Wire Line
	3100 5100 3100 2000
Connection ~ 3100 2000
Wire Wire Line
	3100 2000 7650 2000
Wire Wire Line
	7650 1900 3000 1900
Wire Wire Line
	3700 5500 3000 5500
Wire Wire Line
	3000 5500 3000 1900
Connection ~ 3000 1900
Wire Wire Line
	3000 1900 2650 1900
Wire Wire Line
	3700 5400 2900 5400
Wire Wire Line
	2900 5400 2900 1800
Connection ~ 2900 1800
Wire Wire Line
	2900 1800 7650 1800
$Comp
L power:GND #PWR0156
U 1 1 5D12D351
P 4800 6850
F 0 "#PWR0156" H 4800 6600 50  0001 C CNN
F 1 "GND" H 4805 6677 50  0000 C CNN
F 2 "" H 4800 6850 50  0001 C CNN
F 3 "" H 4800 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6500 4250 6650
Wire Wire Line
	4250 6650 4350 6650
Wire Wire Line
	4800 6650 4800 6850
Wire Wire Line
	4800 6650 4950 6650
Wire Wire Line
	5350 6650 5350 6500
Connection ~ 4800 6650
Wire Wire Line
	5250 6500 5250 6650
Connection ~ 5250 6650
Wire Wire Line
	5250 6650 5350 6650
Wire Wire Line
	5150 6500 5150 6650
Connection ~ 5150 6650
Wire Wire Line
	5150 6650 5250 6650
Wire Wire Line
	5050 6500 5050 6650
Connection ~ 5050 6650
Wire Wire Line
	5050 6650 5150 6650
Wire Wire Line
	4950 6500 4950 6650
Connection ~ 4950 6650
Wire Wire Line
	4950 6650 5050 6650
Wire Wire Line
	4650 6500 4650 6650
Connection ~ 4650 6650
Wire Wire Line
	4650 6650 4800 6650
Wire Wire Line
	4550 6500 4550 6650
Connection ~ 4550 6650
Wire Wire Line
	4550 6650 4650 6650
Wire Wire Line
	4450 6500 4450 6650
Connection ~ 4450 6650
Wire Wire Line
	4450 6650 4550 6650
Wire Wire Line
	4350 6500 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4350 6650 4450 6650
Wire Wire Line
	5900 5100 7000 5100
Wire Wire Line
	7350 5100 7350 3000
Wire Wire Line
	7350 3000 7650 3000
Wire Wire Line
	5900 4800 6700 4800
Wire Wire Line
	7250 4800 7250 2900
Wire Wire Line
	7250 2900 7650 2900
$Comp
L power:GND #PWR0157
U 1 1 5D137F78
P 8250 3950
F 0 "#PWR0157" H 8250 3700 50  0001 C CNN
F 1 "GND" H 8255 3777 50  0000 C CNN
F 2 "" H 8250 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3700 7850 3800
Wire Wire Line
	7850 3800 7950 3800
Wire Wire Line
	8350 3800 8350 3700
Wire Wire Line
	8250 3700 8250 3800
Connection ~ 8250 3800
Wire Wire Line
	8250 3800 8350 3800
Wire Wire Line
	8150 3700 8150 3800
Connection ~ 8150 3800
Wire Wire Line
	8150 3800 8250 3800
Wire Wire Line
	8050 3700 8050 3800
Connection ~ 8050 3800
Wire Wire Line
	8050 3800 8150 3800
Wire Wire Line
	7950 3700 7950 3800
Connection ~ 7950 3800
Wire Wire Line
	7950 3800 8050 3800
Wire Wire Line
	8250 3800 8250 3950
$Comp
L Device:R_Small R45
U 1 1 5D13F480
P 7550 5550
F 0 "R45" H 7609 5596 50  0000 L CNN
F 1 "10k" H 7609 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 5550 50  0001 C CNN
F 3 "~" H 7550 5550 50  0001 C CNN
F 4 "Yageo" H 7550 5550 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-0710KL" H 7550 5550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7550 5550 50  0001 C CNN "Checked"
F 7 "Mouser" H 7550 5550 50  0001 C CNN "Distributor"
	1    7550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5400 7550 5400
Wire Wire Line
	7550 5400 7550 3300
Wire Wire Line
	7550 3300 7650 3300
Wire Wire Line
	7550 5450 7550 5400
Connection ~ 7550 5400
$Comp
L power:GND #PWR0158
U 1 1 5D14251A
P 7550 5750
F 0 "#PWR0158" H 7550 5500 50  0001 C CNN
F 1 "GND" H 7555 5577 50  0000 C CNN
F 2 "" H 7550 5750 50  0001 C CNN
F 3 "" H 7550 5750 50  0001 C CNN
	1    7550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7550 5750
Text GLabel 5900 5300 2    50   Output ~ 0
HDMI_HPD
Text GLabel 5900 5000 2    50   BiDi ~ 0
HDMI_SDA
Text GLabel 5900 4700 2    50   Input ~ 0
HDMI_SCL
Wire Wire Line
	5900 4400 7050 4400
Wire Wire Line
	7050 4400 7050 1250
Wire Wire Line
	7050 1250 7400 1250
Wire Wire Line
	8050 1250 8050 1500
$Comp
L Device:C_Small C30
U 1 1 5D14719E
P 7400 1400
F 0 "C30" H 7492 1446 50  0000 L CNN
F 1 "0.1uF" H 7492 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7400 1400 50  0001 C CNN
F 3 "~" H 7400 1400 50  0001 C CNN
F 4 "Yageo" H 7400 1400 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 7400 1400 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7400 1400 50  0001 C CNN "Checked"
F 7 "Mouser" H 7400 1400 50  0001 C CNN "Distributor"
	1    7400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1300 7400 1250
Connection ~ 7400 1250
Wire Wire Line
	7400 1250 8050 1250
$Comp
L power:GND #PWR0159
U 1 1 5D148EE2
P 7400 1500
F 0 "#PWR0159" H 7400 1250 50  0001 C CNN
F 1 "GND" H 7405 1327 50  0000 C CNN
F 2 "" H 7400 1500 50  0001 C CNN
F 3 "" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R43
U 1 1 5D14CD66
P 6700 4650
F 0 "R43" H 6759 4696 50  0000 L CNN
F 1 "4.7k" H 6759 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 4650 50  0001 C CNN
F 3 "~" H 6700 4650 50  0001 C CNN
F 4 "Yageo" H 6700 4650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 6700 4650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6700 4650 50  0001 C CNN "Checked"
F 7 "Mouser" H 6700 4650 50  0001 C CNN "Distributor"
	1    6700 4650
	1    0    0    -1  
$EndComp
Connection ~ 6700 4800
Wire Wire Line
	6700 4800 7250 4800
$Comp
L Device:R_Small R44
U 1 1 5D14D233
P 7000 4650
F 0 "R44" H 7059 4696 50  0000 L CNN
F 1 "4.7k" H 7059 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7000 4650 50  0001 C CNN
F 3 "~" H 7000 4650 50  0001 C CNN
F 4 "Yageo" H 7000 4650 50  0001 C CNN "Manufacturer"
F 5 "RC0603FR-074K7L" H 7000 4650 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 7000 4650 50  0001 C CNN "Checked"
F 7 "Mouser" H 7000 4650 50  0001 C CNN "Distributor"
	1    7000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4750 6700 4800
Wire Wire Line
	7000 4750 7000 5100
Connection ~ 7000 5100
Wire Wire Line
	7000 5100 7350 5100
Wire Wire Line
	6000 4000 5900 4000
$Comp
L power:+3V3 #PWR0163
U 1 1 5D1543CF
P 6450 3750
F 0 "#PWR0163" H 6450 3600 50  0001 C CNN
F 1 "+3V3" H 6465 3923 50  0000 C CNN
F 2 "" H 6450 3750 50  0001 C CNN
F 3 "" H 6450 3750 50  0001 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3750 6450 4100
Wire Wire Line
	6450 4100 6350 4100
$Comp
L Device:C_Small C29
U 1 1 5D156EA0
P 6600 4100
F 0 "C29" V 6829 4100 50  0000 C CNN
F 1 "0.1uF" V 6738 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 4100 50  0001 C CNN
F 3 "~" H 6600 4100 50  0001 C CNN
F 4 "Yageo" H 6600 4100 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6600 4100 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6600 4100 50  0001 C CNN "Checked"
F 7 "Mouser" H 6600 4100 50  0001 C CNN "Distributor"
	1    6600 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4100 6450 4100
Connection ~ 6450 4100
$Comp
L power:GND #PWR0164
U 1 1 5D15970D
P 6700 4100
F 0 "#PWR0164" H 6700 3850 50  0001 C CNN
F 1 "GND" H 6705 3927 50  0000 C CNN
F 2 "" H 6700 4100 50  0001 C CNN
F 3 "" H 6700 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C28
U 1 1 5D15C03F
P 6150 4000
F 0 "C28" V 5921 4000 50  0000 C CNN
F 1 "0.1uF" V 6012 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6150 4000 50  0001 C CNN
F 3 "~" H 6150 4000 50  0001 C CNN
F 4 "Yageo" H 6150 4000 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6150 4000 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6150 4000 50  0001 C CNN "Checked"
F 7 "Mouser" H 6150 4000 50  0001 C CNN "Distributor"
	1    6150 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4000 6000 4000
Connection ~ 6000 4000
Text GLabel 9150 4950 2    50   Output ~ 0
HDMI_HPD
$Comp
L power:+3V3 #PWR0166
U 1 1 5D16C7AF
P 8750 4900
F 0 "#PWR0166" H 8750 4750 50  0001 C CNN
F 1 "+3V3" H 8765 5073 50  0000 C CNN
F 2 "" H 8750 4900 50  0001 C CNN
F 3 "" H 8750 4900 50  0001 C CNN
	1    8750 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R46
U 1 1 5D16CD31
P 9000 4950
F 0 "R46" V 8804 4950 50  0000 C CNN
F 1 "100k" V 8895 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 4950 50  0001 C CNN
F 3 "~" H 9000 4950 50  0001 C CNN
F 4 "Vishay Dale" H 9000 4950 50  0001 C CNN "Manufacturer"
F 5 "CRCW0603100KJNEAC" H 9000 4950 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 4950 50  0001 C CNN "Distributor"
F 7 "y" H 9000 4950 50  0001 C CNN "Checked"
	1    9000 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 4950 9150 4950
Wire Wire Line
	8900 4950 8750 4950
Wire Wire Line
	8750 4950 8750 4900
$Comp
L Device:C_Small C27
U 1 1 5D171FA3
P 6000 4500
F 0 "C27" V 5850 4700 50  0000 C CNN
F 1 "0.1uF" V 5862 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
F 4 "Yageo" H 6000 4500 50  0001 C CNN "Manufacturer"
F 5 "CC0603JPX7R9BB104" H 6000 4500 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6000 4500 50  0001 C CNN "Checked"
F 7 "Mouser" H 6000 4500 50  0001 C CNN "Distributor"
	1    6000 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5D17234F
P 6100 4500
F 0 "#PWR0167" H 6100 4250 50  0001 C CNN
F 1 "GND" V 6105 4372 50  0000 R CNN
F 2 "" H 6100 4500 50  0001 C CNN
F 3 "" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    -1   -1   0   
$EndComp
Text GLabel 9150 5350 2    50   Output ~ 0
HDMI_SCL
$Comp
L power:+3V3 #PWR0168
U 1 1 5D1829AF
P 8750 5300
F 0 "#PWR0168" H 8750 5150 50  0001 C CNN
F 1 "+3V3" H 8765 5473 50  0000 C CNN
F 2 "" H 8750 5300 50  0001 C CNN
F 3 "" H 8750 5300 50  0001 C CNN
	1    8750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5350 9150 5350
Wire Wire Line
	8900 5350 8750 5350
Wire Wire Line
	8750 5350 8750 5300
Text GLabel 9150 5750 2    50   Output ~ 0
HDMI_SDA
$Comp
L power:+3V3 #PWR0169
U 1 1 5D18542A
P 8750 5700
F 0 "#PWR0169" H 8750 5550 50  0001 C CNN
F 1 "+3V3" H 8765 5873 50  0000 C CNN
F 2 "" H 8750 5700 50  0001 C CNN
F 3 "" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5750 9150 5750
Wire Wire Line
	8900 5750 8750 5750
Wire Wire Line
	8750 5750 8750 5700
NoConn ~ 7650 3200
Wire Wire Line
	5900 5700 6700 5700
Wire Wire Line
	7450 5700 7450 2700
Wire Wire Line
	7450 2700 7650 2700
Text GLabel 5900 5600 2    50   BiDi ~ 0
HDMI_CEC
$Comp
L Device:R_Small R48
U 1 1 5D185434
P 9000 5750
F 0 "R48" V 8804 5750 50  0000 C CNN
F 1 "47k" V 8895 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5750 50  0001 C CNN
F 3 "~" H 9000 5750 50  0001 C CNN
F 4 "Vishay Dale" H 9000 5750 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 5750 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 5750 50  0001 C CNN "Distributor"
F 7 "y" H 9000 5750 50  0001 C CNN "Checked"
	1    9000 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R47
U 1 1 5D1829B9
P 9000 5350
F 0 "R47" V 8804 5350 50  0000 C CNN
F 1 "47k" V 8895 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5350 50  0001 C CNN
F 3 "~" H 9000 5350 50  0001 C CNN
F 4 "Vishay Dale" H 9000 5350 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 5350 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 5350 50  0001 C CNN "Distributor"
F 7 "y" H 9000 5350 50  0001 C CNN "Checked"
	1    9000 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R161
U 1 1 5FF563B3
P 6250 4100
F 0 "R161" V 6300 3950 50  0000 C CNN
F 1 "10k" V 6300 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 4100 50  0001 C CNN
F 3 "~" H 6250 4100 50  0001 C CNN
F 4 "y" H 6250 4100 50  0001 C CNN "Checked"
F 5 "Mouser" H 6250 4100 50  0001 C CNN "Distributor"
F 6 "Yageo" H 6250 4100 50  0001 C CNN "Manufacturer"
F 7 "RC0603FR-0710KL" H 6250 4100 50  0001 C CNN "Manufacturer_No"
	1    6250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4100 6000 4100
$Comp
L power:PWR_FLAG #FLG0120
U 1 1 5EEAD7AD
P 6000 4100
F 0 "#FLG0120" H 6000 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 4250 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "~" H 6000 4100 50  0001 C CNN
	1    6000 4100
	-1   0    0    1   
$EndComp
Connection ~ 6000 4100
Wire Wire Line
	6000 4100 5900 4100
$Comp
L power:+3V3 #PWR0239
U 1 1 5EEB135F
P 6700 5350
F 0 "#PWR0239" H 6700 5200 50  0001 C CNN
F 1 "+3V3" H 6715 5523 50  0000 C CNN
F 2 "" H 6700 5350 50  0001 C CNN
F 3 "" H 6700 5350 50  0001 C CNN
	1    6700 5350
	1    0    0    -1  
$EndComp
Text GLabel 9150 6100 2    50   BiDi ~ 0
HDMI_CEC
$Comp
L power:+3V3 #PWR0246
U 1 1 5EEB1BBD
P 8750 6050
F 0 "#PWR0246" H 8750 5900 50  0001 C CNN
F 1 "+3V3" H 8765 6223 50  0000 C CNN
F 2 "" H 8750 6050 50  0001 C CNN
F 3 "" H 8750 6050 50  0001 C CNN
	1    8750 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6100 9150 6100
Wire Wire Line
	8900 6100 8750 6100
Wire Wire Line
	8750 6100 8750 6050
$Comp
L Device:R_Small R197
U 1 1 5EEB1BCE
P 9000 6100
F 0 "R197" V 8804 6100 50  0000 C CNN
F 1 "47k" V 8895 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 6100 50  0001 C CNN
F 3 "~" H 9000 6100 50  0001 C CNN
F 4 "Vishay Dale" H 9000 6100 50  0001 C CNN "Manufacturer"
F 5 "CRCW060347K0FKEAC" H 9000 6100 50  0001 C CNN "Manufacturer_No"
F 6 "Mouser" H 9000 6100 50  0001 C CNN "Distributor"
F 7 "y" H 9000 6100 50  0001 C CNN "Checked"
	1    9000 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R192
U 1 1 5EEB5B3A
P 6700 5550
F 0 "R192" H 6759 5596 50  0000 L CNN
F 1 "27k" H 6759 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 5550 50  0001 C CNN
F 3 "~" H 6700 5550 50  0001 C CNN
F 4 "Bourns" H 6700 5550 50  0001 C CNN "Manufacturer"
F 5 "CR0603-FX-2702ELF" H 6700 5550 50  0001 C CNN "Manufacturer_No"
F 6 "y" H 6700 5550 50  0001 C CNN "Checked"
F 7 "Mouser" H 6700 5550 50  0001 C CNN "Distributor"
	1    6700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5450 6700 5350
Wire Wire Line
	6700 5650 6700 5700
Connection ~ 6700 5700
Wire Wire Line
	6700 5700 7450 5700
Text GLabel 5600 3450 0    50   Input ~ 0
USB_PWR
Wire Wire Line
	6000 3450 6000 4000
Wire Wire Line
	6250 4000 6700 4000
Wire Wire Line
	6700 4000 6700 4100
Connection ~ 6700 4100
Wire Wire Line
	7000 4550 7000 4500
Wire Wire Line
	7000 4500 6850 4500
Wire Wire Line
	6700 4500 6700 4550
Wire Wire Line
	6000 3450 6150 3450
Wire Wire Line
	6850 3450 6850 4500
Connection ~ 6000 3450
Connection ~ 6850 4500
Wire Wire Line
	6850 4500 6700 4500
$Comp
L Device:D_Schottky_Small D14
U 1 1 5F873F4D
P 6250 3450
F 0 "D14" H 6250 3243 50  0000 C CNN
F 1 "SD0603S040S0R2" H 6250 3334 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Castellated" V 6250 3450 50  0001 C CNN
F 3 "~" V 6250 3450 50  0001 C CNN
F 4 "Mouser" H 6250 3450 50  0001 C CNN "Distributor"
F 5 "AVX" H 6250 3450 50  0001 C CNN "Manufacturer"
F 6 "SD0603S040S0R2" H 6250 3450 50  0001 C CNN "Manufacturer_No"
F 7 "y" H 6250 3450 50  0001 C CNN "Checked"
	1    6250 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3450 6850 3450
Wire Wire Line
	5600 3450 6000 3450
$EndSCHEMATC
