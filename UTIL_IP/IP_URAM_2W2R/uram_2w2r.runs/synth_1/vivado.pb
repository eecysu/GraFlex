
�
Command: %s
53*	vivadotcl2�
qsynth_design -top uram_2w_2r -part xcu280-fsvh2892-2L-e -directive AlternateRoutability -no_lc -shreg_min_size 102default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcu2802default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcu2802default:defaultZ17-349h px� 
[
Loading part %s157*device2(
xcu280-fsvh2892-2L-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
b
#Helper process launched with PID %s4824*oasys2
21108152default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 3190.805 ; gain = 172.688 ; free physical = 68977 ; free virtual = 107896
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2

uram_2w_2r2default:default2
 2default:default2d
N/Orion/GraphHBM/UTIL_IP/IP_URAM_2W2R/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v2default:default2
42default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_RANGE bound to: 4096 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 12 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2%
xpm_memory_tdpram2default:default2
 2default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
88712default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter MEMORY_SIZE bound to: 262144 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter MEMORY_PRIMITIVE bound to: ultra - type: string 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLOCKING_MODE bound to: common_clock - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_INIT_PARAM bound to: 0 - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter WAKEUP_TIME bound to: disable_sleep - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 12 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_MODE_A bound to: no_change - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 12 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_MODE_B bound to: no_change - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_MEMORY_PRIMITIVE bound to: 3 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter P_CLOCKING_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter P_ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_WRITE_MODE_B bound to: 2 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_MEMORY_OPTIMIZATION bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2#
xpm_memory_base2default:default2
 2default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter MEMORY_TYPE bound to: 2 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_SIZE bound to: 262144 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter CLOCKING_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter ECC_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter MEMORY_INIT_FILE bound to: none - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_INIT_PARAM bound to: 0 - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter USE_MEM_INIT_MMI bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter USE_MEM_INIT bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter MEMORY_OPTIMIZATION bound to: true - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter AUTO_SLEEP_TIME bound to: 0 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter MESSAGE_CONTROL bound to: 0 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter VERSION bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter USE_EMBEDDED_CONSTRAINT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CASCADE_HEIGHT bound to: 0 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SIM_ASSERT_CHK bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter WRITE_PROTECT bound to: 1 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 12 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_A bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter WRITE_MODE_A bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_A bound to: SYNC - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter WRITE_DATA_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 12 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter READ_RESET_VALUE_B bound to: 0 - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter READ_LATENCY_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter WRITE_MODE_B bound to: 2 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter RST_MODE_B bound to: SYNC - type: string 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_MEMORY_PRIMITIVE bound to: ultra - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 64 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 64 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MAX_DEPTH_DATA bound to: 4096 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_ECC_MODE bound to: no_ecc - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_MEMORY_OPT bound to: yes - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_A bound to: 64 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 64 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_COLS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter P_NUM_ROWS_WRITE_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_A bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_NUM_ROWS_READ_B bound to: 1 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_A bound to: 12 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_B bound to: 12 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_A bound to: 12 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_B bound to: 12 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter P_WIDTH_ADDR_LSB_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter P_WIDTH_ADDR_LSB_READ_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_A bound to: 0 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_ENABLE_BYTE_WRITE_B bound to: 0 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_SDP_WRITE_MODE bound to: yes - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter rsta_loop_iter bound to: 64 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 64 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter NUM_CHAR_LOC bound to: 0 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter MAX_NUM_CHAR bound to: 0 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 64 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_MIN_WIDTH_DATA_LDW bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
Synth Info: %s 4384*oasys2�
�[XPM_MEMORY 20-3] XPM_MEMORY behaviorally models the port operation ordering of true dual port UltraRAM configurations by slightly delaying the common clock for port B operations only. Refer to UltraRAM documentation for details. 2default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
4922default:default8@Z8-6059h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
xpm_memory_base2default:default2
 2default:default2
12default:default2
12default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
572default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
xpm_memory_tdpram2default:default2
 2default:default2
22default:default2
12default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
88712default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

uram_2w_2r2default:default2
 2default:default2
32default:default2
12default:default2d
N/Orion/GraphHBM/UTIL_IP/IP_URAM_2W2R/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v2default:default2
42default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 3243.711 ; gain = 225.594 ; free physical = 69652 ; free virtual = 108572
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3260.555 ; gain = 242.438 ; free physical = 69674 ; free virtual = 108593
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3260.555 ; gain = 242.438 ; free physical = 69674 ; free virtual = 108593
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3260.5552default:default2
0.0002default:default2
696582default:default2
1085782default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
No cells matched '%s'.
180*	planAhead2�
�get_cells -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}2default:default2]
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default2
32default:default8@Z12-180h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default20
.Xil/uram_2w_2r_propImpl.xdc2default:defaultZ1-236h px� 
l
2%s XPM XDC files have been applied to the design.
665*project2
12default:defaultZ1-1715h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3422.1802default:default2
0.0002default:default2
695932default:default2
1085122default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
3422.1802default:default2
0.0002default:default2
695932default:default2
1085122default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3422.180 ; gain = 404.062 ; free physical = 69684 ; free virtual = 108604
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Loading part: xcu280-fsvh2892-2L-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3422.180 ; gain = 404.062 ; free physical = 69684 ; free virtual = 108604
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3422.180 ; gain = 404.062 ; free physical = 69684 ; free virtual = 108604
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
9Default cascade height of %s will be used for URAM '%s'.
4181*oasys2
82default:default2G
3"xpm_memory_base:/gen_wr_b.gen_word_narrow.mem_reg"2default:defaultZ8-5780h px� 
�
�UltraRAM %s is in TDP mode. Simulation mismatches may occur when both port A and B access same address, either both ports have write operations or port A has read operation while port B has write operation.
4221*oasys2G
3"xpm_memory_base:/gen_wr_b.gen_word_narrow.mem_reg"2default:defaultZ8-5810h px� 
�
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2G
3"xpm_memory_base:/gen_wr_b.gen_word_narrow.mem_reg"2default:defaultZ8-3971h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3422.180 ; gain = 404.062 ; free physical = 69679 ; free virtual = 108599
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit    Registers := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
k
%s
*synth2S
?	             256K Bit	(4096 X 64 bit)          RAMs := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2o
[Part Resources:
DSPs: 9024 (col length:94)
BRAMs: 4032 (col length: RAMB18 288 RAMB36 144)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
9Default cascade height of %s will be used for URAM '%s'.
4181*oasys2
82default:default2b
N"xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5780h px� 
�
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2b
N"xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-3971h px� 
�
9Default cascade height of %s will be used for URAM '%s'.
4181*oasys2
82default:default2b
N"xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5780h px� 
�
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2b
N"xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-3971h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 3422.180 ; gain = 404.062 ; free physical = 69660 ; free virtual = 108584
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�Memory: "%s" defined in module: "%s" implemented as Ultra-Ram has no pipeline registers. It is recommended to use pipeline registers to achieve high performance.
4382*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:default2?
+xpm_memory_tdpram_inst/xpm_memory_base_inst2default:defaultZ8-6057h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Ultra RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name                                 | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | URAM288 | Matrix Shape | FF provided for Pipeline | FF absorbed | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
�|xpm_memory_tdpram_inst/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 4 K x 64               | W | R | 4 K x 64               | W | R | Port A and B     | 1       | 1x1          | 0                        | 0           | 
2default:defaulth px� 
�
%s*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Ultra RAMs at the current stage of the synthesis flow. Some Ultra RAMs may be reimplemented as non Ultra RAM primitives later in the synthesis flow. Multiple instantiated Ultra RAMs are reported only once. Fields "FF provided for Pipeline" and "FF absorbed" respectively indicate number of registers available for pipelining and number of registers absorbed in the URAM matrix for pipelining. 
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 3745.055 ; gain = 726.938 ; free physical = 69097 ; free virtual = 108028
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 3745.055 ; gain = 726.938 ; free physical = 69097 ; free virtual = 108028
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�Memory: "%s" defined in module: "%s" implemented as Ultra-Ram has no pipeline registers. It is recommended to use pipeline registers to achieve high performance.
4382*oasys24
 gen_wr_a.gen_word_narrow.mem_reg2default:default2?
+xpm_memory_tdpram_inst/xpm_memory_base_inst2default:defaultZ8-6057h px� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
^
%s
*synth2F
2
Ultra RAM: Final Mapping	Report (see note below)
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name                                 | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | URAM288 | Matrix Shape | FF provided for Pipeline | FF absorbed | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|xpm_memory_tdpram_inst/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 4 K x 64               | W | R | 4 K x 64               | W | R | Port A and B     | 1       | 1x1          | 0                        | 0           | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+---------+--------------+--------------------------+-------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2g
Sxpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_02default:default2
Ultra2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2g
Sxpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_uram_02default:default2
Ultra2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 3764.086 ; gain = 745.969 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px� 
E
%s*synth2-
|2     |LUT1    |     1|
2default:defaulth px� 
E
%s*synth2-
|3     |LUT2    |     4|
2default:defaulth px� 
E
%s*synth2-
|4     |URAM288 |     1|
2default:defaulth px� 
E
%s*synth2-
|5     |IBUF    |   158|
2default:defaulth px� 
E
%s*synth2-
|6     |OBUF    |   128|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.023 ; gain = 751.906 ; free physical = 69096 ; free virtual = 108026
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 3770.023 ; gain = 590.281 ; free physical = 69135 ; free virtual = 108066
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 3770.031 ; gain = 751.906 ; free physical = 69135 ; free virtual = 108066
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3776.9612default:default2
0.0002default:default2
692202default:default2
1081512default:defaultZ17-722h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1592default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3834.2662default:default2
0.0002default:default2
691242default:default2
1080542default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
{  A total of 159 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 158 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:222default:default2
00:00:292default:default2
3834.2662default:default2
1459.5082default:default2
692722default:default2
1082032default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
J/Orion/GraphHBM/UTIL_IP/IP_URAM_2W2R/uram_2w2r.runs/synth_1/uram_2w_2r.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2~
jExecuting : report_utilization -file uram_2w_2r_utilization_synth.rpt -pb uram_2w_2r_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun May  7 10:30:16 20232default:defaultZ17-206h px� 


End Record