
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
›
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347
‹
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
42default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
:
.Phase 1 Build RT Design | Checksum: 1032db1c4
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:36 ; elapsed = 00:00:28 . Memory (MB): peak = 1566.246 ; gain = 132.5622default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
r
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64
@
4Phase 2 Router Initialization | Checksum: 109e768e4
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:37 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 1aea0870b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:37 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
>
2Phase 4.1 Global Iteration 0 | Checksum: be489987
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
<
0Phase 4 Rip-up And Reroute | Checksum: be489987
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Post Hold Fix2default:defaultZ18-101
7
+Phase 5 Post Hold Fix | Checksum: be489987
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
f

Phase %s%s
101*constraints2
6 2default:default2"
Route finalize2default:defaultZ18-101
8
,Phase 6 Route finalize | Checksum: be489987
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: be489987
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 6fcab2e1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 6fcab2e1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:29 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:38 ; elapsed = 00:00:30 . Memory (MB): peak = 1591.512 ; gain = 157.8282default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
½
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
372default:default2
02default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:392default:default2
00:00:312default:default2
1591.5122default:default2
173.8242default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
ˆ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.242default:default2
00:00:00.252default:default2
1591.5162default:default2
0.0002default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
å
#The results of DRC are in file %s.
168*coretcl2¤
…/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hasher_v1_0_project/hasher_v1_0_project.runs/impl_1/hasher_v1_0_drc_routed.rpt…/home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hasher_v1_0_project/hasher_v1_0_project.runs/impl_1/hasher_v1_0_drc_routed.rpt2default:default8Z2-168
€
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
G
/No user defined clocks was found in the design!216*powerZ33-232
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1


End Record