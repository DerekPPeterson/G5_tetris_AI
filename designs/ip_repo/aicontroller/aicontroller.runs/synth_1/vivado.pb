
q
Command: %s
53*	vivadotcl2I
5synth_design -top aicontroller -part xc7a100tcsg324-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ñ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347
Ü
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349
ñ
%s*synth2Ü
rStarting Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:01:09 . Memory (MB): peak = 228.262 ; gain = 97.898
2default:default
È
synthesizing module '%s'638*oasys2 
aicontroller2default:default2x
bD:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/new/aicontroller.v2default:default2
232default:default8@Z8-638
Î
synthesizing module '%s'638*oasys2
	placement2default:default2}
gD:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/imports/new/placement.v2default:default2
232default:default8@Z8-638
¶
%done synthesizing module '%s' (%s#%s)256*oasys2
	placement2default:default2
12default:default2
12default:default2}
gD:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/imports/new/placement.v2default:default2
232default:default8@Z8-256
›
-case statement is not full and has no default155*oasys2x
bD:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/new/aicontroller.v2default:default2
4582default:default8@Z8-155
§
%done synthesizing module '%s' (%s#%s)256*oasys2 
aicontroller2default:default2
22default:default2
12default:default2x
bD:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/new/aicontroller.v2default:default2
232default:default8@Z8-256
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[13]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[12]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[11]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[10]2default:defaultZ8-3331
{
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2
	SWITCH[9]2default:defaultZ8-3331
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:09 ; elapsed = 00:01:11 . Memory (MB): peak = 262.113 ; gain = 131.750
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:01:11 . Memory (MB): peak = 262.113 ; gain = 131.750
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:01:11 . Memory (MB): peak = 262.113 ; gain = 131.750
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit       Adders := 40    
2default:default
Q
%s*synth2B
.	   2 Input      5 Bit       Adders := 50    
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               20 Bit    Registers := 40    
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                5 Bit    Registers := 10    
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 6     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 22    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     20 Bit        Muxes := 60    
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input      4 Bit        Muxes := 8     
2default:default
Q
%s*synth2B
.	   8 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 30    
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
8
%s*synth2)
Module aicontroller 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 6     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input      4 Bit        Muxes := 8     
2default:default
Q
%s*synth2B
.	   8 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:default
5
%s*synth2&
Module placement 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      6 Bit       Adders := 4     
2default:default
Q
%s*synth2B
.	   2 Input      5 Bit       Adders := 5     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               20 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	                5 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     20 Bit        Muxes := 6     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
õ
Loading clock regions from %s
13*device2d
PD:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13
ú
Loading clock buffers from %s
11*device2e
QD:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11
ô
&Loading clock placement rules from %s
318*place2Y
ED:/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
ó
)Loading package pin functions from %s...
17*device2U
AD:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
ò
Loading package from %s
16*device2g
SD:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16
å
Loading io standards from %s
15*device2V
BD:/Xilinx/Vivado/2014.1/data\./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
ò
+Loading device configuration modes from %s
14*device2T
@D:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
z
%s*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:default
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[13]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[12]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[11]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2

SWITCH[10]2default:defaultZ8-3331
{
!design %s has unconnected port %s3331*oasys2 
aicontroller2default:default2
	SWITCH[9]2default:defaultZ8-3331
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:01:37 . Memory (MB): peak = 545.164 ; gain = 414.801
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
ê
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\next_array3_reg[3] 2default:defaultZ8-3333
ê
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\next_array2_reg[3] 2default:defaultZ8-3333
ê
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\next_array1_reg[3] 2default:defaultZ8-3333
ê
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\next_array0_reg[3] 2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
algo_done_reg2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
\LED_reg[11] 2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
\LED_reg[12] 2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
\LED_reg[13] 2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
\LED_reg[14] 2default:defaultZ8-3333
â
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2!
\LED_reg[15] 2default:defaultZ8-3333
õ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
done_reg2default:default2
	placement2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	error_reg2default:default2
	placement2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\LED_reg[15] 2default:default2 
aicontroller2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\LED_reg[14] 2default:default2 
aicontroller2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\LED_reg[13] 2default:default2 
aicontroller2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\LED_reg[12] 2default:default2 
aicontroller2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\LED_reg[11] 2default:default2 
aicontroller2default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
algo_done_reg2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array0_reg[3] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array0_reg[2] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array1_reg[3] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array1_reg[2] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array2_reg[3] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array2_reg[2] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array3_reg[3] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array3_reg[2] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\next_array3_reg[1] 2default:default2 
aicontroller2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\algo_rot_reg[0] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\algo_rshift_reg[0] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\algo_rshift_reg[1] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\algo_rshift_reg[2] 2default:default2 
aicontroller2default:defaultZ8-3332
™
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
\algo_rshift_reg[3] 2default:default2 
aicontroller2default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\algo_rot_reg[1] 2default:default2 
aicontroller2default:defaultZ8-3332
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
placement00/i_0/\down_reg[0] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
placement00/i_0/\down_reg[1] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
placement00/i_0/\down_reg[2] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default21
placement00/i_0/\down_reg[4] 2default:defaultZ8-3333
ô
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
placement00/i_0/\down_reg[3] 2default:defaultZ8-3333
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[16] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[15] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[14] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[13] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[12] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[11] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[10] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[9] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[8] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[7] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[6] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[5] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[4] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[3] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[2] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[1] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out0_reg[0] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[16] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[15] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[14] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[13] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[12] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[11] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out1_reg[10] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[9] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[8] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[7] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[6] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[5] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[4] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[3] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[2] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[1] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out1_reg[0] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[16] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[15] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[14] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[13] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[12] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[11] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out2_reg[10] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[9] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[8] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[7] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[6] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[5] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[4] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[3] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[2] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[1] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out2_reg[0] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[16] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[15] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[14] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[13] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[12] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[11] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out3_reg[10] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[9] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[8] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[7] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[6] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[5] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[4] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[3] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[2] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[1] 2default:default2 
placement__12default:defaultZ8-3332
ß
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\col_out3_reg[0] 2default:default2 
placement__12default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\down_reg[4] 2default:default2 
placement__12default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\down_reg[3] 2default:default2 
placement__12default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\down_reg[2] 2default:default2 
placement__12default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\down_reg[1] 2default:default2 
placement__12default:defaultZ8-3332
£
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
\down_reg[0] 2default:default2 
placement__12default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[19] 2default:default2 
placement__22default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[18] 2default:default2 
placement__22default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[17] 2default:default2 
placement__22default:defaultZ8-3332
®
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
\col_out0_reg[16] 2default:default2 
placement__22default:defaultZ8-3332
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:01:38 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:01:38 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:36 ; elapsed = 00:01:38 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:01:39 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:01:39 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:01:39 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
:
%s*synth2+
+------+------+------+
2default:default
:
%s*synth2+
|      |Cell  |Count |
2default:default
:
%s*synth2+
+------+------+------+
2default:default
:
%s*synth2+
|1     |BUFG  |     1|
2default:default
:
%s*synth2+
|2     |LUT1  |     1|
2default:default
:
%s*synth2+
|3     |LUT2  |     9|
2default:default
:
%s*synth2+
|4     |LUT3  |     1|
2default:default
:
%s*synth2+
|5     |LUT4  |    11|
2default:default
:
%s*synth2+
|6     |LUT5  |     4|
2default:default
:
%s*synth2+
|7     |LUT6  |    37|
2default:default
:
%s*synth2+
|8     |MUXF7 |    12|
2default:default
:
%s*synth2+
|9     |FDRE  |    31|
2default:default
:
%s*synth2+
|10    |IBUF  |   146|
2default:default
:
%s*synth2+
|11    |OBUF  |    23|
2default:default
:
%s*synth2+
+------+------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
M
%s*synth2>
*+------+--------------+----------+------+
2default:default
M
%s*synth2>
*|      |Instance      |Module    |Cells |
2default:default
M
%s*synth2>
*+------+--------------+----------+------+
2default:default
M
%s*synth2>
*|1     |top           |          |   276|
2default:default
M
%s*synth2>
*|2     |  placement00 |placement |    28|
2default:default
M
%s*synth2>
*+------+--------------+----------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:01:39 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
k
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 877 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:01:39 . Memory (MB): peak = 576.652 ; gain = 446.289
2default:default
^
-Analyzing %s Unisim elements for replacement
17*netlist2
1462default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
ø
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
282default:default2
1102default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:362default:default2
00:01:482default:default2
576.6522default:default2
401.1722default:defaultZ17-268

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.040 . Memory (MB): peak = 576.652 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Mar 03 19:31:07 20152default:defaultZ17-206