* SPICE netlist written by S-Edit Win32 6.00
* Written on Jan 13, 2023 at 19:32:07

* Waveform probing commands
.probe
.options probefilename="C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\Question2\ShiftRegister4bit.dat"
+ probesdbfile="C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b.sdb"
+ probetopmodule="ShiftRegister4bit"

* No Ports in cell: PageID_Tanner
* End of module with no ports: PageID_Tanner

.SUBCKT Inv A Out Gnd Vdd
M2 Out A Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
* Page Size:  5x7
* S-Edit  Inverter (TIB)
* Designed by: J. Luo  Jan 13, 2023  14:07:01
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module Inv / page Page0 
M1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
.ENDS

.SUBCKT NAND2 A B Out Gnd Vdd
M3 Out B 1 Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M4 1 A Gnd Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
* Page Size:  5x7
* S-Edit  2-Input NAND Gate (TIB)
* Designed by: J. Luo  Jan 13, 2023  14:07:01
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module NAND2 / page Page0 
M2 Out B Vdd Vdd PMOS W='28*l' L='2*l' AS='144*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
.ENDS

.SUBCKT MasterSlaveDFlipFlop1bit CLK D Q Qbar Gnd Vdd
XInv_1 D N20 Gnd Vdd Inv
XInv_2 CLK N11 Gnd Vdd Inv
XNAND2_1 D CLK N18 Gnd Vdd NAND2
XNAND2_2 CLK N20 N14 Gnd Vdd NAND2
XNAND2_3 N18 N8 N12 Gnd Vdd NAND2
XNAND2_4 N12 N14 N8 Gnd Vdd NAND2
XNAND2_5 N12 N11 N6 Gnd Vdd NAND2
XNAND2_6 N11 N8 N2 Gnd Vdd NAND2
XNAND2_7 N6 Qbar Q Gnd Vdd NAND2
XNAND2_8 Q N2 Qbar Gnd Vdd NAND2
.ENDS

.SUBCKT Pad_Bond SIGNAL Subs
C1 SIGNAL Subs 0.25pF
* Page Size:  5x7
* S-Edit  Output Pad
* Designed by: D.Gunawan, J.Luo, K.Schaefer  Jan 13, 2023  14:14:59
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module Pad_Bond / page Page0 
.ENDS

.SUBCKT PadBidirHE_2.0u DataIn DataInB DataInUnBuf DataOut OE Pad Gnd Subs Vdd
MN_4_1 OEB OE Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MN_4_2 N29 DataOut Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MN_4_3 N20 OE N29 Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MN_4_4 N29 OEB Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MN_4_5 Pad N29 Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=10
MN_4_6 DataInB DataInUnBuf Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=2
MN_4_7 DataIn DataInB Gnd Gnd NMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=4
XPad_Bond_1 Pad Subs Pad_Bond
* Page Size:  5x7
* S-Edit  Bidirectional Pad
* Designed by: D.Gunawan, J.Luo  Jan 13, 2023  14:14:59
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module PadBidirHE_2.0u / page Page0 
MP_4_1 OEB OE Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MP_4_2 N20 DataOut Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=2
MP_4_3 N29 OEB N20 Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=2
MP_4_4 N20 OE Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=1
MP_4_5 Pad N20 Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=10
MP_4_6 DataInB DataInUnBuf Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=2
MP_4_7 DataIn DataInB Vdd Vdd PMOS W=22u L=2u AS=66p AD=66p PS=24u PD=24u M=4
R1 Pad DataInUnBuf 100 TC1=0.0 TC2=0.0
.ENDS

.SUBCKT PadBidirHE DataIn DataInB DataInUnBuf DataOut OE Pad Gnd Subs Vdd
XPadBidirHE_2.0u_1 DataIn DataInB DataInUnBuf DataOut OE Pad Gnd Subs Vdd
+ PadBidirHE_2.0u
* Page Size:  5x7
* S-Edit  Bidirectional Pad
* Designed by: D.Gunawan, J.Luo  Jan 13, 2023  14:14:59
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module PadBidirHE / page Page0 
.ENDS

.SUBCKT PadInC DataIn DataInB DataInUnBuf Pad Gnd Subs Vdd
XPadBidirHE_1 DataIn DataInB DataInUnBuf Gnd Gnd Pad Gnd Subs Vdd PadBidirHE
* Page Size:  5x7
* S-Edit  Input Pad
* Designed by: D.Gunawan, J.Luo  Jan 13, 2023  14:11:26
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module PadInC / page Page0 
.ENDS

.SUBCKT PadOut DataOut Pad Gnd Subs Vdd
XPadBidirHE_1 N6 N5 N4 DataOut Vdd Pad Gnd Subs Vdd PadBidirHE
* Page Size:  5x7
* S-Edit  Output Pad
* Designed by: D.Gunawan, J.Luo  Jan 13, 2023  14:14:59
* Schematic generated by S-Edit
* from file C:\Users\iman\Desktop\CA4_Imangholi_810197692\Part2-SEDIT\ShiftReg4b / module PadOut / page Page0 
.ENDS

* Main circuit: ShiftRegister4bit
XMasterSlaveDFlipFlop1bit_1 N2 N1 N5 N4 Gnd Vdd MasterSlaveDFlipFlop1bit
XMasterSlaveDFlipFlop1bit_2 N9 N10 N13 N12 Gnd Vdd MasterSlaveDFlipFlop1bit
XMasterSlaveDFlipFlop1bit_3 N14 N13 N1 N16 Gnd Vdd MasterSlaveDFlipFlop1bit
XMasterSlaveDFlipFlop1bit_4 N6 N5 N7 N8 Gnd Vdd MasterSlaveDFlipFlop1bit
XPadInC_1 N9 N20 N19 CLK1 Gnd Subs Vdd PadInC
XPadInC_2 N14 N23 N22 CLK2 Gnd Subs Vdd PadInC
XPadInC_3 N10 N29 N28 Serial_Input Gnd Subs Vdd PadInC
XPadInC_4 N2 N30 N25 CLK3 Gnd Subs Vdd PadInC
XPadInC_5 N6 N33 N32 CLK4 Gnd Subs Vdd PadInC
XPadOut_1 N7 SerialOutput Gnd Subs Vdd PadOut
* End of main circuit: ShiftRegister4bit
