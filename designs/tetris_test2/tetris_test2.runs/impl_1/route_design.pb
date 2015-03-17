
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
õ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347
ã
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
.Phase 1 Build RT Design | Checksum: 158136d9e
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:30 ; elapsed = 00:00:18 . Memory (MB): peak = 2248.297 ; gain = 33.2662default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
9
-Phase 2.1 Create Timer | Checksum: 158136d9e
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:31 ; elapsed = 00:00:19 . Memory (MB): peak = 2265.594 ; gain = 50.5622default:default
g

Phase %s%s
101*constraints2
2.2 2default:default2!
Update Timing2default:defaultZ18-101
9
-Phase 2.2 Update Timing | Checksum: 4be36007
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:10 ; elapsed = 00:00:39 . Memory (MB): peak = 2413.805 ; gain = 198.7732default:default
Ç
Estimated Timing Summary %s
57*route2N
:| WNS=-10.3  | TNS=-1.16e+04| WHS=-0.341 | THS=-1.18e+03|
2default:defaultZ35-57
?
3Phase 2 Router Initialization | Checksum: 4be36007
*common
à

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:00:52 . Memory (MB): peak = 2413.805 ; gain = 198.7732default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: ee18ac03
*common
à

%s
*constraints2q
]Time (s): cpu = 00:02:00 ; elapsed = 00:01:02 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
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
ò
˚The following overlapped %s exist in the design and there is low overall congestion. 
Resolution: Check for routing resource conflicts on the identified nets or significant localized congestion using the Route Congestion Metrics in the Device View. %s125*route2
nodes2default:default2Ê
—
1. INT_L_X10Y49/IMUX_L18
Overlapping nets: 2
	design_1_i/aicontroller_0/n_37345_score_reg6__4_i_26
	design_1_i/aicontroller_0/n_37345_score_reg6__4_i_27__0
2. INT_L_X50Y145/IMUX_L46
Overlapping nets: 2
	design_1_i/aicontroller_0/n_37345_score_reg6_i_107__2
	design_1_i/aicontroller_0/n_37345_score_reg6_i_108__2
3. INT_R_X21Y132/IMUX25
Overlapping nets: 2
	design_1_i/aicontroller_0/n_37345_score_reg6_i_22__0
	design_1_i/aicontroller_0/n_37345_score_reg6_i_20__0
2default:defaultZ35-325
i

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.1 Update Timing | Checksum: c963bca8
*common
à

%s
*constraints2q
]Time (s): cpu = 00:03:46 ; elapsed = 00:01:58 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
Ä
Estimated Timing Summary %s
57*route2L
8| WNS=-10.1  | TNS=-3.55e+04| WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
m

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101
>
2Phase 4.1.2.1 Update Timing | Checksum: 1a1c060f0
*common
à

%s
*constraints2q
]Time (s): cpu = 00:03:48 ; elapsed = 00:01:59 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
l

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.1.2.2 Fast Budgeting | Checksum: 1a1c060f0
*common
à

%s
*constraints2q
]Time (s): cpu = 00:03:53 ; elapsed = 00:02:04 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
@
4Phase 4.1.2 GlobIterForTiming | Checksum: 146acd777
*common
à

%s
*constraints2q
]Time (s): cpu = 00:03:54 ; elapsed = 00:02:05 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 146acd777
*common
à

%s
*constraints2q
]Time (s): cpu = 00:03:54 ; elapsed = 00:02:05 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
l

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101
i

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.1 Update Timing | Checksum: 181f60227
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:23 ; elapsed = 00:02:29 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
Ä
Estimated Timing Summary %s
57*route2L
8| WNS=-10    | TNS=-3.55e+04| WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
?
3Phase 4.2 Global Iteration 1 | Checksum: 12a09d6ed
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:24 ; elapsed = 00:02:30 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 12a09d6ed
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:24 ; elapsed = 00:02:30 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101
g

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101
:
.Phase 5.1 Update Timing | Checksum: 12a09d6ed
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:31 ; elapsed = 00:02:33 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
Ä
Estimated Timing Summary %s
57*route2L
8| WNS=-10    | TNS=-3.53e+04| WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
7
+Phase 5 Delay CleanUp | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:32 ; elapsed = 00:02:33 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
o

Phase %s%s
101*constraints2
6 2default:default2+
Clock Skew Optimization2default:defaultZ18-101
A
5Phase 6 Clock Skew Optimization | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:32 ; elapsed = 00:02:34 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
e

Phase %s%s
101*constraints2
7 2default:default2!
Post Hold Fix2default:defaultZ18-101
g

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101
9
-Phase 7.1 Update Timing | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:42 ; elapsed = 00:02:38 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
Ä
Estimated Timing Summary %s
57*route2L
8| WNS=-10    | TNS=-3.53e+04| WHS=0.033  | THS=0      |
2default:defaultZ35-57
7
+Phase 7 Post Hold Fix | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:39 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
f

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101
8
,Phase 8 Route finalize | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:39 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
m

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 9 Verifying routed nets | Checksum: c10c25f6
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:43 ; elapsed = 00:02:39 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
j

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101
=
1Phase 10 Depositing Routes | Checksum: 18f3a5de3
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:49 ; elapsed = 00:02:44 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
k

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101
Ä
Estimated Timing Summary %s
57*route2L
8| WNS=-10    | TNS=-3.53e+04| WHS=0.033  | THS=0      |
2default:defaultZ35-57
9
!Router estimated timing not met.
128*routeZ35-328
>
2Phase 11 Post Router Timing | Checksum: 18f3a5de3
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:57 ; elapsed = 00:02:47 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
4
Router Completed Successfully
16*routeZ35-16
4
(Ending Route Task | Checksum: 18f3a5de3
*common
à

%s
*constraints2q
]Time (s): cpu = 00:04:57 ; elapsed = 00:02:48 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
à

%s
*constraints2q
]Time (s): cpu = 00:04:57 ; elapsed = 00:02:48 . Memory (MB): peak = 2448.805 ; gain = 233.7732default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522default:default2
1552default:default2
782default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:05:082default:default2
00:02:562default:default2
2448.8052default:default2
233.7772default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
Ç
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:092default:default2
00:00:092default:default2
2448.8092default:default2
0.0002default:defaultZ17-268
ˇ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:132default:default2
2448.8092default:default2
0.0042default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
42default:defaultZ23-27
—
#The results of DRC are in file %s.
168*coretcl2ê
|/home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.runs/impl_1/design_1_wrapper_drc_routed.rpt|/home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168
˙
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:202default:default2
00:00:102default:default2
2495.3282default:default2
46.5202default:defaultZ17-268
Ä
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
42default:defaultZ38-191
Ø
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282
Ü
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:542default:default2
00:00:252default:default2
2617.6802default:default2
122.3522default:defaultZ17-268
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
õ
‚MMCM/PLL RST static_probability should be either 0 or 1, power analysis is using 0 by default.
Use 'set_switching_activity -static_probability 1 -signal_rate 0 [get_nets %s]'  to set the static_probabiblity to '1'  if desired.207*power2

reset_IBUF2default:defaultZ33-218
Ì
‚MMCM/PLL RST static_probability should be either 0 or 1, power analysis is using 0 by default.
Use 'set_switching_activity -static_probability 1 -signal_rate 0 [get_nets %s]'  to set the static_probabiblity to '1'  if desired.207*power2p
\design_1_i/mig_7series_0/u_design_1_mig_7series_0_3_mig/u_ddr2_infrastructure/sys_rst_act_hi2default:defaultZ33-218
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:262default:default2
00:00:262default:default2
2754.1722default:default2
136.4922default:defaultZ17-268


End Record