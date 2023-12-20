-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr 25 19:51:05 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uramx16_uram_2w_2r_0_0_sim_netlist.vhdl
-- Design      : uramx16_uram_2w_2r_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
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
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32768;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p4_d32";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 35;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "p4_d32";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_0\ : label is 35;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p0_d28";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 36;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 63;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "p0_d28";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 36;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 63;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 32768;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 511;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 36;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_bram_1\ : label is 63;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\ : label is "soft_lutpair0";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_0\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 5) => addrb(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => addra(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => dinb(31 downto 0),
      DINBDIN(31 downto 0) => dina(31 downto 0),
      DINPADINP(3 downto 0) => dinb(35 downto 32),
      DINPBDINP(3 downto 0) => dina(35 downto 32),
      DOUTADOUT(31 downto 0) => doutb(31 downto 0),
      DOUTBDOUT(31 downto 0) => douta(31 downto 0),
      DOUTPADOUTP(3 downto 0) => doutb(35 downto 32),
      DOUTPBDOUTP(3 downto 0) => douta(35 downto 32),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\,
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => rsta,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 5) => addrb(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => addra(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 28) => B"0000",
      DINADIN(27 downto 0) => dinb(63 downto 36),
      DINBDIN(31 downto 28) => B"0000",
      DINBDIN(27 downto 0) => dina(63 downto 36),
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 28) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED\(31 downto 28),
      DOUTADOUT(27 downto 0) => doutb(63 downto 36),
      DOUTBDOUT(31 downto 28) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\(31 downto 28),
      DOUTBDOUT(27 downto 0) => douta(63 downto 36),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\,
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => rsta,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\,
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(2) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(1) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\,
      WEBWE(0) => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => enb,
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => web(0),
      I1 => enb,
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0\
    );
\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram is
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
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 12;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 12;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_ecc";
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "block";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 32768;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 2;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 2;
  attribute P_WRITE_MODE_B : integer;
  attribute P_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 2;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 64;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_MODE_B : string;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "no_change";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram is
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
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of xpm_memory_base_inst : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of xpm_memory_base_inst : label is 63;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of xpm_memory_base_inst : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of xpm_memory_base_inst : label is 64;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "0";
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE_integer : integer;
  attribute MEMORY_PRIMITIVE_integer of xpm_memory_base_inst : label is 2;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 32768;
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
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE_string : string;
  attribute P_MEMORY_PRIMITIVE_string of xpm_memory_base_inst : label is "block";
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
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 9;
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
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(11 downto 9) => B"000",
      addra(8 downto 0) => addra(8 downto 0),
      addrb(11 downto 9) => B"000",
      addrb(8 downto 0) => addrb(8 downto 0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r is
  signal fwd_01 : STD_LOGIC;
  signal fwd_01_1d : STD_LOGIC;
  signal fwd_01_1d_i_2_n_0 : STD_LOGIC;
  signal fwd_10 : STD_LOGIC;
  signal fwd_10_1d : STD_LOGIC;
  signal fwd_10_1d_i_2_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_3_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_4_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_5_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_6_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_7_n_0 : STD_LOGIC;
  signal i_rdata0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal i_rdata1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wdata0_r : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wdata0_r0 : STD_LOGIC;
  signal wdata1_r : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wdata1_r0 : STD_LOGIC;
  signal xpm_memory_tdpram_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fwd_01_1d_i_2 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of fwd_10_1d_i_7 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rdata0[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata0[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata0[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata0[12]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata0[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata0[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata0[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata0[16]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata0[17]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata0[18]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata0[19]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata0[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata0[20]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata0[21]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata0[22]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata0[23]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata0[24]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rdata0[25]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rdata0[26]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata0[27]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata0[28]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rdata0[29]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rdata0[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata0[30]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdata0[31]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdata0[32]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rdata0[33]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rdata0[34]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rdata0[35]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rdata0[36]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdata0[37]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdata0[38]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdata0[39]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdata0[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata0[40]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdata0[41]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdata0[42]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdata0[43]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdata0[44]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdata0[45]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdata0[46]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata0[47]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata0[48]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdata0[49]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdata0[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata0[50]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdata0[51]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdata0[52]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdata0[53]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdata0[54]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rdata0[55]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rdata0[56]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rdata0[57]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rdata0[58]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rdata0[59]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rdata0[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata0[60]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rdata0[61]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rdata0[62]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rdata0[63]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rdata0[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata0[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata0[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata0[9]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata1[0]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata1[10]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdata1[11]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdata1[12]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rdata1[13]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rdata1[14]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rdata1[15]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rdata1[16]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdata1[17]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdata1[18]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rdata1[19]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rdata1[1]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata1[20]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rdata1[21]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rdata1[22]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rdata1[23]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rdata1[24]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdata1[25]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdata1[26]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rdata1[27]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rdata1[28]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rdata1[29]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rdata1[2]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rdata1[30]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rdata1[31]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rdata1[32]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rdata1[33]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rdata1[34]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rdata1[35]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rdata1[36]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rdata1[37]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rdata1[38]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rdata1[39]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rdata1[3]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rdata1[40]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdata1[41]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdata1[42]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata1[43]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata1[44]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rdata1[45]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rdata1[46]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rdata1[47]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rdata1[48]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rdata1[49]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rdata1[4]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdata1[50]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata1[51]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata1[52]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rdata1[53]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rdata1[54]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rdata1[55]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rdata1[56]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rdata1[57]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rdata1[58]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rdata1[59]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rdata1[5]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdata1[60]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rdata1[61]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rdata1[62]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata1[63]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata1[6]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdata1[7]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdata1[8]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rdata1[9]_INST_0\ : label is "soft_lutpair37";
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
  attribute MEMORY_PRIMITIVE of xpm_memory_tdpram_inst : label is "block";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_tdpram_inst : label is 32768;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_tdpram_inst : label is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of xpm_memory_tdpram_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_memory_tdpram_inst : label is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of xpm_memory_tdpram_inst : label is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_tdpram_inst : label is 2;
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
fwd_01_1d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => fwd_10_1d_i_2_n_0,
      I1 => fwd_10_1d_i_3_n_0,
      I2 => fwd_10_1d_i_4_n_0,
      I3 => fwd_10_1d_i_5_n_0,
      I4 => fwd_10_1d_i_6_n_0,
      I5 => fwd_01_1d_i_2_n_0,
      O => fwd_01
    );
fwd_01_1d_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => we0,
      I1 => we1,
      O => fwd_01_1d_i_2_n_0
    );
fwd_01_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fwd_01,
      Q => fwd_01_1d,
      R => '0'
    );
fwd_10_1d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => fwd_10_1d_i_2_n_0,
      I1 => fwd_10_1d_i_3_n_0,
      I2 => fwd_10_1d_i_4_n_0,
      I3 => fwd_10_1d_i_5_n_0,
      I4 => fwd_10_1d_i_6_n_0,
      I5 => fwd_10_1d_i_7_n_0,
      O => fwd_10
    );
fwd_10_1d_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ce1,
      I1 => ce0,
      O => fwd_10_1d_i_2_n_0
    );
fwd_10_1d_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => addr0(3),
      I1 => addr1(3),
      I2 => addr1(5),
      I3 => addr0(5),
      I4 => addr1(4),
      I5 => addr0(4),
      O => fwd_10_1d_i_3_n_0
    );
fwd_10_1d_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => addr0(0),
      I1 => addr1(0),
      I2 => addr1(2),
      I3 => addr0(2),
      I4 => addr1(1),
      I5 => addr0(1),
      O => fwd_10_1d_i_4_n_0
    );
fwd_10_1d_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => addr0(9),
      I1 => addr1(9),
      I2 => addr1(11),
      I3 => addr0(11),
      I4 => addr1(10),
      I5 => addr0(10),
      O => fwd_10_1d_i_5_n_0
    );
fwd_10_1d_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => addr0(6),
      I1 => addr1(6),
      I2 => addr1(8),
      I3 => addr0(8),
      I4 => addr1(7),
      I5 => addr0(7),
      O => fwd_10_1d_i_6_n_0
    );
fwd_10_1d_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => we1,
      I1 => we0,
      O => fwd_10_1d_i_7_n_0
    );
fwd_10_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fwd_10,
      Q => fwd_10_1d,
      R => '0'
    );
\rdata0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(0),
      I1 => i_rdata0(0),
      I2 => fwd_10_1d,
      O => rdata0(0)
    );
\rdata0[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(10),
      I1 => i_rdata0(10),
      I2 => fwd_10_1d,
      O => rdata0(10)
    );
\rdata0[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(11),
      I1 => i_rdata0(11),
      I2 => fwd_10_1d,
      O => rdata0(11)
    );
\rdata0[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(12),
      I1 => i_rdata0(12),
      I2 => fwd_10_1d,
      O => rdata0(12)
    );
\rdata0[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(13),
      I1 => i_rdata0(13),
      I2 => fwd_10_1d,
      O => rdata0(13)
    );
\rdata0[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(14),
      I1 => i_rdata0(14),
      I2 => fwd_10_1d,
      O => rdata0(14)
    );
\rdata0[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(15),
      I1 => i_rdata0(15),
      I2 => fwd_10_1d,
      O => rdata0(15)
    );
\rdata0[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(16),
      I1 => i_rdata0(16),
      I2 => fwd_10_1d,
      O => rdata0(16)
    );
\rdata0[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(17),
      I1 => i_rdata0(17),
      I2 => fwd_10_1d,
      O => rdata0(17)
    );
\rdata0[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(18),
      I1 => i_rdata0(18),
      I2 => fwd_10_1d,
      O => rdata0(18)
    );
\rdata0[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(19),
      I1 => i_rdata0(19),
      I2 => fwd_10_1d,
      O => rdata0(19)
    );
\rdata0[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(1),
      I1 => i_rdata0(1),
      I2 => fwd_10_1d,
      O => rdata0(1)
    );
\rdata0[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(20),
      I1 => i_rdata0(20),
      I2 => fwd_10_1d,
      O => rdata0(20)
    );
\rdata0[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(21),
      I1 => i_rdata0(21),
      I2 => fwd_10_1d,
      O => rdata0(21)
    );
\rdata0[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(22),
      I1 => i_rdata0(22),
      I2 => fwd_10_1d,
      O => rdata0(22)
    );
\rdata0[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(23),
      I1 => i_rdata0(23),
      I2 => fwd_10_1d,
      O => rdata0(23)
    );
\rdata0[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(24),
      I1 => i_rdata0(24),
      I2 => fwd_10_1d,
      O => rdata0(24)
    );
\rdata0[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(25),
      I1 => i_rdata0(25),
      I2 => fwd_10_1d,
      O => rdata0(25)
    );
\rdata0[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(26),
      I1 => i_rdata0(26),
      I2 => fwd_10_1d,
      O => rdata0(26)
    );
\rdata0[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(27),
      I1 => i_rdata0(27),
      I2 => fwd_10_1d,
      O => rdata0(27)
    );
\rdata0[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(28),
      I1 => i_rdata0(28),
      I2 => fwd_10_1d,
      O => rdata0(28)
    );
\rdata0[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(29),
      I1 => i_rdata0(29),
      I2 => fwd_10_1d,
      O => rdata0(29)
    );
\rdata0[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(2),
      I1 => i_rdata0(2),
      I2 => fwd_10_1d,
      O => rdata0(2)
    );
\rdata0[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(30),
      I1 => i_rdata0(30),
      I2 => fwd_10_1d,
      O => rdata0(30)
    );
\rdata0[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(31),
      I1 => i_rdata0(31),
      I2 => fwd_10_1d,
      O => rdata0(31)
    );
\rdata0[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(32),
      I1 => i_rdata0(32),
      I2 => fwd_10_1d,
      O => rdata0(32)
    );
\rdata0[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(33),
      I1 => i_rdata0(33),
      I2 => fwd_10_1d,
      O => rdata0(33)
    );
\rdata0[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(34),
      I1 => i_rdata0(34),
      I2 => fwd_10_1d,
      O => rdata0(34)
    );
\rdata0[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(35),
      I1 => i_rdata0(35),
      I2 => fwd_10_1d,
      O => rdata0(35)
    );
\rdata0[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(36),
      I1 => i_rdata0(36),
      I2 => fwd_10_1d,
      O => rdata0(36)
    );
\rdata0[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(37),
      I1 => i_rdata0(37),
      I2 => fwd_10_1d,
      O => rdata0(37)
    );
\rdata0[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(38),
      I1 => i_rdata0(38),
      I2 => fwd_10_1d,
      O => rdata0(38)
    );
\rdata0[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(39),
      I1 => i_rdata0(39),
      I2 => fwd_10_1d,
      O => rdata0(39)
    );
\rdata0[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(3),
      I1 => i_rdata0(3),
      I2 => fwd_10_1d,
      O => rdata0(3)
    );
\rdata0[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(40),
      I1 => i_rdata0(40),
      I2 => fwd_10_1d,
      O => rdata0(40)
    );
\rdata0[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(41),
      I1 => i_rdata0(41),
      I2 => fwd_10_1d,
      O => rdata0(41)
    );
\rdata0[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(42),
      I1 => i_rdata0(42),
      I2 => fwd_10_1d,
      O => rdata0(42)
    );
\rdata0[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(43),
      I1 => i_rdata0(43),
      I2 => fwd_10_1d,
      O => rdata0(43)
    );
\rdata0[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(44),
      I1 => i_rdata0(44),
      I2 => fwd_10_1d,
      O => rdata0(44)
    );
\rdata0[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(45),
      I1 => i_rdata0(45),
      I2 => fwd_10_1d,
      O => rdata0(45)
    );
\rdata0[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(46),
      I1 => i_rdata0(46),
      I2 => fwd_10_1d,
      O => rdata0(46)
    );
\rdata0[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(47),
      I1 => i_rdata0(47),
      I2 => fwd_10_1d,
      O => rdata0(47)
    );
\rdata0[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(48),
      I1 => i_rdata0(48),
      I2 => fwd_10_1d,
      O => rdata0(48)
    );
\rdata0[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(49),
      I1 => i_rdata0(49),
      I2 => fwd_10_1d,
      O => rdata0(49)
    );
\rdata0[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(4),
      I1 => i_rdata0(4),
      I2 => fwd_10_1d,
      O => rdata0(4)
    );
\rdata0[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(50),
      I1 => i_rdata0(50),
      I2 => fwd_10_1d,
      O => rdata0(50)
    );
\rdata0[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(51),
      I1 => i_rdata0(51),
      I2 => fwd_10_1d,
      O => rdata0(51)
    );
\rdata0[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(52),
      I1 => i_rdata0(52),
      I2 => fwd_10_1d,
      O => rdata0(52)
    );
\rdata0[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(53),
      I1 => i_rdata0(53),
      I2 => fwd_10_1d,
      O => rdata0(53)
    );
\rdata0[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(54),
      I1 => i_rdata0(54),
      I2 => fwd_10_1d,
      O => rdata0(54)
    );
\rdata0[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(55),
      I1 => i_rdata0(55),
      I2 => fwd_10_1d,
      O => rdata0(55)
    );
\rdata0[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(56),
      I1 => i_rdata0(56),
      I2 => fwd_10_1d,
      O => rdata0(56)
    );
\rdata0[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(57),
      I1 => i_rdata0(57),
      I2 => fwd_10_1d,
      O => rdata0(57)
    );
\rdata0[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(58),
      I1 => i_rdata0(58),
      I2 => fwd_10_1d,
      O => rdata0(58)
    );
\rdata0[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(59),
      I1 => i_rdata0(59),
      I2 => fwd_10_1d,
      O => rdata0(59)
    );
\rdata0[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(5),
      I1 => i_rdata0(5),
      I2 => fwd_10_1d,
      O => rdata0(5)
    );
\rdata0[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(60),
      I1 => i_rdata0(60),
      I2 => fwd_10_1d,
      O => rdata0(60)
    );
\rdata0[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(61),
      I1 => i_rdata0(61),
      I2 => fwd_10_1d,
      O => rdata0(61)
    );
\rdata0[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(62),
      I1 => i_rdata0(62),
      I2 => fwd_10_1d,
      O => rdata0(62)
    );
\rdata0[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(63),
      I1 => i_rdata0(63),
      I2 => fwd_10_1d,
      O => rdata0(63)
    );
\rdata0[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(6),
      I1 => i_rdata0(6),
      I2 => fwd_10_1d,
      O => rdata0(6)
    );
\rdata0[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(7),
      I1 => i_rdata0(7),
      I2 => fwd_10_1d,
      O => rdata0(7)
    );
\rdata0[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(8),
      I1 => i_rdata0(8),
      I2 => fwd_10_1d,
      O => rdata0(8)
    );
\rdata0[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata1_r(9),
      I1 => i_rdata0(9),
      I2 => fwd_10_1d,
      O => rdata0(9)
    );
\rdata1[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(0),
      I1 => i_rdata1(0),
      I2 => fwd_01_1d,
      O => rdata1(0)
    );
\rdata1[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(10),
      I1 => i_rdata1(10),
      I2 => fwd_01_1d,
      O => rdata1(10)
    );
\rdata1[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(11),
      I1 => i_rdata1(11),
      I2 => fwd_01_1d,
      O => rdata1(11)
    );
\rdata1[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(12),
      I1 => i_rdata1(12),
      I2 => fwd_01_1d,
      O => rdata1(12)
    );
\rdata1[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(13),
      I1 => i_rdata1(13),
      I2 => fwd_01_1d,
      O => rdata1(13)
    );
\rdata1[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(14),
      I1 => i_rdata1(14),
      I2 => fwd_01_1d,
      O => rdata1(14)
    );
\rdata1[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(15),
      I1 => i_rdata1(15),
      I2 => fwd_01_1d,
      O => rdata1(15)
    );
\rdata1[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(16),
      I1 => i_rdata1(16),
      I2 => fwd_01_1d,
      O => rdata1(16)
    );
\rdata1[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(17),
      I1 => i_rdata1(17),
      I2 => fwd_01_1d,
      O => rdata1(17)
    );
\rdata1[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(18),
      I1 => i_rdata1(18),
      I2 => fwd_01_1d,
      O => rdata1(18)
    );
\rdata1[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(19),
      I1 => i_rdata1(19),
      I2 => fwd_01_1d,
      O => rdata1(19)
    );
\rdata1[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(1),
      I1 => i_rdata1(1),
      I2 => fwd_01_1d,
      O => rdata1(1)
    );
\rdata1[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(20),
      I1 => i_rdata1(20),
      I2 => fwd_01_1d,
      O => rdata1(20)
    );
\rdata1[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(21),
      I1 => i_rdata1(21),
      I2 => fwd_01_1d,
      O => rdata1(21)
    );
\rdata1[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(22),
      I1 => i_rdata1(22),
      I2 => fwd_01_1d,
      O => rdata1(22)
    );
\rdata1[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(23),
      I1 => i_rdata1(23),
      I2 => fwd_01_1d,
      O => rdata1(23)
    );
\rdata1[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(24),
      I1 => i_rdata1(24),
      I2 => fwd_01_1d,
      O => rdata1(24)
    );
\rdata1[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(25),
      I1 => i_rdata1(25),
      I2 => fwd_01_1d,
      O => rdata1(25)
    );
\rdata1[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(26),
      I1 => i_rdata1(26),
      I2 => fwd_01_1d,
      O => rdata1(26)
    );
\rdata1[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(27),
      I1 => i_rdata1(27),
      I2 => fwd_01_1d,
      O => rdata1(27)
    );
\rdata1[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(28),
      I1 => i_rdata1(28),
      I2 => fwd_01_1d,
      O => rdata1(28)
    );
\rdata1[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(29),
      I1 => i_rdata1(29),
      I2 => fwd_01_1d,
      O => rdata1(29)
    );
\rdata1[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(2),
      I1 => i_rdata1(2),
      I2 => fwd_01_1d,
      O => rdata1(2)
    );
\rdata1[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(30),
      I1 => i_rdata1(30),
      I2 => fwd_01_1d,
      O => rdata1(30)
    );
\rdata1[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(31),
      I1 => i_rdata1(31),
      I2 => fwd_01_1d,
      O => rdata1(31)
    );
\rdata1[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(32),
      I1 => i_rdata1(32),
      I2 => fwd_01_1d,
      O => rdata1(32)
    );
\rdata1[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(33),
      I1 => i_rdata1(33),
      I2 => fwd_01_1d,
      O => rdata1(33)
    );
\rdata1[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(34),
      I1 => i_rdata1(34),
      I2 => fwd_01_1d,
      O => rdata1(34)
    );
\rdata1[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(35),
      I1 => i_rdata1(35),
      I2 => fwd_01_1d,
      O => rdata1(35)
    );
\rdata1[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(36),
      I1 => i_rdata1(36),
      I2 => fwd_01_1d,
      O => rdata1(36)
    );
\rdata1[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(37),
      I1 => i_rdata1(37),
      I2 => fwd_01_1d,
      O => rdata1(37)
    );
\rdata1[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(38),
      I1 => i_rdata1(38),
      I2 => fwd_01_1d,
      O => rdata1(38)
    );
\rdata1[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(39),
      I1 => i_rdata1(39),
      I2 => fwd_01_1d,
      O => rdata1(39)
    );
\rdata1[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(3),
      I1 => i_rdata1(3),
      I2 => fwd_01_1d,
      O => rdata1(3)
    );
\rdata1[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(40),
      I1 => i_rdata1(40),
      I2 => fwd_01_1d,
      O => rdata1(40)
    );
\rdata1[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(41),
      I1 => i_rdata1(41),
      I2 => fwd_01_1d,
      O => rdata1(41)
    );
\rdata1[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(42),
      I1 => i_rdata1(42),
      I2 => fwd_01_1d,
      O => rdata1(42)
    );
\rdata1[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(43),
      I1 => i_rdata1(43),
      I2 => fwd_01_1d,
      O => rdata1(43)
    );
\rdata1[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(44),
      I1 => i_rdata1(44),
      I2 => fwd_01_1d,
      O => rdata1(44)
    );
\rdata1[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(45),
      I1 => i_rdata1(45),
      I2 => fwd_01_1d,
      O => rdata1(45)
    );
\rdata1[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(46),
      I1 => i_rdata1(46),
      I2 => fwd_01_1d,
      O => rdata1(46)
    );
\rdata1[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(47),
      I1 => i_rdata1(47),
      I2 => fwd_01_1d,
      O => rdata1(47)
    );
\rdata1[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(48),
      I1 => i_rdata1(48),
      I2 => fwd_01_1d,
      O => rdata1(48)
    );
\rdata1[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(49),
      I1 => i_rdata1(49),
      I2 => fwd_01_1d,
      O => rdata1(49)
    );
\rdata1[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(4),
      I1 => i_rdata1(4),
      I2 => fwd_01_1d,
      O => rdata1(4)
    );
\rdata1[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(50),
      I1 => i_rdata1(50),
      I2 => fwd_01_1d,
      O => rdata1(50)
    );
\rdata1[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(51),
      I1 => i_rdata1(51),
      I2 => fwd_01_1d,
      O => rdata1(51)
    );
\rdata1[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(52),
      I1 => i_rdata1(52),
      I2 => fwd_01_1d,
      O => rdata1(52)
    );
\rdata1[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(53),
      I1 => i_rdata1(53),
      I2 => fwd_01_1d,
      O => rdata1(53)
    );
\rdata1[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(54),
      I1 => i_rdata1(54),
      I2 => fwd_01_1d,
      O => rdata1(54)
    );
\rdata1[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(55),
      I1 => i_rdata1(55),
      I2 => fwd_01_1d,
      O => rdata1(55)
    );
\rdata1[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(56),
      I1 => i_rdata1(56),
      I2 => fwd_01_1d,
      O => rdata1(56)
    );
\rdata1[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(57),
      I1 => i_rdata1(57),
      I2 => fwd_01_1d,
      O => rdata1(57)
    );
\rdata1[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(58),
      I1 => i_rdata1(58),
      I2 => fwd_01_1d,
      O => rdata1(58)
    );
\rdata1[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(59),
      I1 => i_rdata1(59),
      I2 => fwd_01_1d,
      O => rdata1(59)
    );
\rdata1[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(5),
      I1 => i_rdata1(5),
      I2 => fwd_01_1d,
      O => rdata1(5)
    );
\rdata1[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(60),
      I1 => i_rdata1(60),
      I2 => fwd_01_1d,
      O => rdata1(60)
    );
\rdata1[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(61),
      I1 => i_rdata1(61),
      I2 => fwd_01_1d,
      O => rdata1(61)
    );
\rdata1[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(62),
      I1 => i_rdata1(62),
      I2 => fwd_01_1d,
      O => rdata1(62)
    );
\rdata1[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(63),
      I1 => i_rdata1(63),
      I2 => fwd_01_1d,
      O => rdata1(63)
    );
\rdata1[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(6),
      I1 => i_rdata1(6),
      I2 => fwd_01_1d,
      O => rdata1(6)
    );
\rdata1[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(7),
      I1 => i_rdata1(7),
      I2 => fwd_01_1d,
      O => rdata1(7)
    );
\rdata1[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(8),
      I1 => i_rdata1(8),
      I2 => fwd_01_1d,
      O => rdata1(8)
    );
\rdata1[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wdata0_r(9),
      I1 => i_rdata1(9),
      I2 => fwd_01_1d,
      O => rdata1(9)
    );
\wdata0_r[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ce0,
      I1 => we0,
      O => wdata0_r0
    );
\wdata0_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(0),
      Q => wdata0_r(0),
      R => '0'
    );
\wdata0_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(10),
      Q => wdata0_r(10),
      R => '0'
    );
\wdata0_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(11),
      Q => wdata0_r(11),
      R => '0'
    );
\wdata0_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(12),
      Q => wdata0_r(12),
      R => '0'
    );
\wdata0_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(13),
      Q => wdata0_r(13),
      R => '0'
    );
\wdata0_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(14),
      Q => wdata0_r(14),
      R => '0'
    );
\wdata0_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(15),
      Q => wdata0_r(15),
      R => '0'
    );
\wdata0_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(16),
      Q => wdata0_r(16),
      R => '0'
    );
\wdata0_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(17),
      Q => wdata0_r(17),
      R => '0'
    );
\wdata0_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(18),
      Q => wdata0_r(18),
      R => '0'
    );
\wdata0_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(19),
      Q => wdata0_r(19),
      R => '0'
    );
\wdata0_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(1),
      Q => wdata0_r(1),
      R => '0'
    );
\wdata0_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(20),
      Q => wdata0_r(20),
      R => '0'
    );
\wdata0_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(21),
      Q => wdata0_r(21),
      R => '0'
    );
\wdata0_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(22),
      Q => wdata0_r(22),
      R => '0'
    );
\wdata0_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(23),
      Q => wdata0_r(23),
      R => '0'
    );
\wdata0_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(24),
      Q => wdata0_r(24),
      R => '0'
    );
\wdata0_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(25),
      Q => wdata0_r(25),
      R => '0'
    );
\wdata0_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(26),
      Q => wdata0_r(26),
      R => '0'
    );
\wdata0_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(27),
      Q => wdata0_r(27),
      R => '0'
    );
\wdata0_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(28),
      Q => wdata0_r(28),
      R => '0'
    );
\wdata0_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(29),
      Q => wdata0_r(29),
      R => '0'
    );
\wdata0_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(2),
      Q => wdata0_r(2),
      R => '0'
    );
\wdata0_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(30),
      Q => wdata0_r(30),
      R => '0'
    );
\wdata0_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(31),
      Q => wdata0_r(31),
      R => '0'
    );
\wdata0_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(32),
      Q => wdata0_r(32),
      R => '0'
    );
\wdata0_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(33),
      Q => wdata0_r(33),
      R => '0'
    );
\wdata0_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(34),
      Q => wdata0_r(34),
      R => '0'
    );
\wdata0_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(35),
      Q => wdata0_r(35),
      R => '0'
    );
\wdata0_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(36),
      Q => wdata0_r(36),
      R => '0'
    );
\wdata0_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(37),
      Q => wdata0_r(37),
      R => '0'
    );
\wdata0_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(38),
      Q => wdata0_r(38),
      R => '0'
    );
\wdata0_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(39),
      Q => wdata0_r(39),
      R => '0'
    );
\wdata0_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(3),
      Q => wdata0_r(3),
      R => '0'
    );
\wdata0_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(40),
      Q => wdata0_r(40),
      R => '0'
    );
\wdata0_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(41),
      Q => wdata0_r(41),
      R => '0'
    );
\wdata0_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(42),
      Q => wdata0_r(42),
      R => '0'
    );
\wdata0_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(43),
      Q => wdata0_r(43),
      R => '0'
    );
\wdata0_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(44),
      Q => wdata0_r(44),
      R => '0'
    );
\wdata0_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(45),
      Q => wdata0_r(45),
      R => '0'
    );
\wdata0_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(46),
      Q => wdata0_r(46),
      R => '0'
    );
\wdata0_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(47),
      Q => wdata0_r(47),
      R => '0'
    );
\wdata0_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(48),
      Q => wdata0_r(48),
      R => '0'
    );
\wdata0_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(49),
      Q => wdata0_r(49),
      R => '0'
    );
\wdata0_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(4),
      Q => wdata0_r(4),
      R => '0'
    );
\wdata0_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(50),
      Q => wdata0_r(50),
      R => '0'
    );
\wdata0_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(51),
      Q => wdata0_r(51),
      R => '0'
    );
\wdata0_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(52),
      Q => wdata0_r(52),
      R => '0'
    );
\wdata0_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(53),
      Q => wdata0_r(53),
      R => '0'
    );
\wdata0_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(54),
      Q => wdata0_r(54),
      R => '0'
    );
\wdata0_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(55),
      Q => wdata0_r(55),
      R => '0'
    );
\wdata0_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(56),
      Q => wdata0_r(56),
      R => '0'
    );
\wdata0_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(57),
      Q => wdata0_r(57),
      R => '0'
    );
\wdata0_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(58),
      Q => wdata0_r(58),
      R => '0'
    );
\wdata0_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(59),
      Q => wdata0_r(59),
      R => '0'
    );
\wdata0_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(5),
      Q => wdata0_r(5),
      R => '0'
    );
\wdata0_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(60),
      Q => wdata0_r(60),
      R => '0'
    );
\wdata0_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(61),
      Q => wdata0_r(61),
      R => '0'
    );
\wdata0_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(62),
      Q => wdata0_r(62),
      R => '0'
    );
\wdata0_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(63),
      Q => wdata0_r(63),
      R => '0'
    );
\wdata0_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(6),
      Q => wdata0_r(6),
      R => '0'
    );
\wdata0_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(7),
      Q => wdata0_r(7),
      R => '0'
    );
\wdata0_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(8),
      Q => wdata0_r(8),
      R => '0'
    );
\wdata0_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata0_r0,
      D => wdata0(9),
      Q => wdata0_r(9),
      R => '0'
    );
\wdata1_r[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ce1,
      I1 => we1,
      O => wdata1_r0
    );
\wdata1_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(0),
      Q => wdata1_r(0),
      R => '0'
    );
\wdata1_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(10),
      Q => wdata1_r(10),
      R => '0'
    );
\wdata1_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(11),
      Q => wdata1_r(11),
      R => '0'
    );
\wdata1_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(12),
      Q => wdata1_r(12),
      R => '0'
    );
\wdata1_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(13),
      Q => wdata1_r(13),
      R => '0'
    );
\wdata1_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(14),
      Q => wdata1_r(14),
      R => '0'
    );
\wdata1_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(15),
      Q => wdata1_r(15),
      R => '0'
    );
\wdata1_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(16),
      Q => wdata1_r(16),
      R => '0'
    );
\wdata1_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(17),
      Q => wdata1_r(17),
      R => '0'
    );
\wdata1_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(18),
      Q => wdata1_r(18),
      R => '0'
    );
\wdata1_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(19),
      Q => wdata1_r(19),
      R => '0'
    );
\wdata1_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(1),
      Q => wdata1_r(1),
      R => '0'
    );
\wdata1_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(20),
      Q => wdata1_r(20),
      R => '0'
    );
\wdata1_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(21),
      Q => wdata1_r(21),
      R => '0'
    );
\wdata1_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(22),
      Q => wdata1_r(22),
      R => '0'
    );
\wdata1_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(23),
      Q => wdata1_r(23),
      R => '0'
    );
\wdata1_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(24),
      Q => wdata1_r(24),
      R => '0'
    );
\wdata1_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(25),
      Q => wdata1_r(25),
      R => '0'
    );
\wdata1_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(26),
      Q => wdata1_r(26),
      R => '0'
    );
\wdata1_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(27),
      Q => wdata1_r(27),
      R => '0'
    );
\wdata1_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(28),
      Q => wdata1_r(28),
      R => '0'
    );
\wdata1_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(29),
      Q => wdata1_r(29),
      R => '0'
    );
\wdata1_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(2),
      Q => wdata1_r(2),
      R => '0'
    );
\wdata1_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(30),
      Q => wdata1_r(30),
      R => '0'
    );
\wdata1_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(31),
      Q => wdata1_r(31),
      R => '0'
    );
\wdata1_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(32),
      Q => wdata1_r(32),
      R => '0'
    );
\wdata1_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(33),
      Q => wdata1_r(33),
      R => '0'
    );
\wdata1_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(34),
      Q => wdata1_r(34),
      R => '0'
    );
\wdata1_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(35),
      Q => wdata1_r(35),
      R => '0'
    );
\wdata1_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(36),
      Q => wdata1_r(36),
      R => '0'
    );
\wdata1_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(37),
      Q => wdata1_r(37),
      R => '0'
    );
\wdata1_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(38),
      Q => wdata1_r(38),
      R => '0'
    );
\wdata1_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(39),
      Q => wdata1_r(39),
      R => '0'
    );
\wdata1_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(3),
      Q => wdata1_r(3),
      R => '0'
    );
\wdata1_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(40),
      Q => wdata1_r(40),
      R => '0'
    );
\wdata1_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(41),
      Q => wdata1_r(41),
      R => '0'
    );
\wdata1_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(42),
      Q => wdata1_r(42),
      R => '0'
    );
\wdata1_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(43),
      Q => wdata1_r(43),
      R => '0'
    );
\wdata1_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(44),
      Q => wdata1_r(44),
      R => '0'
    );
\wdata1_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(45),
      Q => wdata1_r(45),
      R => '0'
    );
\wdata1_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(46),
      Q => wdata1_r(46),
      R => '0'
    );
\wdata1_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(47),
      Q => wdata1_r(47),
      R => '0'
    );
\wdata1_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(48),
      Q => wdata1_r(48),
      R => '0'
    );
\wdata1_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(49),
      Q => wdata1_r(49),
      R => '0'
    );
\wdata1_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(4),
      Q => wdata1_r(4),
      R => '0'
    );
\wdata1_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(50),
      Q => wdata1_r(50),
      R => '0'
    );
\wdata1_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(51),
      Q => wdata1_r(51),
      R => '0'
    );
\wdata1_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(52),
      Q => wdata1_r(52),
      R => '0'
    );
\wdata1_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(53),
      Q => wdata1_r(53),
      R => '0'
    );
\wdata1_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(54),
      Q => wdata1_r(54),
      R => '0'
    );
\wdata1_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(55),
      Q => wdata1_r(55),
      R => '0'
    );
\wdata1_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(56),
      Q => wdata1_r(56),
      R => '0'
    );
\wdata1_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(57),
      Q => wdata1_r(57),
      R => '0'
    );
\wdata1_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(58),
      Q => wdata1_r(58),
      R => '0'
    );
\wdata1_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(59),
      Q => wdata1_r(59),
      R => '0'
    );
\wdata1_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(5),
      Q => wdata1_r(5),
      R => '0'
    );
\wdata1_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(60),
      Q => wdata1_r(60),
      R => '0'
    );
\wdata1_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(61),
      Q => wdata1_r(61),
      R => '0'
    );
\wdata1_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(62),
      Q => wdata1_r(62),
      R => '0'
    );
\wdata1_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(63),
      Q => wdata1_r(63),
      R => '0'
    );
\wdata1_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(6),
      Q => wdata1_r(6),
      R => '0'
    );
\wdata1_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(7),
      Q => wdata1_r(7),
      R => '0'
    );
\wdata1_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(8),
      Q => wdata1_r(8),
      R => '0'
    );
\wdata1_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wdata1_r0,
      D => wdata1(9),
      Q => wdata1_r(9),
      R => '0'
    );
xpm_memory_tdpram_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram
     port map (
      addra(11 downto 9) => B"000",
      addra(8 downto 0) => addr0(8 downto 0),
      addrb(11 downto 9) => B"000",
      addrb(8 downto 0) => addr1(8 downto 0),
      clka => clk,
      clkb => '0',
      dbiterra => NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED,
      dina(63 downto 0) => wdata0(63 downto 0),
      dinb(63 downto 0) => wdata1(63 downto 0),
      douta(63 downto 0) => i_rdata0(63 downto 0),
      doutb(63 downto 0) => i_rdata1(63 downto 0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uramx16_uram_2w_2r_0_0,uram_2w_2r,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uram_2w_2r,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uramx16_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r
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
