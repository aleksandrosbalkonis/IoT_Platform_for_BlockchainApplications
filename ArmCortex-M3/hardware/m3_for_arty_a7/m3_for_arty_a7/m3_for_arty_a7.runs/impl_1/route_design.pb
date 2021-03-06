
d
Command: %s
53*	vivadotcl23
route_design -directive Explore2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s502default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s502default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2d
 "N
DAPLink_tri_o_IBUF[15]_inst	DAPLink_tri_o_IBUF[15]_inst2default:default2default:default2@
 "*
	IOB_X0Y14
	IOB_X0Y142default:default2default:default2n
 "X
 DAPLink_tri_o_IBUF_BUFG[15]_inst	 DAPLink_tri_o_IBUF_BUFG[15]_inst2default:default2default:default2H
 "2
BUFGCTRL_X0Y2
BUFGCTRL_X0Y22default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
^
Using Router directive '%s'.
20*	routeflow2
Explore2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 15bef3cc6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:44 ; elapsed = 00:00:22 . Memory (MB): peak = 1995.930 ; gain = 52.8162default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 15bef3cc6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:44 ; elapsed = 00:00:23 . Memory (MB): peak = 1995.930 ; gain = 52.8162default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 15bef3cc6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:44 ; elapsed = 00:00:23 . Memory (MB): peak = 1999.023 ; gain = 55.9102default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 15bef3cc6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:44 ; elapsed = 00:00:23 . Memory (MB): peak = 1999.023 ; gain = 55.9102default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 19728cc4a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:30 . Memory (MB): peak = 2040.348 ; gain = 97.2342default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.024  | TNS=0.000  | WHS=-4.381 | THS=-520.910|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 16dd3f9c4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:36 . Memory (MB): peak = 2083.512 ; gain = 140.3982default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.024  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 20bf3d9aa
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:36 . Memory (MB): peak = 2088.918 ; gain = 145.8052default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1dcc8104a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:05 ; elapsed = 00:00:36 . Memory (MB): peak = 2088.918 ; gain = 145.8052default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 164fd5237
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:00:48 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
652default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                    SWCLK |                    SWCLK |m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uDAPSWJDP/uDAPSwjWatcher/FSM_onehot_State_cdc_check_reg[27]/D|
|                    SWCLK |                    SWCLK |m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uDAPSWJDP/uDAPSwjWatcher/FSM_onehot_State_cdc_check_reg[26]/D|
|                    SWCLK |                    SWCLK |m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uDAPSWJDP/uDAPJtagDpProtocol/FSM_onehot_JTAGcurr_reg[4]/D|
|                    SWCLK |                    SWCLK |m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uDAPSWJDP/uDAPSwjWatcher/FSM_onehot_State_cdc_check_reg[3]/D|
|                    SWCLK |                    SWCLK |m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uDAPSWJDP/uDAPSwjWatcher/FSM_onehot_State_cdc_check_reg[10]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.224 | TNS=-45.103| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1b3379f51
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:02 ; elapsed = 00:01:47 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.024  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1fe007b11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:30 ; elapsed = 00:02:07 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1fe007b11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:30 ; elapsed = 00:02:07 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1fe007b11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:30 ; elapsed = 00:02:07 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1fe007b11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:30 ; elapsed = 00:02:07 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1fe007b11
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:30 ; elapsed = 00:02:07 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1af5fc4e4
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:33 ; elapsed = 00:02:09 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.024  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 15b52f8ad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:33 ; elapsed = 00:02:09 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 15b52f8ad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:33 ; elapsed = 00:02:10 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 14b5b4876
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:33 ; elapsed = 00:02:10 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 14b5b4876
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:34 ; elapsed = 00:02:10 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1d8d5372b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:36 ; elapsed = 00:02:13 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=0.024  | TNS=0.000  | WHS=0.031  | THS=0.000  |
2default:defaultZ35-20h px? 
F
'The design met the timing requirement.
61*routeZ35-61h px? 
G
2Phase 10 Post Router Timing | Checksum: 28a92f69c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:48 ; elapsed = 00:02:20 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:49 ; elapsed = 00:02:20 . Memory (MB): peak = 2124.062 ; gain = 180.9492default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1602default:default2
312default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:03:532default:default2
00:02:222default:default2
2124.0622default:default2
180.9492default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:072default:default2
00:00:032default:default2
2124.0622default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:062default:default2
2124.0622default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file m3_for_arty_a7_wrapper_drc_routed.rpt -pb m3_for_arty_a7_wrapper_drc_routed.pb -rpx m3_for_arty_a7_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file m3_for_arty_a7_wrapper_drc_routed.rpt -pb m3_for_arty_a7_wrapper_drc_routed.pb -rpx m3_for_arty_a7_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
jV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_drc_routed.rptjV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file m3_for_arty_a7_wrapper_methodology_drc_routed.rpt -pb m3_for_arty_a7_wrapper_methodology_drc_routed.pb -rpx m3_for_arty_a7_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file m3_for_arty_a7_wrapper_methodology_drc_routed.rpt -pb m3_for_arty_a7_wrapper_methodology_drc_routed.pb -rpx m3_for_arty_a7_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2 
slow_out_clk2default:default2O
9V:/hardware/m3_for_arty_a7/constraints/m3_for_arty_a7.xdc2default:default2
1322default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
vV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_methodology_drc_routed.rptvV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:192default:default2
00:00:102default:default2
2124.0622default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file m3_for_arty_a7_wrapper_power_routed.rpt -pb m3_for_arty_a7_wrapper_power_summary_routed.pb -rpx m3_for_arty_a7_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file m3_for_arty_a7_wrapper_power_routed.rpt -pb m3_for_arty_a7_wrapper_power_summary_routed.pb -rpx m3_for_arty_a7_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
?
$Power model is not available for %s
23*power2?
)STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst	?m3_for_arty_a7_i/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I/STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst2default:default8Z33-23h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2 
slow_out_clk2default:default2O
9V:/hardware/m3_for_arty_a7/constraints/m3_for_arty_a7.xdc2default:default2
1322default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1752default:default2
322default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:192default:default2
00:00:122default:default2
2124.0622default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
yExecuting : report_route_status -file m3_for_arty_a7_wrapper_route_status.rpt -pb m3_for_arty_a7_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file m3_for_arty_a7_wrapper_timing_summary_routed.rpt -pb m3_for_arty_a7_wrapper_timing_summary_routed.pb -rpx m3_for_arty_a7_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2s
_Executing : report_incremental_reuse -file m3_for_arty_a7_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2s
_Executing : report_clock_utilization -file m3_for_arty_a7_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file m3_for_arty_a7_wrapper_bus_skew_routed.rpt -pb m3_for_arty_a7_wrapper_bus_skew_routed.pb -rpx m3_for_arty_a7_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record