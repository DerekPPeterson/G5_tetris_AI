
F
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349
e
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22
I

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
L
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
�

%s
*constraints2t
`Time (s): cpu = 00:00:00.19 ; elapsed = 00:00:00.20 . Memory (MB): peak = 982.043 ; gain = 8.0042default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
<
%Done setting XDC timing constraints.
35*timingZ38-35
`

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
B
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49
2
&Phase 1 Retarget | Checksum: 8ddae6a4
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1337.473 ; gain = 355.4302default:default
l

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
@
Eliminated %s cells.
10*opt2
02default:defaultZ31-10
>
2Phase 2 Constant Propagation | Checksum: 8ddae6a4
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1337.473 ; gain = 355.4302default:default
]

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101
L
 Eliminated %s unconnected nets.
12*opt2
392default:defaultZ31-12
L
!Eliminated %s unconnected cells.
11*opt2
02default:defaultZ31-11
0
$Phase 3 Sweep | Checksum: 1c0e6c6d1
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1337.473 ; gain = 355.4302default:default
A
5Ending Logic Optimization Task | Checksum: 1c0e6c6d1
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1337.473 ; gain = 355.4302default:default
7
+Implement Debug Cores | Checksum: 8ddae6a4
*common
4
(Logic Optimization | Checksum: 8ddae6a4
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
A
5Ending Power Optimization Task | Checksum: 1c0e6c6d1
*common
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 1337.473 ; gain = 0.0002default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
192default:default2
02default:default2
02default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:152default:default2
00:00:162default:default2
1337.4732default:default2
364.4342default:defaultZ17-268


End Record