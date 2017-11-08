EESchema Schematic File Version 2
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
LIBS:adp5350
LIBS:adp5350_devboard-cache
EELAYER 25 0
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
L adp5350 U1
U 1 1 59FBA47C
P 3950 3950
F 0 "U1" H 3950 3900 60  0000 C CNN
F 1 "adp5350" H 3950 4000 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 4300 4900 60  0001 C CNN
F 3 "" H 4300 4900 60  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59FBCE6C
P 4050 6600
F 0 "#PWR01" H 4050 6350 50  0001 C CNN
F 1 "GND" H 4050 6450 50  0000 C CNN
F 2 "" H 4050 6600 50  0001 C CNN
F 3 "" H 4050 6600 50  0001 C CNN
	1    4050 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59FBF183
P 5200 3400
F 0 "#PWR02" H 5200 3150 50  0001 C CNN
F 1 "GND" H 5200 3250 50  0000 C CNN
F 2 "" H 5200 3400 50  0001 C CNN
F 3 "" H 5200 3400 50  0001 C CNN
	1    5200 3400
	-1   0    0    -1  
$EndComp
NoConn ~ 5150 5300
$Comp
L GND #PWR03
U 1 1 59FBF6B5
P 2650 6050
F 0 "#PWR03" H 2650 5800 50  0001 C CNN
F 1 "GND" H 2650 5900 50  0000 C CNN
F 2 "" H 2650 6050 50  0001 C CNN
F 3 "" H 2650 6050 50  0001 C CNN
	1    2650 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 59FBF96C
P 2700 2050
F 0 "C4" H 2710 2120 50  0000 C CNN
F 1 "4.7uF" H 2710 1970 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2700 2050 50  0001 C CNN
F 3 "" H 2700 2050 50  0001 C CNN
	1    2700 2050
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 59FBFA2E
P 2700 5050
F 0 "C5" H 2710 5120 50  0000 C CNN
F 1 "2.2uF" H 2710 4970 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 59FBFB02
P 2500 2050
F 0 "#PWR04" H 2500 1800 50  0001 C CNN
F 1 "GND" H 2500 1900 50  0000 C CNN
F 2 "" H 2500 2050 50  0001 C CNN
F 3 "" H 2500 2050 50  0001 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59FBFBAF
P 2500 5050
F 0 "#PWR05" H 2500 4800 50  0001 C CNN
F 1 "GND" H 2500 4900 50  0000 C CNN
F 2 "" H 2500 5050 50  0001 C CNN
F 3 "" H 2500 5050 50  0001 C CNN
	1    2500 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59FC09CE
P 5800 3750
F 0 "#PWR06" H 5800 3500 50  0001 C CNN
F 1 "GND" H 5800 3600 50  0000 C CNN
F 2 "" H 5800 3750 50  0001 C CNN
F 3 "" H 5800 3750 50  0001 C CNN
	1    5800 3750
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 59FC0AC7
P 5800 1600
F 0 "R7" V 5830 1620 50  0000 C TNN
F 1 "1" V 5830 1560 50  0000 C BNN
F 2 "Resistors_SMD:R_1206" H 5800 1600 50  0001 C CNN
F 3 "" H 5800 1600 50  0001 C CNN
	1    5800 1600
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 59FC1BF5
P 5300 2050
F 0 "C8" H 5310 2120 50  0000 C CNN
F 1 "1uF" H 5310 1970 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5300 2050 50  0001 C CNN
F 3 "" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59FC1C77
P 5300 2200
F 0 "#PWR07" H 5300 1950 50  0001 C CNN
F 1 "GND" H 5300 2050 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 59FC1D55
P 5600 1750
F 0 "R4" H 5630 1770 50  0000 L CNN
F 1 "10K" H 5630 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5600 1750 50  0001 C CNN
F 3 "" H 5600 1750 50  0001 C CNN
	1    5600 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59FC1E88
P 5600 2250
F 0 "#PWR08" H 5600 2000 50  0001 C CNN
F 1 "GND" H 5600 2100 50  0000 C CNN
F 2 "" H 5600 2250 50  0001 C CNN
F 3 "" H 5600 2250 50  0001 C CNN
	1    5600 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59FC2977
P 6000 2250
F 0 "#PWR09" H 6000 2000 50  0001 C CNN
F 1 "GND" H 6000 2100 50  0000 C CNN
F 2 "" H 6000 2250 50  0001 C CNN
F 3 "" H 6000 2250 50  0001 C CNN
	1    6000 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59FC4AE4
P 6650 2800
F 0 "#PWR010" H 6650 2550 50  0001 C CNN
F 1 "GND" H 6650 2650 50  0000 C CNN
F 2 "" H 6650 2800 50  0001 C CNN
F 3 "" H 6650 2800 50  0001 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59FC4B09
P 7050 2800
F 0 "#PWR011" H 7050 2550 50  0001 C CNN
F 1 "GND" H 7050 2650 50  0000 C CNN
F 2 "" H 7050 2800 50  0001 C CNN
F 3 "" H 7050 2800 50  0001 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 59FC55E6
P 2650 1500
F 0 "C3" H 2660 1570 50  0000 C CNN
F 1 "2.2uF" H 2660 1420 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0001 C CNN
	1    2650 1500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 59FC567F
P 2650 1650
F 0 "#PWR012" H 2650 1400 50  0001 C CNN
F 1 "GND" H 2650 1500 50  0000 C CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59FC70CB
P 2550 3350
F 0 "#PWR013" H 2550 3100 50  0001 C CNN
F 1 "GND" H 2550 3200 50  0000 C CNN
F 2 "" H 2550 3350 50  0001 C CNN
F 3 "" H 2550 3350 50  0001 C CNN
	1    2550 3350
	1    0    0    -1  
$EndComp
$Comp
L L_Small L1
U 1 1 59FC7147
P 2650 2650
F 0 "L1" H 2680 2690 50  0000 L CNN
F 1 "1.5uH" H 2680 2610 50  0000 L CNN
F 2 "" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0001 C CNN
	1    2650 2650
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 59FC728D
P 2550 3000
F 0 "C2" H 2560 3070 50  0000 C CNN
F 1 "10uF" H 2560 2920 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2550 3000 50  0001 C CNN
F 3 "" H 2550 3000 50  0001 C CNN
	1    2550 3000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR014
U 1 1 59FC7782
P 2400 1300
F 0 "#PWR014" H 2400 1150 50  0001 C CNN
F 1 "+5V" H 2400 1440 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 59FC922E
P 5300 4050
F 0 "L2" H 5330 4090 50  0000 L CNN
F 1 "4.7uH" H 5330 4010 50  0000 L CNN
F 2 "" H 5300 4050 50  0001 C CNN
F 3 "" H 5300 4050 50  0001 C CNN
	1    5300 4050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 59FC968C
P 6950 3900
F 0 "C10" H 6960 3970 50  0000 C CNN
F 1 "4.7uF" H 6960 3820 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 6950 3900 50  0001 C CNN
F 3 "" H 6950 3900 50  0001 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59FC98D6
P 6950 4000
F 0 "#PWR015" H 6950 3750 50  0001 C CNN
F 1 "GND" H 6950 3850 50  0000 C CNN
F 2 "" H 6950 4000 50  0001 C CNN
F 3 "" H 6950 4000 50  0001 C CNN
	1    6950 4000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 59FCD150
P 5300 1200
F 0 "C7" H 5310 1270 50  0000 C CNN
F 1 "1uF" H 5310 1120 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5300 1200 50  0001 C CNN
F 3 "" H 5300 1200 50  0001 C CNN
	1    5300 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59FCD215
P 5300 1050
F 0 "#PWR016" H 5300 800 50  0001 C CNN
F 1 "GND" H 5300 900 50  0000 C CNN
F 2 "" H 5300 1050 50  0001 C CNN
F 3 "" H 5300 1050 50  0001 C CNN
	1    5300 1050
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR017
U 1 1 59FCD48D
P 5850 1150
F 0 "#PWR017" H 5850 1000 50  0001 C CNN
F 1 "+5V" H 5850 1290 50  0000 C CNN
F 2 "" H 5850 1150 50  0001 C CNN
F 3 "" H 5850 1150 50  0001 C CNN
	1    5850 1150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 59FCDAAF
P 2100 3800
F 0 "C1" H 2110 3870 50  0000 C CNN
F 1 "10uF" H 2110 3720 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 2100 3800 50  0001 C CNN
F 3 "" H 2100 3800 50  0001 C CNN
	1    2100 3800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59FCE0F9
P 2100 3650
F 0 "#PWR018" H 2100 3400 50  0001 C CNN
F 1 "GND" H 2100 3500 50  0000 C CNN
F 2 "" H 2100 3650 50  0001 C CNN
F 3 "" H 2100 3650 50  0001 C CNN
	1    2100 3650
	1    0    0    1   
$EndComp
$Comp
L R_Small R6
U 1 1 59FD0199
P 5600 3050
F 0 "R6" V 5630 3070 50  0000 C TNN
F 1 "1" V 5630 3010 50  0000 C BNN
F 2 "Resistors_SMD:R_1206" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	0    1    -1   0   
$EndComp
$Comp
L R_Small R18
U 1 1 59FD02B0
P 6850 2200
F 0 "R18" V 6880 2220 50  0000 C TNN
F 1 "1" V 6880 2160 50  0000 C BNN
F 2 "Resistors_SMD:R_1206" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R12
U 1 1 5A0028B2
P 6000 1750
F 0 "R12" H 6030 1770 50  0000 L CNN
F 1 "10K" H 6030 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6000 1750 50  0001 C CNN
F 3 "" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 5A00295E
P 5600 2100
F 0 "R5" H 5630 2120 50  0000 L CNN
F 1 "10K" H 5630 2060 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 5A002A19
P 6000 2100
F 0 "R13" H 6030 2120 50  0000 L CNN
F 1 "10K" H 6030 2060 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5A002C64
P 5400 3200
F 0 "R1" H 5430 3220 50  0000 L CNN
F 1 "10K" H 5430 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5400 3200 50  0001 C CNN
F 3 "" H 5400 3200 50  0001 C CNN
	1    5400 3200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 5A002D18
P 5800 3200
F 0 "R8" H 5830 3220 50  0000 L CNN
F 1 "10K" H 5830 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5800 3200 50  0001 C CNN
F 3 "" H 5800 3200 50  0001 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5A002DB5
P 5400 3550
F 0 "R2" H 5430 3570 50  0000 L CNN
F 1 "10K" H 5430 3510 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5400 3550 50  0001 C CNN
F 3 "" H 5400 3550 50  0001 C CNN
	1    5400 3550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 5A002E61
P 5800 3550
F 0 "R9" H 5830 3570 50  0000 L CNN
F 1 "10K" H 5830 3510 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5800 3550 50  0001 C CNN
F 3 "" H 5800 3550 50  0001 C CNN
	1    5800 3550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 5A002F04
P 6650 2350
F 0 "R16" H 6680 2370 50  0000 L CNN
F 1 "10K" H 6680 2310 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6650 2350 50  0001 C CNN
F 3 "" H 6650 2350 50  0001 C CNN
	1    6650 2350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 5A002FC6
P 6650 2700
F 0 "R17" H 6680 2720 50  0000 L CNN
F 1 "10K" H 6680 2660 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6650 2700 50  0001 C CNN
F 3 "" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 5A00306D
P 7050 2700
F 0 "R20" H 7080 2720 50  0000 L CNN
F 1 "10K" H 7080 2660 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 7050 2700 50  0001 C CNN
F 3 "" H 7050 2700 50  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 5A003119
P 7050 2350
F 0 "R19" H 7080 2370 50  0000 L CNN
F 1 "10K" H 7080 2310 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 7050 2350 50  0001 C CNN
F 3 "" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 5A03572E
P 5300 2650
F 0 "C9" H 5310 2720 50  0000 C CNN
F 1 "1uF" H 5310 2570 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5300 2650 50  0001 C CNN
F 3 "" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5A035734
P 5300 2750
F 0 "#PWR019" H 5300 2500 50  0001 C CNN
F 1 "GND" H 5300 2600 50  0000 C CNN
F 2 "" H 5300 2750 50  0001 C CNN
F 3 "" H 5300 2750 50  0001 C CNN
	1    5300 2750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5A03579B
P 5200 3250
F 0 "C6" H 5210 3320 50  0000 C CNN
F 1 "1uF" H 5210 3170 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 5200 3250 50  0001 C CNN
F 3 "" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
NoConn ~ 5150 5150
$Comp
L LED_Small D4
U 1 1 5A036AA7
P 5500 4750
F 0 "D4" H 5450 4875 50  0000 L CNN
F 1 "LED_Small" H 5325 4650 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5500 4750 50  0001 C CNN
F 3 "" V 5500 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D5
U 1 1 5A036B6B
P 5500 5050
F 0 "D5" H 5450 5175 50  0000 L CNN
F 1 "LED_Small" H 5325 4950 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5500 5050 50  0001 C CNN
F 3 "" V 5500 5050 50  0001 C CNN
	1    5500 5050
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D7
U 1 1 5A036C17
P 5900 4750
F 0 "D7" H 5850 4875 50  0000 L CNN
F 1 "LED_Small" H 5725 4650 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5900 4750 50  0001 C CNN
F 3 "" V 5900 4750 50  0001 C CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D8
U 1 1 5A037055
P 5900 5050
F 0 "D8" H 5850 5175 50  0000 L CNN
F 1 "LED_Small" H 5725 4950 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5900 5050 50  0001 C CNN
F 3 "" V 5900 5050 50  0001 C CNN
	1    5900 5050
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D6
U 1 1 5A037113
P 5500 5350
F 0 "D6" H 5450 5475 50  0000 L CNN
F 1 "LED_Small" H 5325 5250 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5500 5350 50  0001 C CNN
F 3 "" V 5500 5350 50  0001 C CNN
	1    5500 5350
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D9
U 1 1 5A0371DC
P 5900 5350
F 0 "D9" H 5850 5475 50  0000 L CNN
F 1 "LED_Small" H 5725 5250 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5900 5350 50  0001 C CNN
F 3 "" V 5900 5350 50  0001 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A0377A9
P 5300 4500
F 0 "#PWR020" H 5300 4250 50  0001 C CNN
F 1 "GND" H 5300 4350 50  0000 C CNN
F 2 "" H 5300 4500 50  0001 C CNN
F 3 "" H 5300 4500 50  0001 C CNN
	1    5300 4500
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C11
U 1 1 5A037C93
P 6550 4600
F 0 "C11" H 6560 4670 50  0000 C CNN
F 1 "4.7uF" H 6560 4520 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 6550 4600 50  0001 C CNN
F 3 "" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5A037ECD
P 6550 4700
F 0 "#PWR021" H 6550 4450 50  0001 C CNN
F 1 "GND" H 6550 4550 50  0000 C CNN
F 2 "" H 6550 4700 50  0001 C CNN
F 3 "" H 6550 4700 50  0001 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2050 2600 2050
Wire Wire Line
	2500 5050 2600 5050
Wire Wire Line
	5800 3050 5800 3100
Connection ~ 5300 1850
Wire Wire Line
	5150 1850 5300 1850
Wire Wire Line
	5600 1850 5600 2000
Wire Wire Line
	5600 1600 5600 1650
Connection ~ 5600 1600
Wire Wire Line
	6000 1850 6000 2000
Wire Wire Line
	6000 1600 6000 1650
Connection ~ 6000 1600
Connection ~ 5400 3050
Wire Wire Line
	5400 3300 5400 3450
Wire Wire Line
	5400 3050 5400 3100
Connection ~ 6350 2450
Wire Wire Line
	6650 2450 6650 2600
Wire Wire Line
	6650 2200 6650 2250
Connection ~ 6650 2200
Wire Wire Line
	7050 2450 7050 2600
Wire Wire Line
	7050 2200 7050 2250
Connection ~ 7050 2200
Wire Wire Line
	5150 2450 6350 2450
Wire Wire Line
	2800 1350 2800 1500
Wire Wire Line
	2400 1350 2800 1350
Connection ~ 2650 1350
Wire Wire Line
	2650 1350 2650 1400
Wire Wire Line
	2800 2500 2800 2650
Wire Wire Line
	2800 3150 2800 3300
Wire Wire Line
	2800 3300 2550 3300
Wire Wire Line
	2800 2650 2750 2650
Wire Wire Line
	2550 2650 2550 2900
Wire Wire Line
	2550 3100 2550 3350
Wire Wire Line
	2550 2650 2350 2650
Wire Wire Line
	2800 3650 2350 3650
Wire Wire Line
	2350 3650 2350 2650
Wire Wire Line
	6350 2450 6350 2200
Wire Wire Line
	5200 3050 5200 3150
Wire Wire Line
	5150 4050 5200 4050
Wire Wire Line
	5150 4200 5500 4200
Wire Wire Line
	5400 4050 6750 4050
Wire Wire Line
	5500 4200 5500 4050
Connection ~ 5500 4050
Wire Wire Line
	6750 4050 6750 3700
Wire Wire Line
	6750 3700 7300 3700
Wire Wire Line
	6950 3700 6950 3800
Connection ~ 6950 3700
Wire Wire Line
	5150 4350 6900 4350
Wire Wire Line
	5150 1350 5850 1350
Wire Wire Line
	5300 1100 5300 1050
Connection ~ 5300 1350
Wire Wire Line
	5850 1350 5850 1150
Wire Wire Line
	7300 3700 7300 3500
Connection ~ 2350 4000
Wire Wire Line
	5150 3050 5500 3050
Wire Wire Line
	5700 3050 5900 3050
Wire Wire Line
	5800 3650 5800 3750
Wire Wire Line
	5400 3650 5400 3700
Wire Wire Line
	5400 3700 5800 3700
Connection ~ 5800 3700
Wire Wire Line
	5300 1300 5300 1350
Wire Wire Line
	5300 1600 5300 1950
Wire Wire Line
	5300 1600 5700 1600
Wire Wire Line
	5900 1600 6600 1600
Wire Wire Line
	6350 2200 6750 2200
Wire Wire Line
	6950 2200 7650 2200
Connection ~ 5300 2450
Connection ~ 5200 3050
Wire Wire Line
	5300 2550 5300 2450
Wire Wire Line
	2650 6050 2800 6050
Wire Wire Line
	5150 4500 5300 4500
Wire Wire Line
	5400 4750 5400 4700
Wire Wire Line
	5400 4700 5150 4700
Wire Wire Line
	5400 5050 5300 5050
Wire Wire Line
	5300 5050 5300 4850
Wire Wire Line
	5300 4850 5150 4850
Wire Wire Line
	5400 5350 5250 5350
Wire Wire Line
	5250 5350 5250 5000
Wire Wire Line
	5250 5000 5150 5000
Wire Wire Line
	5600 4750 5800 4750
Wire Wire Line
	5600 5050 5800 5050
Wire Wire Line
	5600 5350 5800 5350
Wire Wire Line
	6550 4350 6550 4500
Connection ~ 6750 4350
Connection ~ 6550 4350
Wire Wire Line
	6750 4350 6750 5350
Wire Wire Line
	6750 5050 6000 5050
Wire Wire Line
	6000 4750 6200 4750
Wire Wire Line
	6750 5350 6000 5350
Connection ~ 6750 5050
Wire Wire Line
	6200 4750 6200 4950
Wire Wire Line
	6200 4950 6750 4950
Connection ~ 6750 4950
Wire Wire Line
	2400 1300 2400 1350
Wire Wire Line
	3850 6500 3850 6550
Wire Wire Line
	3850 6550 4050 6550
Wire Wire Line
	4050 6500 4050 6600
Connection ~ 4050 6550
Wire Wire Line
	5300 2150 5300 2200
Wire Wire Line
	5600 2200 5600 2250
Wire Wire Line
	6000 2200 6000 2250
Connection ~ 2550 3300
Wire Wire Line
	2100 3700 2100 3650
Wire Wire Line
	5200 3350 5200 3400
Wire Wire Line
	2300 4900 2300 4950
NoConn ~ 2800 4700
Wire Wire Line
	2650 1600 2650 1650
$Comp
L LED_Small D3
U 1 1 59FC0614
P 5900 5650
F 0 "D3" H 5850 5775 50  0000 L CNN
F 1 "LED_Small" H 5725 5550 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5900 5650 50  0001 C CNN
F 3 "" V 5900 5650 50  0001 C CNN
	1    5900 5650
	-1   0    0    1   
$EndComp
$Comp
L LED_Small D2
U 1 1 59FC02BF
P 5500 5850
F 0 "D2" H 5450 5975 50  0000 L CNN
F 1 "LED_Small" H 5325 5750 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5500 5850 50  0001 C CNN
F 3 "" V 5500 5850 50  0001 C CNN
	1    5500 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 6050 5250 6050
$Comp
L LED_Small D1
U 1 1 59FBFF53
P 5500 6250
F 0 "D1" H 5450 6375 50  0000 L CNN
F 1 "LED_Small" H 5325 6150 50  0000 L CNN
F 2 "LEDs:LED_1206" V 5500 6250 50  0001 C CNN
F 3 "" V 5500 6250 50  0001 C CNN
	1    5500 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 6050 5250 6250
Wire Wire Line
	5250 6250 5400 6250
Wire Wire Line
	5600 6250 5800 6250
Wire Wire Line
	5150 5850 5400 5850
Wire Wire Line
	5600 5850 5800 5850
Wire Wire Line
	5150 5650 5800 5650
$Comp
L GND #PWR022
U 1 1 5A0421EF
P 9350 3600
F 0 "#PWR022" H 9350 3350 50  0001 C CNN
F 1 "GND" H 9350 3450 50  0000 C CNN
F 2 "" H 9350 3600 50  0001 C CNN
F 3 "" H 9350 3600 50  0001 C CNN
	1    9350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2350 9150 2400
Wire Wire Line
	9150 2400 9300 2400
Wire Wire Line
	9000 2500 9300 2500
Text GLabel 6600 1600 2    60   Output ~ 0
VOUT_1
Text GLabel 9000 2450 1    60   Input ~ 0
VOUT_1
Text GLabel 6000 5650 2    60   Output ~ 0
PGOOD
Text GLabel 7650 2200 2    60   Output ~ 0
VOUT_2
Text GLabel 8850 2550 1    60   Input ~ 0
VOUT_2
Wire Wire Line
	8850 2550 8850 2600
Wire Wire Line
	8850 2600 9300 2600
Wire Wire Line
	9000 2450 9000 2500
Connection ~ 5800 3050
Text GLabel 5900 3050 2    60   Output ~ 0
VOUT_3
Wire Wire Line
	9300 2700 8700 2700
Wire Wire Line
	8700 2700 8700 2650
Text GLabel 8700 2650 1    60   Input ~ 0
VOUT_3
Text GLabel 8550 2750 1    60   Input ~ 0
VOUT_4
Wire Wire Line
	8550 2750 8550 2800
Wire Wire Line
	8550 2800 9300 2800
Text GLabel 6900 4350 2    60   Output ~ 0
VOUT_4
Text GLabel 5800 5850 2    60   Output ~ 0
BAT_OK
Text GLabel 5800 6250 2    60   Output ~ 0
nINT
Text GLabel 2800 5550 0    60   Output ~ 0
SCL
Text GLabel 2800 5800 0    60   BiDi ~ 0
SDA
Text GLabel 8550 2950 3    60   BiDi ~ 0
SDA
Wire Wire Line
	8550 2950 8550 2900
Wire Wire Line
	8550 2900 9300 2900
Text GLabel 8700 3050 3    60   Input ~ 0
SCL
Wire Wire Line
	8700 3050 8700 3000
Wire Wire Line
	8700 3000 9300 3000
$Comp
L Conn_01x11 J2
U 1 1 5A04704D
P 9500 2900
F 0 "J2" H 9500 3500 50  0000 C CNN
F 1 "Conn_01x11" H 9500 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11_Pitch2.54mm" H 9500 2900 50  0001 C CNN
F 3 "" H 9500 2900 50  0001 C CNN
	1    9500 2900
	1    0    0    -1  
$EndComp
Text GLabel 8850 3150 3    60   Input ~ 0
PGOOD
Wire Wire Line
	8850 3150 8850 3100
Wire Wire Line
	8850 3100 9300 3100
Text GLabel 9000 3250 3    60   Input ~ 0
BAT_OK
Wire Wire Line
	9000 3250 9000 3200
Wire Wire Line
	9000 3200 9300 3200
Text GLabel 9150 3350 3    60   Input ~ 0
nINT
Wire Wire Line
	9150 3350 9150 3300
Wire Wire Line
	9150 3300 9300 3300
Wire Wire Line
	9300 3400 9250 3400
Wire Wire Line
	9250 3400 9250 3600
Wire Wire Line
	9250 3600 9350 3600
$Comp
L +5V #PWR023
U 1 1 5A0485BA
P 9150 2350
F 0 "#PWR023" H 9150 2200 50  0001 C CNN
F 1 "+5V" H 9150 2490 50  0000 C CNN
F 2 "" H 9150 2350 50  0001 C CNN
F 3 "" H 9150 2350 50  0001 C CNN
	1    9150 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5A048B1C
P 7300 3500
F 0 "#PWR024" H 7300 3350 50  0001 C CNN
F 1 "+5V" H 7300 3640 50  0000 C CNN
F 2 "" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0001 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
Connection ~ 7300 3500
Connection ~ 2400 1300
Connection ~ 9150 2350
$Comp
L TEST TP1
U 1 1 5A049B68
P 5400 3400
F 0 "TP1" H 5400 3700 50  0000 C BNN
F 1 "TEST" H 5400 3650 50  0000 C CNN
F 2 "Connect:1pin" H 5400 3400 50  0001 C CNN
F 3 "" H 5400 3400 50  0001 C CNN
	1    5400 3400
	0    1    1    0   
$EndComp
$Comp
L TEST TP3
U 1 1 5A049D41
P 5800 3400
F 0 "TP3" H 5800 3700 50  0000 C BNN
F 1 "TEST" H 5800 3650 50  0000 C CNN
F 2 "Connect:1pin" H 5800 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0001 C CNN
	1    5800 3400
	0    1    1    0   
$EndComp
$Comp
L TEST TP2
U 1 1 5A049E0C
P 5600 1900
F 0 "TP2" H 5600 2200 50  0000 C BNN
F 1 "TEST" H 5600 2150 50  0000 C CNN
F 2 "Connect:1pin" H 5600 1900 50  0001 C CNN
F 3 "" H 5600 1900 50  0001 C CNN
	1    5600 1900
	0    1    1    0   
$EndComp
$Comp
L TEST TP4
U 1 1 5A049EE0
P 6000 1900
F 0 "TP4" H 6000 2200 50  0000 C BNN
F 1 "TEST" H 6000 2150 50  0000 C CNN
F 2 "Connect:1pin" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
	1    6000 1900
	0    1    1    0   
$EndComp
Connection ~ 5600 1900
Connection ~ 6000 1900
Connection ~ 5400 3400
Wire Wire Line
	5800 3300 5800 3450
Connection ~ 5800 3400
$Comp
L TEST TP5
U 1 1 5A04A81F
P 6650 2500
F 0 "TP5" H 6650 2800 50  0000 C BNN
F 1 "TEST" H 6650 2750 50  0000 C CNN
F 2 "Connect:1pin" H 6650 2500 50  0001 C CNN
F 3 "" H 6650 2500 50  0001 C CNN
	1    6650 2500
	0    1    1    0   
$EndComp
$Comp
L TEST TP6
U 1 1 5A04A8F4
P 7050 2500
F 0 "TP6" H 7050 2800 50  0000 C BNN
F 1 "TEST" H 7050 2750 50  0000 C CNN
F 2 "Connect:1pin" H 7050 2500 50  0001 C CNN
F 3 "" H 7050 2500 50  0001 C CNN
	1    7050 2500
	0    1    1    0   
$EndComp
Connection ~ 6650 2500
Connection ~ 7050 2500
$Comp
L Conn_01x03 J1
U 1 1 5A04CC65
P 1700 4100
F 0 "J1" H 1700 4300 50  0000 C CNN
F 1 "Conn_01x03" H 1700 3900 50  0000 C CNN
F 2 "" H 1700 4100 50  0001 C CNN
F 3 "" H 1700 4100 50  0001 C CNN
	1    1700 4100
	-1   0    0    1   
$EndComp
Connection ~ 2100 4000
Wire Wire Line
	2100 3900 2100 4000
Wire Wire Line
	2100 4150 2800 4150
Connection ~ 2350 4150
Wire Wire Line
	2350 4000 2350 4150
Wire Wire Line
	1900 4000 2800 4000
Wire Wire Line
	1900 4100 2100 4100
Wire Wire Line
	2100 4100 2100 4150
Wire Wire Line
	1900 4200 1950 4200
Wire Wire Line
	1950 4200 1950 4250
$Comp
L GND #PWR025
U 1 1 5A04DD19
P 1950 4250
F 0 "#PWR025" H 1950 4000 50  0001 C CNN
F 1 "GND" H 1950 4100 50  0000 C CNN
F 2 "" H 1950 4250 50  0001 C CNN
F 3 "" H 1950 4250 50  0001 C CNN
	1    1950 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
