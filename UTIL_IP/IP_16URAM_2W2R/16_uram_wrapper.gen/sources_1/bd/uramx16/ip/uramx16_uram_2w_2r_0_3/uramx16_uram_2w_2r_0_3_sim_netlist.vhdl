-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun May  7 10:32:21 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top uramx16_uram_2w_2r_0_3 -prefix
--               uramx16_uram_2w_2r_0_3_ uramx16_uram_2w_2r_0_0_sim_netlist.vhdl
-- Design      : uramx16_uram_2w_2r_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uramx16_uram_2w_2r_0_3_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 3;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 262144;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 2;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of uramx16_uram_2w_2r_0_3_xpm_memory_base : entity is 64;
end uramx16_uram_2w_2r_0_3_xpm_memory_base;

architecture STRUCTURE of uramx16_uram_2w_2r_0_3_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\ : STD_LOGIC_VECTOR ( 71 downto 64 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 63;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 63;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 262144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_uram_0\ : label is 63;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_2\ : label is "soft_lutpair0";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0\: unisim.vcomponents.URAM288
    generic map(
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INTERLEAVED",
      BWE_MODE_B => "PARITY_INTERLEAVED",
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      MATRIX_ID => "gen_wr_b.gen_word_narrow.mem_reg_B4_M0",
      NUM_UNIQUE_SELF_ADDR_A => 1,
      NUM_UNIQUE_SELF_ADDR_B => 1,
      NUM_URAM_IN_MATRIX => 1,
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      REG_CAS_A => "FALSE",
      REG_CAS_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SELF_ADDR_A => B"000" & X"00",
      SELF_ADDR_B => B"000" & X"00",
      SELF_MASK_A => B"111" & X"FF",
      SELF_MASK_B => B"111" & X"FF",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 12) => B"00000000000",
      ADDR_A(11 downto 0) => addra(11 downto 0),
      ADDR_B(22 downto 12) => B"00000000000",
      ADDR_B(11 downto 0) => addrb(11 downto 0),
      BWE_A(8) => '1',
      BWE_A(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_A(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      BWE_B(8) => '1',
      BWE_B(7) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(6) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(5) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(4) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(3) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(2) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(1) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      BWE_B(0) => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      CAS_IN_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_IN_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_IN_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_IN_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_IN_DBITERR_A => '0',
      CAS_IN_DBITERR_B => '0',
      CAS_IN_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_IN_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_IN_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_IN_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_IN_EN_A => '0',
      CAS_IN_EN_B => '0',
      CAS_IN_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDACCESS_A_UNCONNECTED\,
      CAS_IN_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDACCESS_B_UNCONNECTED\,
      CAS_IN_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDB_WR_A_UNCONNECTED\,
      CAS_IN_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_IN_RDB_WR_B_UNCONNECTED\,
      CAS_IN_SBITERR_A => '0',
      CAS_IN_SBITERR_B => '0',
      CAS_OUT_ADDR_A(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_A_UNCONNECTED\(22 downto 0),
      CAS_OUT_ADDR_B(22 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_ADDR_B_UNCONNECTED\(22 downto 0),
      CAS_OUT_BWE_A(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_A_UNCONNECTED\(8 downto 0),
      CAS_OUT_BWE_B(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_BWE_B_UNCONNECTED\(8 downto 0),
      CAS_OUT_DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_A_UNCONNECTED\,
      CAS_OUT_DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DBITERR_B_UNCONNECTED\,
      CAS_OUT_DIN_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DIN_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DIN_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_A(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_A_UNCONNECTED\(71 downto 0),
      CAS_OUT_DOUT_B(71 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_DOUT_B_UNCONNECTED\(71 downto 0),
      CAS_OUT_EN_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_A_UNCONNECTED\,
      CAS_OUT_EN_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_EN_B_UNCONNECTED\,
      CAS_OUT_RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_A_UNCONNECTED\,
      CAS_OUT_RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDACCESS_B_UNCONNECTED\,
      CAS_OUT_RDB_WR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_A_UNCONNECTED\,
      CAS_OUT_RDB_WR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_RDB_WR_B_UNCONNECTED\,
      CAS_OUT_SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_A_UNCONNECTED\,
      CAS_OUT_SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_CAS_OUT_SBITERR_B_UNCONNECTED\,
      CLK => clka,
      DBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED\,
      DBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED\,
      DIN_A(71 downto 64) => B"00000000",
      DIN_A(63 downto 0) => dina(63 downto 0),
      DIN_B(71 downto 64) => B"00000000",
      DIN_B(63 downto 0) => dinb(63 downto 0),
      DOUT_A(71 downto 64) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED\(71 downto 64),
      DOUT_A(63 downto 0) => douta(63 downto 0),
      DOUT_B(71 downto 64) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED\(71 downto 64),
      DOUT_B(63 downto 0) => doutb(63 downto 0),
      EN_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\,
      EN_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_2_n_0\,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '1',
      OREG_CE_B => '1',
      OREG_ECC_CE_A => '1',
      OREG_ECC_CE_B => '1',
      RDACCESS_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED\,
      RDACCESS_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED\,
      RDB_WR_A => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\,
      RDB_WR_B => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\,
      RST_A => rsta,
      RST_B => rsta,
      SBITERR_A => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED\,
      SBITERR_B => \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED\,
      SLEEP => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => enb,
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => web(0),
      I1 => enb,
      O => \gen_wr_a.gen_word_narrow.mem_reg_uram_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uramx16_uram_2w_2r_0_3_xpm_memory_tdpram is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "no_ecc";
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "ultra";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 262144;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 3;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 2;
  attribute P_WRITE_MODE_B : integer;
  attribute P_WRITE_MODE_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 2;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 1;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 64;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_MODE_B : string;
  attribute WRITE_MODE_B of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram : entity is "TRUE";
end uramx16_uram_2w_2r_0_3_xpm_memory_tdpram;

architecture STRUCTURE of uramx16_uram_2w_2r_0_3_xpm_memory_tdpram is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 12;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 12;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 64;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 64;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE_integer : integer;
  attribute CLOCKING_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "0";
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE_integer : integer;
  attribute MEMORY_PRIMITIVE_integer of xpm_memory_base_inst : label is 3;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 262144;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 2;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE_string : string;
  attribute P_ECC_MODE_string of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 4096;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE_string : string;
  attribute P_MEMORY_PRIMITIVE_string of xpm_memory_base_inst : label is "ultra";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 64;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 64;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 64;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 64;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 64;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 12;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 12;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 12;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 12;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 64;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 64;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 64;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 64;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 1;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME_integer : integer;
  attribute WAKEUP_TIME_integer of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 64;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 64;
  attribute WRITE_MODE_A_integer : integer;
  attribute WRITE_MODE_A_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_MODE_B_integer : integer;
  attribute WRITE_MODE_B_integer of xpm_memory_base_inst : label is 2;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 64;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 64;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_memory_base_inst: entity work.uramx16_uram_2w_2r_0_3_xpm_memory_base
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(63 downto 0) => dina(63 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(63 downto 0) => douta(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      ena => ena,
      enb => enb,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => rsta,
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uramx16_uram_2w_2r_0_3_uram_2w_2r is
  port (
    rdata0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    ce0 : in STD_LOGIC;
    we0 : in STD_LOGIC;
    addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wdata0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ce1 : in STD_LOGIC;
    we1 : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wdata1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rst_n : in STD_LOGIC
  );
end uramx16_uram_2w_2r_0_3_uram_2w_2r;

architecture STRUCTURE of uramx16_uram_2w_2r_0_3_uram_2w_2r is
  signal xpm_memory_tdpram_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_tdpram_inst : label is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_tdpram_inst : label is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_tdpram_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_tdpram_inst : label is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_tdpram_inst : label is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_tdpram_inst : label is 0;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of xpm_memory_tdpram_inst : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of xpm_memory_tdpram_inst : label is "no_ecc";
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_tdpram_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_tdpram_inst : label is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_tdpram_inst : label is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of xpm_memory_tdpram_inst : label is "ultra";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_tdpram_inst : label is 262144;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_tdpram_inst : label is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of xpm_memory_tdpram_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_memory_tdpram_inst : label is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of xpm_memory_tdpram_inst : label is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_tdpram_inst : label is 3;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xpm_memory_tdpram_inst : label is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of xpm_memory_tdpram_inst : label is 2;
  attribute P_WRITE_MODE_B : integer;
  attribute P_WRITE_MODE_B of xpm_memory_tdpram_inst : label is 2;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_tdpram_inst : label is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_tdpram_inst : label is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_tdpram_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_tdpram_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_tdpram_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_tdpram_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_tdpram_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_tdpram_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_tdpram_inst : label is 1;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_tdpram_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_tdpram_inst : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_tdpram_inst : label is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of xpm_memory_tdpram_inst : label is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_tdpram_inst : label is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_tdpram_inst : label is 64;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of xpm_memory_tdpram_inst : label is "no_change";
  attribute WRITE_MODE_B : string;
  attribute WRITE_MODE_B of xpm_memory_tdpram_inst : label is "no_change";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_tdpram_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_tdpram_inst : label is "TRUE";
begin
xpm_memory_tdpram_inst: entity work.uramx16_uram_2w_2r_0_3_xpm_memory_tdpram
     port map (
      addra(11 downto 0) => addr0(11 downto 0),
      addrb(11 downto 0) => addr1(11 downto 0),
      clka => clk,
      clkb => '0',
      dbiterra => NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED,
      dina(63 downto 0) => wdata0(63 downto 0),
      dinb(63 downto 0) => wdata1(63 downto 0),
      douta(63 downto 0) => rdata0(63 downto 0),
      doutb(63 downto 0) => rdata1(63 downto 0),
      ena => ce0,
      enb => ce1,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '1',
      rsta => xpm_memory_tdpram_inst_i_1_n_0,
      rstb => '0',
      sbiterra => NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(0) => we0,
      web(0) => we1
    );
xpm_memory_tdpram_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => xpm_memory_tdpram_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uramx16_uram_2w_2r_0_3 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ce0 : in STD_LOGIC;
    ce1 : in STD_LOGIC;
    we0 : in STD_LOGIC;
    we1 : in STD_LOGIC;
    addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rdata0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata1 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uramx16_uram_2w_2r_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uramx16_uram_2w_2r_0_3 : entity is "uramx16_uram_2w_2r_0_0,uram_2w_2r,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uramx16_uram_2w_2r_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uramx16_uram_2w_2r_0_3 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uramx16_uram_2w_2r_0_3 : entity is "uram_2w_2r,Vivado 2020.2";
end uramx16_uram_2w_2r_0_3;

architecture STRUCTURE of uramx16_uram_2w_2r_0_3 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uramx16_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.uramx16_uram_2w_2r_0_3_uram_2w_2r
     port map (
      addr0(11 downto 0) => addr0(11 downto 0),
      addr1(11 downto 0) => addr1(11 downto 0),
      ce0 => ce0,
      ce1 => ce1,
      clk => clk,
      rdata0(63 downto 0) => rdata0(63 downto 0),
      rdata1(63 downto 0) => rdata1(63 downto 0),
      rst_n => rst_n,
      wdata0(63 downto 0) => wdata0(63 downto 0),
      wdata1(63 downto 0) => wdata1(63 downto 0),
      we0 => we0,
      we1 => we1
    );
end STRUCTURE;
