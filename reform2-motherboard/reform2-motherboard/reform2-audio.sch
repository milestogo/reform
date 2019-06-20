EESchema Schematic File Version 4
LIBS:reform2-motherboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date "2019-06-21"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Audio:TLV320AIC23BPW U?
U 1 1 5DC002F7
P 5800 3750
F 0 "U?" H 5800 2661 50  0000 C CNN
F 1 "TLV320AIC23BPW" H 5800 2570 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 5800 3750 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv320aic23b.pdf" H 5800 3750 50  0001 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
Text Notes 4750 2000 0    50   ~ 0
TODO: other candidates: SGTL5000, WM8731, PCM3168
$Comp
L reform2:SJ-43516-SMT J?
U 1 1 5DC02AC6
P 8550 3300
F 0 "J?" H 8172 3187 50  0000 R CNN
F 1 "SJ-43516-SMT" H 8172 3278 50  0000 R CNN
F 2 "SJ-43516-SMT" H 8550 3300 50  0001 L BNN
F 3 "" H 8550 3300 50  0001 L BNN
F 4 "Unavailable" H 8550 3300 50  0001 L BNN "Availability"
F 5 "CUI" H 8550 3300 50  0001 L BNN "MF"
F 6 "SJ-43516-SMT" H 8550 3300 50  0001 L BNN "MP"
F 7 "Conn 3.5MM Audio Jack F 6 POS Solder RA SMD 6 Terminal 1 Port" H 8550 3300 50  0001 L BNN "Description"
F 8 "None" H 8550 3300 50  0001 L BNN "Package"
	1    8550 3300
	-1   0    0    1   
$EndComp
Text Notes 7800 2000 0    50   ~ 0
TODO: potentially a THT connector (more robust?)
$EndSCHEMATC
