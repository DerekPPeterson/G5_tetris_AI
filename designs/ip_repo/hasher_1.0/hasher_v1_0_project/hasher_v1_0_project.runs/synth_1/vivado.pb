
p
Command: %s
53*	vivadotcl2H
4synth_design -top hasher_v1_0 -part xc7a100tcsg324-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
–
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347
†
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349
Ú
,redeclaration of ansi port %s is not allowed2611*oasys2
done2default:default2[
E/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/mix_hash.v2default:default2
332default:default8@Z8-2611
—
%s*synth2‡
sStarting Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 797.695 ; gain = 160.770
2default:default
Í
synthesizing module '%s'638*oasys2
hasher_v1_02default:default2^
H/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hdl/hasher_v1_0.v2default:default2
42default:default8@Z8-638
a
%s*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:default
Ý
synthesizing module '%s'638*oasys2'
hasher_v1_0_S00_AXI2default:default2f
P/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hdl/hasher_v1_0_S00_AXI.v2default:default2
42default:default8@Z8-638
_
%s*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:default
T
%s*synth2E
1	Parameter ADDR_LSB bound to: 2 - type: integer 
2default:default
]
%s*synth2N
:	Parameter OPT_MEM_ADDR_BITS bound to: 3 - type: integer 
2default:default
È
synthesizing module '%s'638*oasys2
mix_hash2default:default2[
E/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/mix_hash.v2default:default2
232default:default8@Z8-638
ƒ
%done synthesizing module '%s' (%s#%s)256*oasys2
mix_hash2default:default2
12default:default2
12default:default2[
E/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/mix_hash.v2default:default2
232default:default8@Z8-256
Ò
synthesizing module '%s'638*oasys2!
seven_segment2default:default2`
J/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/seven_segment.v2default:default2
232default:default8@Z8-638
Y
%s*synth2J
6	Parameter n_cycles bound to: 200000 - type: integer 
2default:default
Ó
synthesizing module '%s'638*oasys2"
gen_digit_code2default:default2`
J/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/seven_segment.v2default:default2
982default:default8@Z8-638
³
default block is never used226*oasys2`
J/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/seven_segment.v2default:default2
1072default:default8@Z8-226
Ž
%done synthesizing module '%s' (%s#%s)256*oasys2"
gen_digit_code2default:default2
22default:default2
12default:default2`
J/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/seven_segment.v2default:default2
982default:default8@Z8-256

%done synthesizing module '%s' (%s#%s)256*oasys2!
seven_segment2default:default2
32default:default2
12default:default2`
J/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/seven_segment.v2default:default2
232default:default8@Z8-256
˜
%done synthesizing module '%s' (%s#%s)256*oasys2'
hasher_v1_0_S00_AXI2default:default2
42default:default2
12default:default2f
P/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hdl/hasher_v1_0_S00_AXI.v2default:default2
42default:default8@Z8-256
ˆ
%done synthesizing module '%s' (%s#%s)256*oasys2
hasher_v1_02default:default2
52default:default2
12default:default2^
H/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hdl/hasher_v1_0.v2default:default2
42default:default8@Z8-256
—
%s*synth2‡
sFinished Synthesize : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 821.703 ; gain = 184.777
2default:default
±
%s*synth2¡
ŒFinished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 829.703 ; gain = 192.777
2default:default

%s*synth2
yFinished RTL Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 829.703 ; gain = 192.777
2default:default
¬
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2[
E/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/src/mix_hash.v2default:default2
612default:default8@Z8-3537
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
.	   3 Input     32 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input     21 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
/
%s*synth2 
+---XORs : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit         XORs := 3     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 13    
2default:default
Q
%s*synth2B
.	               21 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                6 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 7     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	  11 Input     32 Bit        Muxes := 10    
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 11    
2default:default
Q
%s*synth2B
.	   8 Input     32 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     21 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 10    
2default:default
Q
%s*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 13    
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
7
%s*synth2(
Module hasher_v1_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
Module mix_hash 
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
.	   3 Input     32 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:default
/
%s*synth2 
+---XORs : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit         XORs := 3     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               32 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   8 Input     32 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
:
%s*synth2+
Module gen_digit_code 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
9
%s*synth2*
Module seven_segment 
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
.	   2 Input     21 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               21 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                4 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     21 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 9     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:default
?
%s*synth20
Module hasher_v1_0_S00_AXI 
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
.	               32 Bit    Registers := 12    
2default:default
Q
%s*synth2B
.	                6 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 6     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 10    
2default:default
Q
%s*synth2B
.	  11 Input     32 Bit        Muxes := 10    
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:default
¤
Loading clock regions from %s
13*device2m
Y/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13
¥
Loading clock buffers from %s
11*device2n
Z/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11
¢
&Loading clock placement rules from %s
318*place2b
N/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
 
)Loading package pin functions from %s...
17*device2^
J/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
¡
Loading package from %s
16*device2p
\/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16
•
Loading io standards from %s
15*device2_
K/home/derek/Xilinx/Vivado/2014.1/data/./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
¡
+Loading device configuration modes from %s
14*device2]
I/home/derek/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
z
%s*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:default
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_awaddr_reg[1] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_awaddr_reg[0] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_araddr_reg[1] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_araddr_reg[0] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_awaddr_reg[1] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_awaddr_reg[0] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_araddr_reg[1] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
°
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\axi_araddr_reg[0] 2default:default2'
hasher_v1_0_S00_AXI2default:defaultZ8-3332
ª
%s*synth2š
…Finished Cross Boundary Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1084.043 ; gain = 447.117
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\hasher_v1_0_S00_AXI_inst/axi_rresp_reg[1] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\hasher_v1_0_S00_AXI_inst/axi_bresp_reg[1] 2default:defaultZ8-3333
À
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
+\hasher_v1_0_S00_AXI_inst/axi_bresp_reg[1] 2default:default2
hasher_v1_02default:defaultZ8-3332
À
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
+\hasher_v1_0_S00_AXI_inst/axi_bresp_reg[0] 2default:default2
hasher_v1_02default:defaultZ8-3332
À
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
+\hasher_v1_0_S00_AXI_inst/axi_rresp_reg[1] 2default:default2
hasher_v1_02default:defaultZ8-3332
À
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
+\hasher_v1_0_S00_AXI_inst/axi_rresp_reg[0] 2default:default2
hasher_v1_02default:defaultZ8-3332
¾
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\hasher_v1_0_S00_AXI_inst/mh/step_reg[3] 2default:default2
hasher_v1_02default:defaultZ8-3332
Ÿ
%s*synth2
{Finished Area Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:41 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
¡
%s*synth2‘
}Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:41 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
 
%s*synth2
|Finished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:00:41 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
š
%s*synth2Š
vFinished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1121.098 ; gain = 484.172
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
«
%s*synth2›
†Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
¨
%s*synth2˜
ƒFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
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
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |BUFG   |     1|
2default:default
;
%s*synth2,
|2     |CARRY4 |    13|
2default:default
;
%s*synth2,
|3     |LUT1   |    24|
2default:default
;
%s*synth2,
|4     |LUT2   |    12|
2default:default
;
%s*synth2,
|5     |LUT3   |    41|
2default:default
;
%s*synth2,
|6     |LUT4   |    34|
2default:default
;
%s*synth2,
|7     |LUT5   |   105|
2default:default
;
%s*synth2,
|8     |LUT6   |   203|
2default:default
;
%s*synth2,
|9     |FDRE   |   454|
2default:default
;
%s*synth2,
|10    |FDSE   |    13|
2default:default
;
%s*synth2,
|11    |IBUF   |    51|
2default:default
;
%s*synth2,
|12    |OBUF   |    57|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
d
%s*synth2U
A+------+---------------------------+--------------------+------+
2default:default
d
%s*synth2U
A|      |Instance                   |Module              |Cells |
2default:default
d
%s*synth2U
A+------+---------------------------+--------------------+------+
2default:default
d
%s*synth2U
A|1     |top                        |                    |  1008|
2default:default
d
%s*synth2U
A|2     |  hasher_v1_0_S00_AXI_inst |hasher_v1_0_S00_AXI |   899|
2default:default
d
%s*synth2U
A|3     |    mh                     |mix_hash            |   207|
2default:default
d
%s*synth2U
A|4     |    ss                     |seven_segment       |   118|
2default:default
d
%s*synth2U
A|5     |      A                    |gen_digit_code      |     6|
2default:default
d
%s*synth2U
A+------+---------------------------+--------------------+------+
2default:default
§
%s*synth2—
‚Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
j
%s*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 14 warnings.
2default:default
¥
%s*synth2•
€Synthesis Optimization Complete : Time (s): cpu = 00:00:35 ; elapsed = 00:00:42 . Memory (MB): peak = 1121.098 ; gain = 484.172
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
512default:defaultZ29-17
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
¾
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
142default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:352default:default2
00:00:462default:default2
1121.0982default:default2
384.2582default:defaultZ17-268
‚
vreport_utilization: Time (s): cpu = 00:00:00.20 ; elapsed = 00:00:00.35 . Memory (MB): peak = 1121.098 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Feb  3 16:30:13 20152default:defaultZ17-206