EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
Title "MNT Reform 2 PCIe"
Date "2019-06-14"
Rev "0.1"
Comp "MNT Research GmbH"
Comment1 "https://mntre.com"
Comment2 "Engineer: Lukas F. Hartmann"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L reform-motherboard-rescue:MPCIE-Socket U?
U 1 1 5D1F1F73
P 4100 3550
F 0 "U?" H 4100 4987 60  0000 C CNN
F 1 "MPCIE-Socket" H 4100 4881 60  0000 C CNN
F 2 "" H 4200 2550 60  0000 C CNN
F 3 "" H 4200 2550 60  0000 C CNN
	1    4100 3550
	1    0    0    -1  
$EndComp
$Comp
L reform-motherboard-rescue:MPCIE-Socket U?
U 1 1 5D1F2FE0
P 7350 3550
F 0 "U?" H 7350 4987 60  0000 C CNN
F 1 "MPCIE-Socket" H 7350 4881 60  0000 C CNN
F 2 "" H 7450 2550 60  0000 C CNN
F 3 "" H 7450 2550 60  0000 C CNN
	1    7350 3550
	1    0    0    -1  
$EndComp
Text Notes 6650 1850 0    50   ~ 0
TODO: mSATA controller or M.2 SSD?
$EndSCHEMATC
