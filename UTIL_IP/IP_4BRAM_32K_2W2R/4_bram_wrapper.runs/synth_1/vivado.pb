
�
Command: %s
53*	vivadotcl2�
xsynth_design -top bram_2w_2r_32k_x4 -part xcu280-fsvh2892-2L-e -directive AlternateRoutability -no_lc -shreg_min_size 102default:defaultZ4-113h px� 
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
17093762default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 3190.805 ; gain = 172.688 ; free physical = 99940 ; free virtual = 103661
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2%
bram_2w_2r_32k_x42default:default2
 2default:default2r
\/Orion/GraphHBM/UTIL_IP/IP_4BRAM_32K_2W2R/4_bram_wrapper.srcs/sources_1/new/bram_2w_2r_x4.sv2default:default2
42default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2"
bram_32k_2w_2r2default:default2
 2default:default2r
\/Orion/GraphHBM/UTIL_IP/IP_4BRAM_32K_2W2R/4_bram_wrapper.srcs/sources_1/new/bram_32k_2w_2r.v2default:default2
42default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2%
xpm_memory_tdpram2default:default2
 2default:default2X
B/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2default:default2
88712default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter MEMORY_SIZE bound to: 32768 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter MEMORY_PRIMITIVE bound to: block - type: string 
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
<	Parameter WRITE_DATA_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 10 - type: integer 
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
<	Parameter WRITE_DATA_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 10 - type: integer 
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
;	Parameter P_MEMORY_PRIMITIVE bound to: 2 - type: integer 
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
d
%s
*synth2L
8	Parameter MEMORY_SIZE bound to: 32768 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter MEMORY_PRIMITIVE bound to: 2 - type: integer 
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
<	Parameter WRITE_DATA_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_A bound to: 10 - type: integer 
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
<	Parameter WRITE_DATA_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter READ_DATA_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter BYTE_WRITE_WIDTH_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter ADDR_WIDTH_B bound to: 10 - type: integer 
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
>	Parameter P_MEMORY_PRIMITIVE bound to: block - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MIN_WIDTH_DATA_B bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_MIN_WIDTH_DATA bound to: 32 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_MIN_WIDTH_DATA_ECC bound to: 32 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter P_MAX_DEPTH_DATA bound to: 1024 - type: integer 
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
=	Parameter P_WIDTH_COL_WRITE_A bound to: 32 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_COL_WRITE_B bound to: 32 - type: integer 
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
>	Parameter P_WIDTH_ADDR_WRITE_A bound to: 10 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_WIDTH_ADDR_WRITE_B bound to: 10 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_A bound to: 10 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter P_WIDTH_ADDR_READ_B bound to: 10 - type: integer 
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
8	Parameter rsta_loop_iter bound to: 32 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter rstb_loop_iter bound to: 32 - type: integer 
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
?	Parameter P_MIN_WIDTH_DATA_SHFT bound to: 32 - type: integer 
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
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
bram_32k_2w_2r2default:default2
 2default:default2
32default:default2
12default:default2r
\/Orion/GraphHBM/UTIL_IP/IP_4BRAM_32K_2W2R/4_bram_wrapper.srcs/sources_1/new/bram_32k_2w_2r.v2default:default2
42default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
bram_2w_2r_32k_x42default:default2
 2default:default2
42default:default2
12default:default2r
\/Orion/GraphHBM/UTIL_IP/IP_4BRAM_32K_2W2R/4_bram_wrapper.srcs/sources_1/new/bram_2w_2r_x4.sv2default:default2
42default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 3236.711 ; gain = 218.594 ; free physical = 99973 ; free virtual = 103696
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 3254.555 ; gain = 236.438 ; free physical = 100687 ; free virtual = 104409
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 3254.555 ; gain = 236.438 ; free physical = 100686 ; free virtual = 104409
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
00:00:00.012default:default2
00:00:002default:default2
3254.5552default:default2
0.0002default:default2
1006522default:default2
1043742default:defaultZ17-722h px� 
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
�
No cells matched '%s'.
180*	planAhead2�
�get_cells -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}2default:default2]
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default2
32default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead2�
�get_cells -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}2default:default2]
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default2
32default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead2�
�get_cells -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}2default:default2]
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default2
32default:default8@Z12-180h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
G/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl2default:default27
#.Xil/bram_2w_2r_32k_x4_propImpl.xdc2default:defaultZ1-236h px� 
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
3441.1802default:default2
0.0002default:default2
1006242default:default2
1043462default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3441.1802default:default2
0.0002default:default2
1006242default:default2
1043462default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3441.180 ; gain = 423.062 ; free physical = 100702 ; free virtual = 104425
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3441.180 ; gain = 423.062 ; free physical = 100702 ; free virtual = 104425
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3441.180 ; gain = 423.062 ; free physical = 100702 ; free virtual = 104425
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
12default:default2G
3"xpm_memory_base:/gen_wr_b.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2G
3"xpm_memory_base:/gen_wr_b.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 3441.180 ; gain = 423.062 ; free physical = 100693 ; free virtual = 104417
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
.	               32 Bit    Registers := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
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
?	              32K Bit	(1024 X 32 bit)          RAMs := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 8     
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
9Default cascade height of %s will be used for BRAM '%s'.
4180*oasys2
12default:default2^
J"xpm_memory_tdpram:/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-5779h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2default:default2
12default:default2
322default:default2^
J"xpm_memory_tdpram:/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-7030h px� 
�
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2^
J"xpm_memory_tdpram:/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg"2default:defaultZ8-3971h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 3441.180 ; gain = 423.062 ; free physical = 100683 ; free virtual = 104413
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
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name                             | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth px� 
�
%s*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth px� 
�
%s*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth px� 
�
%s*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth px� 
�
%s*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 3739.461 ; gain = 721.344 ; free physical = 100165 ; free virtual = 103896
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
�Finished Timing Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 3740.461 ; gain = 722.344 ; free physical = 100164 ; free virtual = 103895
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
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
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name                             | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | Cascade Heights | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|xpm_memory_tdpram:/xpm_memory_base_inst | gen_wr_a.gen_word_narrow.mem_reg | 1 K x 32(NO_CHANGE)    | W | R | 1 K x 32(NO_CHANGE)    | W | R | Port A and B     | 0      | 1      | 1               | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+-----------------+

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
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[0].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[0].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[1].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[1].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[2].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[2].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[3].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
ogen_bram_ram[3].inst_bram_U/xpm_memory_tdpram_inst/xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_02default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 3759.492 ; gain = 741.375 ; free physical = 100162 ; free virtual = 103892
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
�Finished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |LUT1     |     1|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT2     |    40|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT3     |   256|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT6     |    20|
2default:defaulth px� 
F
%s*synth2.
|6     |RAMB36E2 |     4|
2default:defaulth px� 
F
%s*synth2.
|7     |FDRE     |   264|
2default:defaulth px� 
F
%s*synth2.
|8     |IBUF     |   354|
2default:defaulth px� 
F
%s*synth2.
|9     |OBUF     |   256|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.430 ; gain = 748.312 ; free physical = 100150 ; free virtual = 103880
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
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 3766.430 ; gain = 561.688 ; free physical = 100190 ; free virtual = 103920
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 3766.438 ; gain = 748.312 ; free physical = 100190 ; free virtual = 103920
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
00:00:00.012default:default2
00:00:00.012default:default2
3773.3672default:default2
0.0002default:default2
1002742default:default2
1040052default:defaultZ17-722h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3552default:defaultZ29-17h px� 
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
3832.6722default:default2
0.0002default:default2
1001902default:default2
1039212default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
{  A total of 355 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 354 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
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
3832.6722default:default2
1456.9142default:default2
1003312default:default2
1040612default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[/Orion/GraphHBM/UTIL_IP/IP_4BRAM_32K_2W2R/4_bram_wrapper.runs/synth_1/bram_2w_2r_32k_x4.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
xExecuting : report_utilization -file bram_2w_2r_32k_x4_utilization_synth.rpt -pb bram_2w_2r_32k_x4_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Apr 13 16:28:53 20232default:defaultZ17-206h px� 


End Record