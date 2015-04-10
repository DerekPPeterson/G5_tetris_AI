
p
Command: %s
53*	vivadotcl2H
4synth_design -top bram_tester -part xc7a100tcsg324-12default:defaultZ4-113
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
rStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:01:21 . Memory (MB): peak = 230.266 ; gain = 99.078
2default:default
·
synthesizing module '%s'638*oasys2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
232default:default8@Z8-638
ö
0Net %s in module/entity %s does not have driver.3422*oasys2
	algo_done2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
392default:default8@Z8-3848
ô
0Net %s in module/entity %s does not have driver.3422*oasys2
algo_rot2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
402default:default8@Z8-3848
ú
0Net %s in module/entity %s does not have driver.3422*oasys2
algo_rshift2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
412default:default8@Z8-3848
ú
%done synthesizing module '%s' (%s#%s)256*oasys2
bram_tester2default:default2
12default:default2
12default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
232default:default8@Z8-256
z
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
	algo_done2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
algo_rot[1]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
algo_rot[0]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[3]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[2]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[1]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[0]2default:defaultZ8-3331
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:01:22 . Memory (MB): peak = 263.164 ; gain = 131.977
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:01:22 . Memory (MB): peak = 263.164 ; gain = 131.977
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:03 ; elapsed = 00:01:22 . Memory (MB): peak = 263.164 ; gain = 131.977
2default:default
ö
0Net %s in module/entity %s does not have driver.3422*oasys2
	algo_done2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
392default:default8@Z8-3848
ô
0Net %s in module/entity %s does not have driver.3422*oasys2
algo_rot2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
402default:default8@Z8-3848
ú
0Net %s in module/entity %s does not have driver.3422*oasys2
algo_rshift2default:default2
bram_tester2default:default2q
[D:/Libraries/University/ECE532/IP/bram_tester_ip/bram_tester_ip.srcs/sources_1/new/tester.v2default:default2
412default:default8@Z8-3848
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
.	   2 Input      5 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
7
%s*synth2(
Module bram_tester 
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
.	   2 Input      5 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               16 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:default
õ
Loading clock regions from %s
13*device2d
PC:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13
ú
Loading clock buffers from %s
11*device2e
QC:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11
ô
&Loading clock placement rules from %s
318*place2Y
EC:/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
ó
)Loading package pin functions from %s...
17*device2U
AC:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
ò
Loading package from %s
16*device2g
SC:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16
å
Loading io standards from %s
15*device2V
BC:/Xilinx/Vivado/2014.1/data\./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
ò
+Loading device configuration modes from %s
14*device2T
@C:/Xilinx/Vivado/2014.1/data\parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
z
%s*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:default
x
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
LED[14]2default:defaultZ8-3331
z
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
	algo_done2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
algo_rot[1]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2
algo_rot[0]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[3]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[2]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[1]2default:defaultZ8-3331

!design %s has unconnected port %s3331*oasys2
bram_tester2default:default2"
algo_rshift[0]2default:defaultZ8-3331
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:01:34 . Memory (MB): peak = 545.000 ; gain = 413.813
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
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
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
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
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
|2     |LUT2  |     1|
2default:default
:
%s*synth2+
|3     |LUT3  |     1|
2default:default
:
%s*synth2+
|4     |LUT4  |     4|
2default:default
:
%s*synth2+
|5     |LUT5  |    11|
2default:default
:
%s*synth2+
|6     |LUT6  |    62|
2default:default
:
%s*synth2+
|7     |MUXF7 |    10|
2default:default
:
%s*synth2+
|8     |FDRE  |    15|
2default:default
:
%s*synth2+
|9     |IBUF  |   221|
2default:default
:
%s*synth2+
|10    |OBUF  |    15|
2default:default
:
%s*synth2+
|11    |OBUFT |     8|
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
E
%s*synth26
"+------+---------+-------+------+
2default:default
E
%s*synth26
"|      |Instance |Module |Cells |
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
E
%s*synth26
"|1     |top      |       |   349|
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
j
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 21 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:01:35 . Memory (MB): peak = 576.926 ; gain = 445.738
2default:default
^
-Analyzing %s Unisim elements for replacement
17*netlist2
2212default:defaultZ29-17
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
æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
102default:default2
212default:default2
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
00:00:172default:default2
00:01:462default:default2
576.9262default:default2
400.0162default:defaultZ17-268

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.025 . Memory (MB): peak = 576.926 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Feb 24 23:15:15 20152default:defaultZ17-206