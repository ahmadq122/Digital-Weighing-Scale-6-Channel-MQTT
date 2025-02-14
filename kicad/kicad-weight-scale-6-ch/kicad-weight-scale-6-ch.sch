EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:Buzzer BZ1
U 1 1 606D3770
P 4000 6325
F 0 "BZ1" H 4152 6354 50  0000 L CNN
F 1 "Buzzer" H 4152 6263 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 3975 6425 50  0001 C CNN
F 3 "~" V 3975 6425 50  0001 C CNN
	1    4000 6325
	1    0    0    -1  
$EndComp
$Comp
L DataLoggingBoard:DataLoggingBoard U6
U 1 1 606DBE53
P 8225 4425
F 0 "U6" H 8200 3850 39  0000 C CNN
F 1 "DataLoggingBoard" H 8200 3925 39  0000 C CNN
F 2 "DIY-Board:Datalogging board" H 8225 4925 50  0001 C CNN
F 3 "" H 8225 4925 50  0001 C CNN
	1    8225 4425
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_FET:Si4542DY Q1
U 1 1 606F125E
P 1695 6290
F 0 "Q1" H 1900 6336 39  0000 L CNN
F 1 "Si4542DY" H 1900 6245 24  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1895 6215 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF" H 1795 6290 50  0001 L CNN
	1    1695 6290
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60706077
P 1815 1340
F 0 "BT1" H 1840 1315 39  0000 L CNN
F 1 "18650 Li-ion" H 1840 1265 39  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" V 1815 1400 50  0001 C CNN
F 3 "~" V 1815 1400 50  0001 C CNN
	1    1815 1340
	1    0    0    -1  
$EndComp
Text GLabel 1815 1090 1    39   BiDi ~ 0
VCC_B
Wire Wire Line
	1815 1090 1815 1140
Text GLabel 1815 1490 3    39   Input ~ 0
GND
Text GLabel 2700 1800 3    39   Output ~ 0
GND
Text GLabel 2700 1500 0    39   Output ~ 0
~STDBY
$Comp
L Switch:SW_Push SW1
U 1 1 60720789
P 1495 5440
F 0 "SW1" H 1495 5340 39  0000 C CNN
F 1 "SW_Push" H 1495 5390 24  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1495 5640 50  0001 C CNN
F 3 "~" H 1495 5640 50  0001 C CNN
	1    1495 5440
	1    0    0    -1  
$EndComp
Text GLabel 1245 5440 0    39   Input ~ 0
VCC_1
$Comp
L Transistor_FET:Si4542DY Q1
U 2 1 606F2ACF
P 1595 5790
F 0 "Q1" V 1595 5940 39  0000 L CNN
F 1 "Si4542DY" V 1545 5890 24  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1795 5715 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF" H 1695 5790 50  0001 L CNN
	2    1595 5790
	0    1    -1   0   
$EndComp
Wire Wire Line
	1295 5440 1245 5440
Wire Wire Line
	1595 5990 1595 6090
Wire Wire Line
	1595 6090 1295 6090
$Comp
L Device:R R2
U 1 1 607362F6
P 1295 5890
F 0 "R2" H 1145 5890 39  0000 L CNN
F 1 "10k" H 1145 5840 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1225 5890 50  0001 C CNN
F 3 "~" H 1295 5890 50  0001 C CNN
	1    1295 5890
	1    0    0    -1  
$EndComp
Wire Wire Line
	1295 5440 1295 5690
Wire Wire Line
	1395 5690 1295 5690
Connection ~ 1295 5690
Wire Wire Line
	1295 5690 1295 5740
Wire Wire Line
	1295 6040 1295 6090
Connection ~ 1595 6090
Text GLabel 1595 6640 3    39   Input ~ 0
GND
Wire Wire Line
	1595 6490 1595 6590
$Comp
L Device:R R7
U 1 1 60743EF1
P 1895 6440
F 0 "R7" H 1745 6440 39  0000 L CNN
F 1 "1M" H 1745 6390 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1825 6440 50  0001 C CNN
F 3 "~" H 1895 6440 50  0001 C CNN
	1    1895 6440
	1    0    0    -1  
$EndComp
Wire Wire Line
	1895 6590 1595 6590
Connection ~ 1595 6590
Wire Wire Line
	1595 6590 1595 6640
Wire Wire Line
	2020 6290 1895 6290
Connection ~ 1895 6290
Text GLabel 2020 6290 2    39   Output ~ 0
VCC_CNTRL
Text GLabel 1250 3430 0    39   Output ~ 0
VCC_B1
Text GLabel 1210 3770 0    39   Output ~ 0
5V
$Comp
L Device:R R5
U 1 1 6071CDB3
P 1510 3970
F 0 "R5" H 1360 3970 39  0000 L CNN
F 1 "1M" H 1360 3920 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1440 3970 50  0001 C CNN
F 3 "~" H 1510 3970 50  0001 C CNN
	1    1510 3970
	-1   0    0    1   
$EndComp
Text GLabel 1510 4170 3    39   Input ~ 0
GND
Wire Wire Line
	1210 3770 1510 3770
Connection ~ 1510 3770
Wire Wire Line
	1510 3820 1510 3770
Text GLabel 2420 5440 2    39   Output ~ 0
VCC_2
Wire Wire Line
	2320 5690 2320 5440
$Comp
L Device:D_Schottky D1
U 1 1 60756907
P 2060 3430
F 0 "D1" H 2060 3280 39  0000 C CNN
F 1 "D_Schottky" H 2060 3330 24  0000 C CNN
F 2 "Diode_SMD:D_SMA-SMB_Universal_Handsoldering" H 2060 3430 50  0001 C CNN
F 3 "~" H 2060 3430 50  0001 C CNN
	1    2060 3430
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 60757499
P 2060 3770
F 0 "D2" H 2060 3620 39  0000 C CNN
F 1 "D_Schottky" H 2060 3670 24  0000 C CNN
F 2 "Diode_SMD:D_SMA-SMB_Universal_Handsoldering" H 2060 3770 50  0001 C CNN
F 3 "~" H 2060 3770 50  0001 C CNN
	1    2060 3770
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 60757886
P 2170 5440
F 0 "D3" H 2170 5290 39  0000 C CNN
F 1 "D_Schottky" H 2170 5340 24  0000 C CNN
F 2 "Diode_SMD:D_SMA-SMB_Universal_Handsoldering" H 2170 5440 50  0001 C CNN
F 3 "~" H 2170 5440 50  0001 C CNN
	1    2170 5440
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 607627EF
P 1810 3970
F 0 "R6" H 1660 3970 39  0000 L CNN
F 1 "1M" H 1660 3920 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1740 3970 50  0001 C CNN
F 3 "~" H 1810 3970 50  0001 C CNN
	1    1810 3970
	-1   0    0    1   
$EndComp
Text GLabel 1810 4170 3    39   Input ~ 0
GND
Connection ~ 1295 5440
Wire Wire Line
	1795 5690 2320 5690
$Comp
L Device:CP C1
U 1 1 6076BDF2
P 2260 3970
F 0 "C1" H 2378 3995 39  0000 L CNN
F 1 "220u" H 2378 3932 24  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 2298 3820 50  0001 C CNN
F 3 "~" H 2260 3970 50  0001 C CNN
	1    2260 3970
	1    0    0    -1  
$EndComp
Wire Wire Line
	2210 3430 2260 3430
Wire Wire Line
	2210 3770 2260 3770
Text GLabel 2385 3595 2    39   Output ~ 0
VCC_1
Wire Wire Line
	2260 3820 2260 3770
Connection ~ 2260 3770
Wire Wire Line
	1810 4170 1810 4120
Wire Wire Line
	1510 4170 1510 4120
Text GLabel 2260 4170 3    39   Input ~ 0
GND
Wire Wire Line
	2260 4170 2260 4120
Wire Wire Line
	1810 3430 1810 3820
Wire Wire Line
	1810 3430 1910 3430
Wire Wire Line
	1910 3770 1510 3770
$Comp
L Device:R R9
U 1 1 60787FE0
P 1945 5940
F 0 "R9" H 1795 5940 39  0000 L CNN
F 1 "1k" H 1795 5890 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1875 5940 50  0001 C CNN
F 3 "~" H 1945 5940 50  0001 C CNN
	1    1945 5940
	-1   0    0    1   
$EndComp
Wire Wire Line
	1945 5790 1945 5440
$Comp
L Device:R R10
U 1 1 6078AB48
P 2145 5940
F 0 "R10" H 1995 5940 39  0000 L CNN
F 1 "1M" H 1995 5890 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2075 5940 50  0001 C CNN
F 3 "~" H 2145 5940 50  0001 C CNN
	1    2145 5940
	-1   0    0    1   
$EndComp
Wire Wire Line
	2145 6090 1945 6090
Text GLabel 2445 5790 2    39   Input ~ 0
GND
Wire Wire Line
	1695 5440 1945 5440
Connection ~ 1945 5440
Wire Wire Line
	1945 5440 2020 5440
Wire Wire Line
	2445 5790 2145 5790
Text GLabel 2345 6090 2    39   Output ~ 0
VCC_SENSE
Wire Wire Line
	2345 6090 2145 6090
Connection ~ 2145 6090
Wire Wire Line
	1815 1440 1815 1490
Wire Wire Line
	2260 3430 2260 3595
Wire Wire Line
	2385 3595 2260 3595
Connection ~ 2260 3595
Wire Wire Line
	2260 3595 2260 3770
Text GLabel 4550 1000 0    39   Input ~ 0
VCC
Text GLabel 4550 1100 0    39   Input ~ 0
VCC
Text GLabel 4550 1200 0    39   Input ~ 0
SPEED
Text GLabel 4550 1300 0    39   Input ~ 0
~PWDN
Text GLabel 4550 1400 0    39   BiDi ~ 0
DATA_1
Text GLabel 4550 1500 0    39   Input ~ 0
SCLK_1
Text GLabel 4550 1600 0    39   Input ~ 0
VCC
Text GLabel 4550 1700 0    39   Input ~ 0
GND
Text GLabel 4550 1800 0    39   Input ~ 0
VCC
Text GLabel 5500 3575 0    39   Output ~ 0
3V3
Text GLabel 2700 1400 0    39   Output ~ 0
~CHRG
Text GLabel 2950 950  1    39   Output ~ 0
VCC_B1
Text GLabel 3050 950  1    39   BiDi ~ 0
VCC_B
Text GLabel 5950 1800 2    39   Input ~ 0
3V3
Text GLabel 5950 1700 2    39   Input ~ 0
GND
Text GLabel 5950 1600 2    39   Input ~ 0
GND
Text GLabel 5950 1500 2    39   Input ~ 0
A0_1
Text GLabel 5950 1300 2    39   Input ~ 0
AINN1_1
Text GLabel 5950 1200 2    39   Input ~ 0
AINP1_1
Text GLabel 5950 1100 2    39   Input ~ 0
AINN2_1
Text GLabel 5950 1000 2    39   Input ~ 0
AINP2_1
Text GLabel 5950 1400 2    39   Input ~ 0
CLKIN_1
$Comp
L WCMCU-ADS1232:WCMCU-ADS1232 U5
U 1 1 60853325
P 7400 1400
F 0 "U5" H 7400 2117 50  0000 C CNN
F 1 "WCMCU-ADS1232" H 7400 2026 50  0000 C CNN
F 2 "DIY-Board:wcmcu-ads1232" H 7400 1000 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads1232.pdf" H 7400 1000 50  0001 C CNN
	1    7400 1400
	1    0    0    -1  
$EndComp
Text GLabel 6700 1000 0    39   Input ~ 0
VCC
Text GLabel 6700 1100 0    39   Input ~ 0
VCC
Text GLabel 6700 1200 0    39   Input ~ 0
SPEED
Text GLabel 6700 1300 0    39   Input ~ 0
~PWDN
Text GLabel 6700 1400 0    39   BiDi ~ 0
DATA_2
Text GLabel 6700 1500 0    39   Input ~ 0
SCLK_2
Text GLabel 6700 1600 0    39   Input ~ 0
VCC
Text GLabel 6700 1700 0    39   Input ~ 0
GND
Text GLabel 6700 1800 0    39   Input ~ 0
VCC
Text GLabel 8100 1800 2    39   Input ~ 0
3V3
Text GLabel 8100 1700 2    39   Input ~ 0
GND
Text GLabel 8100 1600 2    39   Input ~ 0
GND
Text GLabel 8100 1500 2    39   Input ~ 0
A0_2
Text GLabel 8100 1300 2    39   Input ~ 0
AINN1_2
Text GLabel 8100 1200 2    39   Input ~ 0
AINP1_2
Text GLabel 8100 1100 2    39   Input ~ 0
AINN2_2
Text GLabel 8100 1000 2    39   Input ~ 0
AINP2_2
Text GLabel 8100 1400 2    39   Input ~ 0
CLKIN_2
$Comp
L WCMCU-ADS1232:WCMCU-ADS1232 U7
U 1 1 6085691D
P 9550 1400
F 0 "U7" H 9550 2117 50  0000 C CNN
F 1 "WCMCU-ADS1232" H 9550 2026 50  0000 C CNN
F 2 "DIY-Board:wcmcu-ads1232" H 9550 1000 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads1232.pdf" H 9550 1000 50  0001 C CNN
	1    9550 1400
	1    0    0    -1  
$EndComp
Text GLabel 8850 1000 0    39   Input ~ 0
VCC
Text GLabel 8850 1100 0    39   Input ~ 0
VCC
Text GLabel 8850 1200 0    39   Input ~ 0
SPEED
Text GLabel 8850 1300 0    39   Input ~ 0
~PWDN
Text GLabel 8850 1400 0    39   BiDi ~ 0
DATA_3
Text GLabel 8850 1500 0    39   Input ~ 0
SCLK_3
Text GLabel 8850 1600 0    39   Input ~ 0
VCC
Text GLabel 8850 1700 0    39   Input ~ 0
GND
Text GLabel 8850 1800 0    39   Input ~ 0
VCC
Text GLabel 10250 1800 2    39   Input ~ 0
3V3
Text GLabel 10250 1700 2    39   Input ~ 0
GND
Text GLabel 10250 1600 2    39   Input ~ 0
GND
Text GLabel 10250 1500 2    39   Input ~ 0
A0_3
Text GLabel 10250 1300 2    39   Input ~ 0
AINN1_3
Text GLabel 10250 1200 2    39   Input ~ 0
AINP1_3
Text GLabel 10250 1100 2    39   Input ~ 0
AINN2_3
Text GLabel 10250 1000 2    39   Input ~ 0
AINP2_3
Text GLabel 10250 1400 2    39   Input ~ 0
CLKIN_3
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 6085DA90
P 5175 2125
F 0 "J6" V 5175 1875 50  0000 L CNN
F 1 "Conn_01x02" V 5275 1825 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5175 2125 50  0001 C CNN
F 3 "~" H 5175 2125 50  0001 C CNN
	1    5175 2125
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 60860DB7
P 7350 2150
F 0 "J7" V 7350 1900 50  0000 L CNN
F 1 "Conn_01x02" V 7450 1875 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7350 2150 50  0001 C CNN
F 3 "~" H 7350 2150 50  0001 C CNN
	1    7350 2150
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 608627E9
P 9500 2150
F 0 "J8" V 9500 1900 50  0000 L CNN
F 1 "Conn_01x02" V 9600 1875 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 2150 50  0001 C CNN
F 3 "~" H 9500 2150 50  0001 C CNN
	1    9500 2150
	0    -1   -1   0   
$EndComp
Text GLabel 5275 2325 3    39   Input ~ 0
GND
Text GLabel 5175 2325 3    39   Input ~ 0
CLKIN_1
Text GLabel 7450 2350 3    39   Input ~ 0
GND
Text GLabel 7350 2350 3    39   Input ~ 0
CLKIN_2
Text GLabel 9600 2350 3    39   Input ~ 0
GND
Text GLabel 9500 2350 3    39   Input ~ 0
CLKIN_3
Text GLabel 5500 4875 0    39   Input ~ 0
GND
Text GLabel 6800 3575 2    39   Input ~ 0
GND
Text GLabel 6800 4175 2    39   Input ~ 0
GND
Text GLabel 5500 5375 0    39   Input ~ 0
VCC
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6086DED2
P 3850 3600
F 0 "J2" H 3725 3300 50  0000 L CNN
F 1 "Conn_01x02" H 3525 3400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3850 3600 50  0001 C CNN
F 3 "~" H 3850 3600 50  0001 C CNN
	1    3850 3600
	-1   0    0    1   
$EndComp
Text GLabel 4050 3500 2    39   Input ~ 0
GND
Text GLabel 4050 3600 2    39   Output ~ 0
EN
Text GLabel 5500 3675 0    39   Input ~ 0
EN
Text GLabel 1385 4825 0    39   BiDi ~ 0
VCC_B
$Comp
L Device:R R4
U 1 1 60741981
P 1535 4825
F 0 "R4" V 1435 4800 39  0000 L CNN
F 1 "27k" V 1535 4825 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1465 4825 50  0001 C CNN
F 3 "~" H 1535 4825 50  0001 C CNN
	1    1535 4825
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 60742133
P 1935 4825
F 0 "R8" V 1835 4800 39  0000 L CNN
F 1 "100k" V 1935 4800 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1865 4825 50  0001 C CNN
F 3 "~" H 1935 4825 50  0001 C CNN
	1    1935 4825
	0    -1   -1   0   
$EndComp
Text GLabel 2085 4825 2    39   Input ~ 0
GND
Wire Wire Line
	1735 4825 1735 4675
Text GLabel 1835 4675 2    39   Output ~ 0
VCC_B_SENSE
Wire Wire Line
	1685 4825 1735 4825
Connection ~ 1735 4825
Wire Wire Line
	1735 4825 1785 4825
Wire Wire Line
	1735 4675 1835 4675
Text GLabel 3900 7050 3    39   Input ~ 0
GND
Text GLabel 3425 6700 0    39   Input ~ 0
BUZZ
$Comp
L Device:R R11
U 1 1 60754142
P 3525 6850
F 0 "R11" H 3375 6850 39  0000 L CNN
F 1 "1M" H 3375 6800 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3455 6850 50  0001 C CNN
F 3 "~" H 3525 6850 50  0001 C CNN
	1    3525 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3425 6700 3525 6700
Wire Wire Line
	3525 6700 3600 6700
Connection ~ 3525 6700
Wire Wire Line
	3900 6900 3900 7000
Wire Wire Line
	3525 7000 3900 7000
Connection ~ 3900 7000
Wire Wire Line
	3900 7000 3900 7050
Wire Wire Line
	3900 6425 3900 6500
Text GLabel 3900 6125 1    39   Input ~ 0
VCC
Wire Wire Line
	3900 6125 3900 6225
Text GLabel 7825 4125 0    39   Input ~ 0
VCC
Text GLabel 7825 4225 0    39   Input ~ 0
GND
Text GLabel 7825 4325 0    39   BiDi ~ 0
SDA
Text GLabel 7825 4425 0    39   Input ~ 0
SCL
Text GLabel 7825 4525 0    39   Input ~ 0
SCK
Text GLabel 7825 4625 0    39   Output ~ 0
MISO
Text GLabel 7825 4725 0    39   Input ~ 0
MOSI
Text GLabel 7825 4825 0    39   Input ~ 0
GND
Text GLabel 6800 4075 2    39   BiDi ~ 0
SDA
Text GLabel 6800 3775 2    39   Output ~ 0
SCL
Text GLabel 6800 4375 2    39   Output ~ 0
SCK
Text GLabel 6800 4275 2    39   Input ~ 0
MISO
Text GLabel 6800 3675 2    39   Output ~ 0
MOSI
Text GLabel 9600 3050 0    20   Input ~ 0
VCC
Text GLabel 10050 3050 2    20   Input ~ 0
VCC
Text GLabel 9600 3300 0    20   Input ~ 0
GND
Text GLabel 10050 3300 2    20   Input ~ 0
GND
Text GLabel 9600 3150 0    20   Output ~ 0
AINP1_1
Text GLabel 9600 3200 0    20   Output ~ 0
AINN1_1
Text GLabel 10050 3200 2    20   Output ~ 0
AINP1_1
Text GLabel 10050 3150 2    20   Output ~ 0
AINN1_1
Text GLabel 9600 3600 0    20   Input ~ 0
VCC
Text GLabel 10050 3600 2    20   Input ~ 0
VCC
Text GLabel 9600 3850 0    20   Input ~ 0
GND
Text GLabel 10050 3850 2    20   Input ~ 0
GND
Text GLabel 9600 3750 0    20   Output ~ 0
AINN2_1
Text GLabel 10050 3750 2    20   Output ~ 0
AINP2_1
Text GLabel 10050 3700 2    20   Output ~ 0
AINN2_1
Text GLabel 9600 4150 0    20   Input ~ 0
VCC
Text GLabel 10050 4150 2    20   Input ~ 0
VCC
Text GLabel 9600 4400 0    20   Input ~ 0
GND
Text GLabel 10050 4400 2    20   Input ~ 0
GND
Text GLabel 9600 4250 0    20   Output ~ 0
AINP1_2
Text GLabel 9600 4300 0    20   Output ~ 0
AINN1_2
Text GLabel 10050 4300 2    20   Output ~ 0
AINP1_2
Text GLabel 9600 4700 0    20   Input ~ 0
VCC
Text GLabel 10050 4700 2    20   Input ~ 0
VCC
Text GLabel 9600 4950 0    20   Input ~ 0
GND
Text GLabel 10050 4950 2    20   Input ~ 0
GND
Text GLabel 9600 4800 0    20   Output ~ 0
AINP2_2
Text GLabel 9600 4850 0    20   Output ~ 0
AINN2_2
Text GLabel 10050 4850 2    20   Output ~ 0
AINP2_2
Text GLabel 10050 4800 2    20   Output ~ 0
AINN2_2
Text GLabel 9600 5260 0    20   Input ~ 0
VCC
Text GLabel 10050 5260 2    20   Input ~ 0
VCC
Text GLabel 9600 5510 0    20   Input ~ 0
GND
Text GLabel 10050 5510 2    20   Input ~ 0
GND
Text GLabel 9600 5360 0    20   Output ~ 0
AINP1_3
Text GLabel 9600 5410 0    20   Output ~ 0
AINN1_3
Text GLabel 10050 5410 2    20   Output ~ 0
AINP1_3
Text GLabel 10050 5360 2    20   Output ~ 0
AINN1_3
Text GLabel 9600 5800 0    20   Input ~ 0
VCC
Text GLabel 10050 5800 2    20   Input ~ 0
VCC
Text GLabel 9600 6050 0    20   Input ~ 0
GND
Text GLabel 10050 6050 2    20   Input ~ 0
GND
Text GLabel 9600 5900 0    20   Output ~ 0
AINP2_3
Text GLabel 9600 5950 0    20   Output ~ 0
AINN2_3
Text GLabel 10050 5950 2    20   Output ~ 0
AINP2_3
Text GLabel 10050 5900 2    20   Output ~ 0
AINN2_3
Text GLabel 5500 4175 0    39   Output ~ 0
~PWDN
Text GLabel 6800 4475 2    39   Output ~ 0
BUZZ
Text GLabel 5500 4075 0    39   Input ~ 0
VCC_B_SENSE
Text GLabel 5500 4275 0    39   Input ~ 0
SCLK_2
Text GLabel 5500 4575 0    39   Input ~ 0
SCLK_1
Text GLabel 5500 4975 0    39   Input ~ 0
SCLK_3
Text GLabel 5500 4375 0    39   BiDi ~ 0
DATA_2
Text GLabel 5500 4675 0    39   BiDi ~ 0
DATA_1
Text GLabel 6800 5075 2    39   BiDi ~ 0
DATA_3
Text GLabel 5500 4475 0    39   Output ~ 0
A0_2
Text GLabel 5500 4775 0    39   Output ~ 0
A0_1
Text GLabel 5500 3975 0    39   Input ~ 0
VCC_SENSE
Text GLabel 6800 4875 2    39   Output ~ 0
VCC_CNTRL
Text GLabel 6800 4775 2    39   Output ~ 0
SPEED
Text GLabel 5500 3775 0    39   Input ~ 0
~CHRG
Text GLabel 5500 3875 0    39   Input ~ 0
~STDBY
$Comp
L Device:R R1
U 1 1 607A0D71
P 1300 2550
F 0 "R1" H 1150 2550 39  0000 L CNN
F 1 "10k" H 1150 2500 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1230 2550 50  0001 C CNN
F 3 "~" H 1300 2550 50  0001 C CNN
	1    1300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 607A1BEF
P 1550 2550
F 0 "R3" H 1400 2550 39  0000 L CNN
F 1 "10k" H 1400 2500 24  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1480 2550 50  0001 C CNN
F 3 "~" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
Text GLabel 1300 2800 3    39   Output ~ 0
~CHRG
Text GLabel 1550 2800 3    39   Output ~ 0
~STDBY
Wire Wire Line
	1300 2700 1300 2800
Wire Wire Line
	1550 2700 1550 2800
Text GLabel 1300 2350 1    39   Input ~ 0
VCC
Text GLabel 1550 2350 1    39   Input ~ 0
VCC
Wire Wire Line
	1300 2350 1300 2400
Wire Wire Line
	1550 2350 1550 2400
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 607C50B5
P 3850 4850
F 0 "J4" H 3768 4425 50  0000 C CNN
F 1 "Conn_01x04" H 3768 4516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3850 4850 50  0001 C CNN
F 3 "~" H 3850 4850 50  0001 C CNN
	1    3850 4850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 607CCA81
P 3850 5525
F 0 "J5" H 3768 5100 50  0000 C CNN
F 1 "Conn_01x04" H 3768 5191 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3850 5525 50  0001 C CNN
F 3 "~" H 3850 5525 50  0001 C CNN
	1    3850 5525
	-1   0    0    1   
$EndComp
Text GLabel 5500 5075 0    39   Input ~ 0
RXD1
Text GLabel 5500 5175 0    39   Output ~ 0
TXD1
Text GLabel 6800 4575 2    39   Output ~ 0
TXD2
Text GLabel 6800 4675 2    39   Input ~ 0
RXD2
Text GLabel 4050 4850 2    39   Input ~ 0
RXD1
Text GLabel 4050 4750 2    39   Output ~ 0
TXD1
Text GLabel 4050 4650 2    39   Input ~ 0
GND
Text GLabel 4050 4950 2    39   Input ~ 0
VCC
Text GLabel 4050 5625 2    39   Input ~ 0
VCC
Text GLabel 4050 5325 2    39   Input ~ 0
GND
Text GLabel 4050 5425 2    39   Output ~ 0
TXD2
Text GLabel 4050 5525 2    39   Input ~ 0
RXD2
Wire Wire Line
	4175 2925 4175 2875
Text GLabel 4175 2925 3    39   Input ~ 0
GND
$Comp
L Device:CP C2
U 1 1 608694FA
P 4175 2725
F 0 "C2" H 4293 2750 39  0000 L CNN
F 1 "100U" H 4293 2687 24  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 4213 2575 50  0001 C CNN
F 3 "~" H 4175 2725 50  0001 C CNN
	1    4175 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 2500 4175 2575
Text GLabel 4175 2500 1    39   BiDi ~ 0
VCC
Text GLabel 9600 3700 0    20   Output ~ 0
AINP2_1
Text GLabel 10050 4250 2    20   Output ~ 0
AINN1_2
$Comp
L TP4056:TP-4056 U1
U 1 1 608DF217
P 3150 1850
F 0 "U1" H 3478 2304 50  0000 L CNN
F 1 "TP-4056" H 3478 2213 50  0000 L CNN
F 2 "DIY-Board:Li-ion ic charger" H 3500 2000 50  0001 C CNN
F 3 "" H 3500 2000 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
Text GLabel 3250 925  1    39   Input ~ 0
GND
Text GLabel 3350 925  1    39   Input ~ 0
GND
Wire Wire Line
	3250 925  3250 1000
Wire Wire Line
	3350 925  3350 1000
Wire Wire Line
	3050 950  3050 1000
Wire Wire Line
	2950 950  2950 1000
Wire Wire Line
	2700 1400 2750 1400
Wire Wire Line
	2700 1500 2750 1500
Wire Wire Line
	2700 1800 2700 1750
Wire Wire Line
	2700 1750 2750 1750
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 608FCB1D
P 3850 4175
F 0 "J3" H 3768 3750 50  0000 C CNN
F 1 "Conn_01x04" H 3768 3841 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3850 4175 50  0001 C CNN
F 3 "~" H 3850 4175 50  0001 C CNN
	1    3850 4175
	-1   0    0    1   
$EndComp
Text GLabel 4050 4275 2    39   Input ~ 0
VCC
Text GLabel 4050 3975 2    39   Input ~ 0
GND
Text GLabel 4050 4075 2    39   Output ~ 0
TXD0
Text GLabel 4050 4175 2    39   Input ~ 0
RXD0
Text GLabel 6800 3875 2    39   Output ~ 0
TXD0
Text GLabel 6800 3975 2    39   Input ~ 0
RXD0
Text GLabel 6800 4975 2    39   Output ~ 0
A0_3
$Comp
L USB~Type~C~Converter:USB_Type_C U10
U 1 1 6091C2C6
P 9750 4300
F 0 "U10" H 10440 4520 50  0000 C CNN
F 1 "USB_Type_C" H 10590 4440 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 4000 50  0001 C CNN
F 3 "" H 9350 4000 50  0001 C CNN
	1    9750 4300
	1    0    0    -1  
$EndComp
$Comp
L USB~Type~C~Converter:USB_Type_C U11
U 1 1 6091D75A
P 9750 4850
F 0 "U11" H 10430 5070 50  0000 C CNN
F 1 "USB_Type_C" H 10580 4970 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 4550 50  0001 C CNN
F 3 "" H 9350 4550 50  0001 C CNN
	1    9750 4850
	1    0    0    -1  
$EndComp
$Comp
L USB~Type~C~Converter:USB_Type_C U12
U 1 1 6091E248
P 9750 5410
F 0 "U12" H 10430 5630 50  0000 C CNN
F 1 "USB_Type_C" H 10580 5540 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 5110 50  0001 C CNN
F 3 "" H 9350 5110 50  0001 C CNN
	1    9750 5410
	1    0    0    -1  
$EndComp
$Comp
L USB~Type~C~Converter:USB_Type_C U13
U 1 1 6091F152
P 9750 5950
F 0 "U13" H 10430 6170 50  0000 C CNN
F 1 "USB_Type_C" H 10580 6070 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 5650 50  0001 C CNN
F 3 "" H 9350 5650 50  0001 C CNN
	1    9750 5950
	1    0    0    -1  
$EndComp
Text GLabel 3050 3050 3    39   Input ~ 0
GND
Text GLabel 3350 3050 3    39   Input ~ 0
GND
Text GLabel 3250 3050 3    39   Output ~ 0
VCC
Wire Wire Line
	2320 5440 2420 5440
Connection ~ 2320 5440
Text GLabel 2950 3050 3    39   Output ~ 0
VCC_2
$Comp
L Step~Up~DC~to~5V~USB:StepUpTo5V U2
U 1 1 607526CE
P 3150 2750
F 0 "U2" H 3428 2888 50  0000 L CNN
F 1 "StepUpTo5V" H 3428 2797 50  0000 L CNN
F 2 "DIY-Board:Step up 5V" H 3150 2750 50  0001 C CNN
F 3 "" H 3150 2750 50  0001 C CNN
	1    3150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 60781C35
P 1280 1130
F 0 "#PWR03" H 1280 980 50  0001 C CNN
F 1 "VCC" H 1295 1303 50  0000 C CNN
F 2 "" H 1280 1130 50  0001 C CNN
F 3 "" H 1280 1130 50  0001 C CNN
	1    1280 1130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6078208E
P 1480 1280
F 0 "#PWR04" H 1480 1030 50  0001 C CNN
F 1 "GND" H 1485 1107 50  0000 C CNN
F 2 "" H 1480 1280 50  0001 C CNN
F 3 "" H 1480 1280 50  0001 C CNN
	1    1480 1280
	1    0    0    -1  
$EndComp
Text GLabel 1480 1180 1    39   Output ~ 0
GND
Text GLabel 1280 1280 3    39   Output ~ 0
VCC
Wire Wire Line
	1280 1280 1280 1130
Wire Wire Line
	1480 1280 1480 1180
$Comp
L ESP~WROOM32~DEV-BOARD:ESPWROOM32 U4
U 1 1 607A3C64
P 6150 4525
F 0 "U4" H 6150 5824 50  0000 C CNN
F 1 "ESPWROOM32" H 6150 5741 39  0000 C CNN
F 2 "DIY-Board:esp wroom 32 board" H 6150 3775 50  0001 C CNN
F 3 "" H 6150 3775 50  0001 C CNN
	1    6150 4525
	1    0    0    -1  
$EndComp
$Comp
L WCMCU-ADS1232:WCMCU-ADS1232 U3
U 1 1 6082A8C3
P 5250 1400
F 0 "U3" H 5250 2117 50  0000 C CNN
F 1 "WCMCU-ADS1232" H 5250 2026 50  0000 C CNN
F 2 "DIY-Board:wcmcu-ads1232" H 5250 1000 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ads1232.pdf" H 5250 1000 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
Text GLabel 2220 2130 2    39   Output ~ 0
5V
Text GLabel 2540 2800 3    39   Output ~ 0
GND
Wire Wire Line
	2540 2560 2420 2560
Wire Wire Line
	2420 2760 2540 2760
Wire Wire Line
	2540 2760 2540 2800
$Comp
L Transistor_FET:Si4542DY Q2
U 2 1 6087827C
P 1510 3530
F 0 "Q2" V 1510 3680 39  0000 L CNN
F 1 "Si4542DY" V 1460 3630 24  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1710 3455 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF" H 1610 3530 50  0001 L CNN
	2    1510 3530
	0    1    -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 608E14B4
P 2120 2660
F 0 "J1" H 2177 2977 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 2177 2886 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 2170 2620 50  0001 C CNN
F 3 "~" H 2170 2620 50  0001 C CNN
	1    2120 2660
	1    0    0    -1  
$EndComp
Wire Wire Line
	2420 2660 2540 2660
Wire Wire Line
	2540 2660 2540 2760
Connection ~ 2540 2760
$Comp
L USB~Type~C~Converter:USB_Type_C U8
U 1 1 6091572D
P 9750 3200
F 0 "U8" H 10410 3420 50  0000 C CNN
F 1 "USB_Type_C" H 10580 3330 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 2900 50  0001 C CNN
F 3 "" H 9350 2900 50  0001 C CNN
	1    9750 3200
	1    0    0    -1  
$EndComp
$Comp
L USB~Type~C~Converter:USB_Type_C U9
U 1 1 6091991D
P 9750 3750
F 0 "U9" H 10410 3970 50  0000 C CNN
F 1 "USB_Type_C" H 10580 3890 50  0000 C CNN
F 2 "DIY-Board:Type C Converter" H 9350 3450 50  0001 C CNN
F 3 "" H 9350 3450 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 60B2498E
P 1950 2130
F 0 "J9" V 1950 1880 50  0000 L CNN
F 1 "Conn_01x02" V 2050 1830 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1950 2130 50  0001 C CNN
F 3 "~" H 1950 2130 50  0001 C CNN
	1    1950 2130
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2130 2220 2130
Wire Wire Line
	2150 2030 2540 2030
Wire Wire Line
	2540 2030 2540 2560
Wire Wire Line
	2540 1650 2540 2030
Wire Wire Line
	2540 1650 2750 1650
Connection ~ 2540 2030
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 60917343
P 3800 6700
F 0 "Q3" H 4004 6746 50  0000 L CNN
F 1 "BSS138" H 4004 6655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 6625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3800 6700 50  0001 L CNN
	1    3800 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1510 3730 1510 3770
Wire Wire Line
	1810 3430 1710 3430
Connection ~ 1810 3430
Wire Wire Line
	1310 3430 1250 3430
Text Notes 1860 5660 0    20   ~ 0
add diode, and move vcc sens junction
$EndSCHEMATC
