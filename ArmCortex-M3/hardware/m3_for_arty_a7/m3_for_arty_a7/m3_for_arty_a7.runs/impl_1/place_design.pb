
s
Command: %s
53*	vivadotcl2B
.place_design -directive WLDrivenBlockPlacement2default:defaultZ4-113h px? 
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
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[0]DAPLink_tri_o[0]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2P
 ":
DAPLink_tri_o[10]DAPLink_tri_o[10]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2P
 ":
DAPLink_tri_o[11]DAPLink_tri_o[11]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2P
 ":
DAPLink_tri_o[12]DAPLink_tri_o[12]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2P
 ":
DAPLink_tri_o[13]DAPLink_tri_o[13]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2P
 ":
DAPLink_tri_o[15]DAPLink_tri_o[15]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[1]DAPLink_tri_o[1]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[2]DAPLink_tri_o[2]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[3]DAPLink_tri_o[3]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[8]DAPLink_tri_o[8]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
?
yIO port buffering is incomplete: Device port %s expects both input and output buffering but the buffers are incomplete.%s*DRC2N
 "8
DAPLink_tri_o[9]DAPLink_tri_o[9]2default:default2default:default28
  DRC|Netlist|Port|Required Buffer2default:default8ZRPBF-3h px? 
c
DRC finished with %s
79*	vivadotcl2)
0 Errors, 11 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
/The placer was invoked with the '%s' directive.14*	placeflow2*
WLDrivenBlockPlacement2default:defaultZ46-5h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1f5a34b3
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.026 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
9Poor placement for routing between an IO pin and BUFG. %s528*place2?
?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>DAPLink_tri_o_IBUF[15]_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X0Y14
	<MSGMETA::BEGIN::BLOCK>DAPLink_tri_o_IBUF_BUFG[15]_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y2
"?
DAPLink_tri_o_IBUF[15]_inst2?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:" (IBUF.O) is locked to IOB_X0Y14
	"h
 DAPLink_tri_o_IBUF_BUFG[15]_inst:B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y2
2default:default8Z30-574h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: aece7445
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 14b855090
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:06 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 14b855090
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:06 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 14b855090
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 156bc3f35
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:08 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
02default:default2
39622default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
02default:default2
02default:default2
02default:default2
02default:defaultZ32-1044h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
15552default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
15552default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][12]|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][12]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_2__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_2__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][10]|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][10]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_4__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_4__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][8]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][8]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_6__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_6__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][7]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][7]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_7__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_7__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][2]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][2]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_12__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_12__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][11]|m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][11]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_3__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_3__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][9]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][9]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_5__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_5__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][6]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][6]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_8__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_8__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[10]qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[10]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_5	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_52default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][0]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][0]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_14__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_14__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][3]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][3]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_11__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_11__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][5]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][5]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_9__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_9__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][4]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][4]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_10__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_10__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][1]{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/buf_addr_reg[12][1]2default:default2?
?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_13__0	?m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_bus_matrix/u_cm3_mtx_bit_master/genblk3[1].ram_block_reg_0_0_i_13__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[8]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[8]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_7	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_72default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[14]qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[14]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_1	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_12default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[12]qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[12]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_3	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_32default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
Cm3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMBYTEWR[3]Cm3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMBYTEWR[3]2default:default2?
Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_3_0_i_5__0	Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_3_0_i_5__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[13]qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[13]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_2	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_22default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[9]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[9]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_6	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_62default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[0]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[0]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_15	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_152default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[4]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[4]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_11	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_112default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[11]qm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[11]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_4	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_42default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[6]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[6]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_9	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_92default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[5]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[5]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_10	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_102default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
Cm3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMBYTEWR[2]Cm3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMBYTEWR[2]2default:default2?
Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_2_0_i_5__0	Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_2_0_i_5__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[3]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[3]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_12	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_122default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[2]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[2]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_13	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_132default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
<m3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMEN<m3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/ITCMEN2default:default2?
Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_0_0_i_1__0	Ym3_for_arty_a7_i/Cortex_M3_0/inst/u_cmsdk_ahb_to_itcm/genblk3[1].ram_block_reg_0_0_i_1__02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[1]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[1]2default:default2?
{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_14	{m3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_142default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[7]pm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/B[7]2default:default2?
zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_8	zm3_for_arty_a7_i/Cortex_M3_0/inst/u_CORTEXM3INTEGRATION/uCORTEXM3/u_cm3_dpu/u_cm3_dpu_alu/u_cm3_dpu_alu_ctl/mul_res_ex_i_82default:default8Z32-117h px? 
P
.No nets found for critical-cell optimization.
68*physynthZ32-68h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |            0  |           1555  |                  1555  |           0  |           1  |  00:00:03  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Cell                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            0  |           1555  |                  1555  |           0  |           9  |  00:00:03  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
S
>Phase 2.2.1 Physical Synthesis In Placer | Checksum: f8d23531
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:52 ; elapsed = 00:00:30 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 147d33e6c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:31 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 147d33e6c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:31 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 193e0e80e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:56 ; elapsed = 00:00:33 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: ad63b900
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:00 ; elapsed = 00:00:35 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 18a183d8f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:01 ; elapsed = 00:00:36 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 11bfd0828
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:01 ; elapsed = 00:00:36 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 18ed77204
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:39 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 1096257a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:17 ; elapsed = 00:00:50 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 18c763b1a
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:00:52 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1c4f4c151
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:00:52 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 1c9914f60
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:32 ; elapsed = 00:01:02 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1c9914f60
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:32 ; elapsed = 00:01:02 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
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
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 1cad49449
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.0872default:default2
-9.4002default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 1eef73d9f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 2875f72ab
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1cad49449
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:42 ; elapsed = 00:01:09 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.0872default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 21e48c3b0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:27 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 21e48c3b0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:06 ; elapsed = 00:01:27 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
V
APost Placement Optimization Initialization | Checksum: 12ae1a438
*commonh px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-1.0872default:default2
-4.2762default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 1ea34c96e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 1ec2ef6cb
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-1.0872default:defaultZ30-746h px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 15ed55a49
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:32 ; elapsed = 00:01:42 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 15ed55a49
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:32 ; elapsed = 00:01:42 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
L
7Phase 4.4 Final Placement Cleanup | Checksum: f19d4189
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:32 ; elapsed = 00:01:42 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
[
FPhase 4 Post Placement Optimization and Clean-Up | Checksum: f19d4189
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:32 ; elapsed = 00:01:43 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: 98fd2210
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:32 ; elapsed = 00:01:43 . Memory (MB): peak = 1943.113 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1242default:default2
302default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:352default:default2
00:01:442default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
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
00:00:062default:default2
00:00:022default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fV:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.runs/impl_1/m3_for_arty_a7_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:052default:default2
1943.1132default:default2
0.0002default:defaultZ17-268h px? 
q
%s4*runtcl2U
AExecuting : report_io -file m3_for_arty_a7_wrapper_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.046 . Memory (MB): peak = 1943.113 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
?Executing : report_utilization -file m3_for_arty_a7_wrapper_utilization_placed.rpt -pb m3_for_arty_a7_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2r
^Executing : report_control_sets -verbose -file m3_for_arty_a7_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.056 . Memory (MB): peak = 1943.113 ; gain = 0.000
*commonh px? 


End Record