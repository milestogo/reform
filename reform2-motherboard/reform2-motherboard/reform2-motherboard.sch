EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 2
Title "REFORM 2"
Date "2019-04-25"
Rev ""
Comp "MNT Research GmbH"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5CC38630
P 4500 14750
F 0 "#PWR?" H 4500 14500 50  0001 C CNN
F 1 "GND" H 4505 14577 50  0000 C CNN
F 2 "" H 4500 14750 50  0001 C CNN
F 3 "" H 4500 14750 50  0001 C CNN
	1    4500 14750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC3F1E2
P 8500 14750
F 0 "#PWR?" H 8500 14500 50  0001 C CNN
F 1 "GND" H 8505 14577 50  0000 C CNN
F 2 "" H 8500 14750 50  0001 C CNN
F 3 "" H 8500 14750 50  0001 C CNN
	1    8500 14750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC4F10E
P 12500 14750
F 0 "#PWR?" H 12500 14500 50  0001 C CNN
F 1 "GND" H 12505 14577 50  0000 C CNN
F 2 "" H 12500 14750 50  0001 C CNN
F 3 "" H 12500 14750 50  0001 C CNN
	1    12500 14750
	1    0    0    -1  
$EndComp
NoConn ~ 6500 9900
NoConn ~ 6500 10000
NoConn ~ 6500 10900
NoConn ~ 6500 11000
NoConn ~ 6500 7700
NoConn ~ 6500 12800
NoConn ~ 10500 14200
NoConn ~ 10500 14100
NoConn ~ 2500 9500
NoConn ~ 2500 9600
NoConn ~ 2500 9700
$Comp
L Connector:HDMI_A J13
U 1 1 5CCAF72C
P 20650 4750
F 0 "J13" H 21080 4796 50  0000 L CNN
F 1 "HDMI_A" H 21080 4705 50  0000 L CNN
F 2 "" H 20675 4750 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/HDMI" H 20675 4750 50  0001 C CNN
	1    20650 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:SD_Card J14
U 1 1 5CCB07EE
P 20300 7550
F 0 "J14" H 20300 8215 50  0000 C CNN
F 1 "SD_Card" H 20300 8124 50  0000 C CNN
F 2 "" H 20300 7550 50  0001 C CNN
F 3 "http://portal.fciconnect.com/Comergent//fci/drawing/10067847.pdf" H 20300 7550 50  0001 C CNN
	1    20300 7550
	1    0    0    -1  
$EndComp
Text GLabel 2500 10900 0    50   Input ~ 0
HDMI_D0+
Text GLabel 2500 11000 0    50   Input ~ 0
HDMI_D0-
Text GLabel 2500 11100 0    50   Input ~ 0
HDMI_D3+
Text GLabel 2500 11200 0    50   Input ~ 0
HDMI_D3-
Text GLabel 2500 10500 0    50   Input ~ 0
HDMI_D2+
Text GLabel 2500 10600 0    50   Input ~ 0
HDMI_D2-
Text GLabel 2500 10700 0    50   Input ~ 0
HDMI_D1+
Text GLabel 2500 10800 0    50   Input ~ 0
HDMI_D1-
Text GLabel 19000 4050 0    50   Input ~ 0
HDMI_D2-
Text GLabel 19000 3950 0    50   Input ~ 0
HDMI_D2+
Text GLabel 19000 4250 0    50   Input ~ 0
HDMI_D1-
Text GLabel 19000 4150 0    50   Input ~ 0
HDMI_D1+
Text GLabel 19000 4650 0    50   Input ~ 0
HDMI_D3-
Text GLabel 19000 4550 0    50   Input ~ 0
HDMI_D3+
Connection ~ 12500 14600
Wire Wire Line
	12500 14750 12500 14600
Wire Wire Line
	12500 14500 12500 14600
Connection ~ 12500 14500
Connection ~ 12500 14400
Wire Wire Line
	12500 14400 12500 14500
Wire Wire Line
	12500 14300 12500 14400
Connection ~ 12500 14300
Connection ~ 12500 14200
Wire Wire Line
	12500 14200 12500 14300
Wire Wire Line
	12500 14100 12500 14200
Connection ~ 12500 14100
Connection ~ 12500 14000
Wire Wire Line
	12500 14000 12500 14100
Wire Wire Line
	12500 13900 12500 14000
Connection ~ 12500 13900
Connection ~ 12500 13800
Wire Wire Line
	12500 13800 12500 13900
Wire Wire Line
	12500 13700 12500 13800
Connection ~ 12500 13700
Connection ~ 12500 13600
Wire Wire Line
	12500 13600 12500 13700
Wire Wire Line
	12500 13500 12500 13600
Connection ~ 12500 13500
Connection ~ 12500 13400
Wire Wire Line
	12500 13400 12500 13500
Wire Wire Line
	12500 13300 12500 13400
Connection ~ 12500 13300
Connection ~ 12500 13200
Wire Wire Line
	12500 13200 12500 13300
Wire Wire Line
	12500 13100 12500 13200
Connection ~ 12500 13100
Connection ~ 12500 13000
Wire Wire Line
	12500 13000 12500 13100
Wire Wire Line
	12500 12900 12500 13000
Connection ~ 8500 14600
Wire Wire Line
	8500 14600 8500 14750
Wire Wire Line
	8500 14500 8500 14600
Connection ~ 8500 14500
Connection ~ 8500 14400
Wire Wire Line
	8500 14400 8500 14500
Wire Wire Line
	8500 14300 8500 14400
Connection ~ 8500 14300
Connection ~ 8500 14200
Wire Wire Line
	8500 14200 8500 14300
Wire Wire Line
	8500 14100 8500 14200
Connection ~ 8500 14100
Connection ~ 8500 14000
Wire Wire Line
	8500 14000 8500 14100
Wire Wire Line
	8500 13900 8500 14000
Connection ~ 8500 13900
Connection ~ 8500 13800
Wire Wire Line
	8500 13800 8500 13900
Wire Wire Line
	8500 13700 8500 13800
Connection ~ 8500 13700
Connection ~ 8500 13600
Wire Wire Line
	8500 13600 8500 13700
Wire Wire Line
	8500 13500 8500 13600
Connection ~ 8500 13500
Connection ~ 8500 13400
Wire Wire Line
	8500 13400 8500 13500
Wire Wire Line
	8500 13300 8500 13400
Connection ~ 8500 13300
Connection ~ 8500 13200
Wire Wire Line
	8500 13200 8500 13300
Wire Wire Line
	8500 13100 8500 13200
Connection ~ 8500 13100
Connection ~ 8500 13000
Wire Wire Line
	8500 13000 8500 13100
Wire Wire Line
	8500 12900 8500 13000
Connection ~ 8500 12900
Connection ~ 8500 12800
Wire Wire Line
	8500 12800 8500 12900
Wire Wire Line
	8500 12700 8500 12800
Connection ~ 8500 12700
Connection ~ 8500 12600
Wire Wire Line
	8500 12600 8500 12700
Wire Wire Line
	8500 12500 8500 12600
Connection ~ 8500 12500
Connection ~ 8500 12400
Wire Wire Line
	8500 12400 8500 12500
Wire Wire Line
	8500 12300 8500 12400
Connection ~ 8500 12300
Connection ~ 8500 12200
Wire Wire Line
	8500 12200 8500 12300
Wire Wire Line
	8500 12100 8500 12200
Connection ~ 8500 12100
Connection ~ 8500 12000
Wire Wire Line
	8500 12000 8500 12100
Wire Wire Line
	8500 11900 8500 12000
Connection ~ 8500 11900
Connection ~ 8500 11800
Wire Wire Line
	8500 11800 8500 11900
Wire Wire Line
	8500 11700 8500 11800
Connection ~ 8500 11700
Connection ~ 8500 11600
Wire Wire Line
	8500 11600 8500 11700
Wire Wire Line
	8500 11500 8500 11600
Connection ~ 8500 11500
Connection ~ 8500 11400
Wire Wire Line
	8500 11400 8500 11500
Wire Wire Line
	8500 11300 8500 11400
Connection ~ 8500 11300
Connection ~ 8500 11200
Wire Wire Line
	8500 11200 8500 11300
Wire Wire Line
	8500 11100 8500 11200
Connection ~ 8500 11100
Connection ~ 8500 11000
Wire Wire Line
	8500 11000 8500 11100
Wire Wire Line
	8500 10900 8500 11000
Connection ~ 8500 10900
Connection ~ 8500 10800
Wire Wire Line
	8500 10800 8500 10900
Wire Wire Line
	8500 10700 8500 10800
Connection ~ 8500 10700
Connection ~ 8500 10600
Wire Wire Line
	8500 10600 8500 10700
Wire Wire Line
	8500 10500 8500 10600
Connection ~ 8500 10500
Connection ~ 8500 10400
Wire Wire Line
	8500 10400 8500 10500
Wire Wire Line
	8500 10300 8500 10400
Connection ~ 8500 10300
Connection ~ 8500 10200
Wire Wire Line
	8500 10200 8500 10300
Wire Wire Line
	8500 10100 8500 10200
Connection ~ 8500 10100
Connection ~ 8500 10000
Wire Wire Line
	8500 10000 8500 10100
Wire Wire Line
	8500 9900 8500 10000
Connection ~ 8500 9900
Connection ~ 8500 9800
Wire Wire Line
	8500 9800 8500 9900
Wire Wire Line
	8500 9700 8500 9800
Connection ~ 8500 9700
Connection ~ 8500 9600
Wire Wire Line
	8500 9600 8500 9700
Wire Wire Line
	8500 9500 8500 9600
Connection ~ 4500 14600
Wire Wire Line
	4500 14750 4500 14600
Wire Wire Line
	4500 14500 4500 14600
Connection ~ 4500 14500
Connection ~ 4500 14400
Wire Wire Line
	4500 14400 4500 14500
Wire Wire Line
	4500 14300 4500 14400
Connection ~ 4500 14300
Connection ~ 4500 14200
Wire Wire Line
	4500 14200 4500 14300
Wire Wire Line
	4500 14100 4500 14200
Connection ~ 4500 14100
Connection ~ 4500 14000
Wire Wire Line
	4500 14000 4500 14100
Wire Wire Line
	4500 13900 4500 14000
Connection ~ 4500 13900
Connection ~ 4500 13800
Wire Wire Line
	4500 13800 4500 13900
Wire Wire Line
	4500 13700 4500 13800
Connection ~ 4500 13700
Connection ~ 4500 13600
Wire Wire Line
	4500 13600 4500 13700
Wire Wire Line
	4500 13500 4500 13600
Connection ~ 4500 13500
Connection ~ 4500 13400
Wire Wire Line
	4500 13400 4500 13500
Wire Wire Line
	4500 13300 4500 13400
Connection ~ 4500 13300
Connection ~ 4500 13200
Wire Wire Line
	4500 13200 4500 13300
Wire Wire Line
	4500 13100 4500 13200
Connection ~ 4500 13100
Connection ~ 4500 13000
Wire Wire Line
	4500 13000 4500 13100
Wire Wire Line
	4500 12900 4500 13000
Connection ~ 4500 12900
Connection ~ 4500 12800
Wire Wire Line
	4500 12800 4500 12900
Wire Wire Line
	4500 12700 4500 12800
Connection ~ 4500 12700
Connection ~ 4500 12600
Wire Wire Line
	4500 12600 4500 12700
Wire Wire Line
	4500 12500 4500 12600
Connection ~ 4500 12500
Connection ~ 4500 12400
Wire Wire Line
	4500 12400 4500 12500
Wire Wire Line
	4500 12300 4500 12400
Connection ~ 4500 12300
Connection ~ 4500 12200
Wire Wire Line
	4500 12200 4500 12300
Wire Wire Line
	4500 12100 4500 12200
Connection ~ 4500 12100
Connection ~ 4500 12000
Wire Wire Line
	4500 12000 4500 12100
Wire Wire Line
	4500 11900 4500 12000
Connection ~ 4500 11900
Connection ~ 4500 11800
Wire Wire Line
	4500 11800 4500 11900
Wire Wire Line
	4500 11700 4500 11800
Connection ~ 4500 11700
Connection ~ 4500 11600
Wire Wire Line
	4500 11600 4500 11700
Wire Wire Line
	4500 11500 4500 11600
Connection ~ 4500 11500
Connection ~ 4500 11400
Wire Wire Line
	4500 11400 4500 11500
Wire Wire Line
	4500 11300 4500 11400
Connection ~ 4500 11300
Connection ~ 4500 11200
Wire Wire Line
	4500 11200 4500 11300
Wire Wire Line
	4500 11100 4500 11200
Connection ~ 4500 11100
Connection ~ 4500 11000
Wire Wire Line
	4500 11000 4500 11100
Wire Wire Line
	4500 10900 4500 11000
Connection ~ 4500 10900
Connection ~ 4500 10800
Wire Wire Line
	4500 10800 4500 10900
Wire Wire Line
	4500 10700 4500 10800
Connection ~ 4500 10700
Connection ~ 4500 10600
Wire Wire Line
	4500 10600 4500 10700
Wire Wire Line
	4500 10500 4500 10600
Connection ~ 4500 10500
Connection ~ 4500 10400
Wire Wire Line
	4500 10400 4500 10500
Wire Wire Line
	4500 10300 4500 10400
Connection ~ 4500 10300
Connection ~ 4500 10200
Wire Wire Line
	4500 10200 4500 10300
Wire Wire Line
	4500 10100 4500 10200
Connection ~ 4500 10100
Connection ~ 4500 10000
Wire Wire Line
	4500 10000 4500 10100
Wire Wire Line
	4500 9900 4500 10000
Connection ~ 4500 9900
Connection ~ 4500 9800
Wire Wire Line
	4500 9800 4500 9900
Wire Wire Line
	4500 9700 4500 9800
Connection ~ 4500 9700
Connection ~ 4500 9600
Wire Wire Line
	4500 9600 4500 9700
Wire Wire Line
	4500 9500 4500 9600
Connection ~ 4500 9500
Connection ~ 4500 9400
Wire Wire Line
	4500 9400 4500 9500
Wire Wire Line
	4500 9300 4500 9400
Connection ~ 4500 9300
Connection ~ 4500 9200
Wire Wire Line
	4500 9200 4500 9300
Wire Wire Line
	4500 9100 4500 9200
Connection ~ 4500 9100
Connection ~ 4500 9000
Wire Wire Line
	4500 9000 4500 9100
Wire Wire Line
	4500 8900 4500 9000
Connection ~ 4500 8900
Connection ~ 4500 8800
Wire Wire Line
	4500 8800 4500 8900
Wire Wire Line
	4500 8700 4500 8800
Connection ~ 4500 8700
Connection ~ 4500 8600
Wire Wire Line
	4500 8600 4500 8700
Wire Wire Line
	4500 8500 4500 8600
Connection ~ 4500 8500
Connection ~ 4500 8400
Wire Wire Line
	4500 8400 4500 8500
Wire Wire Line
	4500 8300 4500 8400
Connection ~ 4500 8300
Connection ~ 4500 8200
Wire Wire Line
	4500 8200 4500 8300
Wire Wire Line
	4500 8100 4500 8200
Text GLabel 19000 4450 0    50   Input ~ 0
HDMI_D0-
Text GLabel 19000 4350 0    50   Input ~ 0
HDMI_D0+
$Comp
L reform2:phycore-imx8m-alpha U1
U 1 1 5CC23859
P 2500 14600
F 0 "U1" H 12819 21211 50  0000 L CNN
F 1 "phycore-imx8m-alpha" H 12819 21120 50  0000 L CNN
F 2 "" H 2500 14600 50  0001 C CNN
F 3 "" H 2500 14600 50  0001 C CNN
	1    2500 14600
	1    0    0    -1  
$EndComp
Text GLabel 2500 13100 0    50   Input ~ 0
SD2_DATA0
Text GLabel 2500 13200 0    50   Input ~ 0
SD2_DATA1
Text GLabel 2500 12700 0    50   Input ~ 0
SD2_DATA2
Text GLabel 2500 12800 0    50   Input ~ 0
SD2_DATA3
Text GLabel 2500 12900 0    50   Input ~ 0
SD2_CMD
Text GLabel 2500 13000 0    50   Input ~ 0
SD2_CLK
Text GLabel 2500 13400 0    50   Input ~ 0
SD2_WP
Text GLabel 2500 13300 0    50   Input ~ 0
SD2_CD
Text GLabel 18550 7850 0    50   Input ~ 0
SD2_DATA0
Text GLabel 18550 7950 0    50   Input ~ 0
SD2_DATA1
Text GLabel 18550 7150 0    50   Input ~ 0
SD2_DATA2
Text GLabel 18550 7250 0    50   Input ~ 0
SD2_DATA3
Text GLabel 18550 7350 0    50   Input ~ 0
SD2_CMD
Text GLabel 18550 7650 0    50   Input ~ 0
SD2_CLK
Text GLabel 18550 8100 0    50   Input ~ 0
SD2_WP
Text GLabel 18550 8200 0    50   Input ~ 0
SD2_CD
$Sheet
S 20850 12750 500  150 
U 5CC81028
F0 "Reform 2 Power" 50
F1 "reform2-power.sch" 50
$EndSheet
$EndSCHEMATC
