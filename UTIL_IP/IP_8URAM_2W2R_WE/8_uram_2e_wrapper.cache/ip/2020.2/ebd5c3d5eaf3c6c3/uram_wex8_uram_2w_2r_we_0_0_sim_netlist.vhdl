-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Mar  2 16:20:11 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uram_wex8_uram_2w_2r_we_0_0_sim_netlist.vhdl
-- Design      : uram_wex8_uram_2w_2r_we_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we is
  port (
    rdata0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    ce0 : in STD_LOGIC;
    ce1 : in STD_LOGIC;
    addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wdata0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    we0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we is
  signal RST_A0 : STD_LOGIC;
  signal URAM288_BASE_inst_i_4_n_0 : STD_LOGIC;
  signal URAM288_BASE_inst_i_5_n_0 : STD_LOGIC;
  signal fwd_01 : STD_LOGIC;
  signal fwd_01_1d : STD_LOGIC;
  signal fwd_10 : STD_LOGIC;
  signal fwd_10_1d : STD_LOGIC;
  signal fwd_10_1d_i_3_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_4_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_5_n_0 : STD_LOGIC;
  signal fwd_10_1d_i_6_n_0 : STD_LOGIC;
  signal i_rdata0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal i_rdata1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal rw_bit0 : STD_LOGIC;
  signal rw_bit1 : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 64 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of URAM288_BASE_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fwd_01_1d_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of fwd_10_1d_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata0[0]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rdata0[10]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdata0[11]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdata0[12]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdata0[13]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdata0[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdata0[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rdata0[16]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata0[17]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rdata0[18]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdata0[19]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rdata0[1]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rdata0[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdata0[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rdata0[22]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdata0[23]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rdata0[24]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdata0[25]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rdata0[26]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdata0[27]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rdata0[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rdata0[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rdata0[2]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rdata0[30]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rdata0[31]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rdata0[32]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdata0[33]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rdata0[34]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rdata0[35]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rdata0[36]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata0[37]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata0[38]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rdata0[39]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rdata0[3]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rdata0[40]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata0[41]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rdata0[42]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata0[43]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rdata0[44]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata0[45]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rdata0[46]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata0[47]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata0[48]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata0[49]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rdata0[4]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rdata0[50]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata0[51]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rdata0[52]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata0[53]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rdata0[54]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata0[55]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata0[56]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata0[57]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata0[58]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata0[59]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata0[5]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rdata0[60]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata0[61]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata0[62]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata0[63]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata0[6]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rdata0[7]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rdata0[8]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rdata0[9]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rdata1[0]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata1[10]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rdata1[11]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rdata1[12]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata1[13]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata1[14]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rdata1[15]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rdata1[16]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rdata1[17]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rdata1[18]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rdata1[19]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rdata1[1]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata1[20]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata1[21]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata1[22]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdata1[23]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rdata1[24]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rdata1[25]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rdata1[26]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rdata1[27]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rdata1[28]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rdata1[29]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rdata1[2]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rdata1[30]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rdata1[31]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rdata1[32]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rdata1[33]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rdata1[34]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rdata1[35]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rdata1[36]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rdata1[37]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rdata1[38]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdata1[39]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rdata1[3]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rdata1[40]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rdata1[41]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rdata1[42]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rdata1[43]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rdata1[44]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rdata1[45]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rdata1[46]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdata1[47]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rdata1[48]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rdata1[49]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rdata1[4]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rdata1[50]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rdata1[51]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rdata1[52]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdata1[53]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rdata1[54]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rdata1[55]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rdata1[56]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdata1[57]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rdata1[58]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdata1[59]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdata1[5]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rdata1[60]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rdata1[61]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rdata1[62]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata1[63]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rdata1[6]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rdata1[7]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rdata1[8]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rdata1[9]_INST_0\ : label is "soft_lutpair60";
begin
URAM288_BASE_inst: unisim.vcomponents.URAM288_BASE
    generic map(
      AUTO_SLEEP_LATENCY => 8,
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      EN_AUTO_SLEEP_MODE => "FALSE",
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
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 12) => B"00000000000",
      ADDR_A(11 downto 0) => addr0(11 downto 0),
      ADDR_B(22 downto 12) => B"00000000000",
      ADDR_B(11 downto 0) => addr1(11 downto 0),
      BWE_A(8) => '0',
      BWE_A(7 downto 0) => we0(7 downto 0),
      BWE_B(8) => '0',
      BWE_B(7 downto 0) => we1(7 downto 0),
      CLK => clk,
      DBITERR_A => NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED,
      DBITERR_B => NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED,
      DIN_A(71 downto 64) => B"00000000",
      DIN_A(63 downto 0) => wdata0(63 downto 0),
      DIN_B(71 downto 64) => B"00000000",
      DIN_B(63 downto 0) => wdata1(63 downto 0),
      DOUT_A(71 downto 64) => NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED(71 downto 64),
      DOUT_A(63 downto 0) => i_rdata0(63 downto 0),
      DOUT_B(71 downto 64) => NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED(71 downto 64),
      DOUT_B(63 downto 0) => i_rdata1(63 downto 0),
      EN_A => ce0,
      EN_B => ce1,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '0',
      OREG_CE_B => '0',
      OREG_ECC_CE_A => '0',
      OREG_ECC_CE_B => '0',
      RDB_WR_A => rw_bit0,
      RDB_WR_B => rw_bit1,
      RST_A => RST_A0,
      RST_B => RST_A0,
      SBITERR_A => NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED,
      SBITERR_B => NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED,
      SLEEP => '0'
    );
URAM288_BASE_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => we0(0),
      I1 => we0(1),
      I2 => we0(2),
      I3 => we0(3),
      I4 => URAM288_BASE_inst_i_4_n_0,
      O => rw_bit0
    );
URAM288_BASE_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => we1(0),
      I1 => we1(1),
      I2 => we1(2),
      I3 => we1(3),
      I4 => URAM288_BASE_inst_i_5_n_0,
      O => rw_bit1
    );
URAM288_BASE_inst_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => RST_A0
    );
URAM288_BASE_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => we0(6),
      I1 => we0(7),
      I2 => we0(5),
      I3 => we0(4),
      O => URAM288_BASE_inst_i_4_n_0
    );
URAM288_BASE_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => we1(6),
      I1 => we1(7),
      I2 => we1(5),
      I3 => we1(4),
      O => URAM288_BASE_inst_i_5_n_0
    );
fwd_01_1d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rw_bit1,
      I2 => rw_bit0,
      O => fwd_01
    );
fwd_01_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fwd_01,
      Q => fwd_01_1d,
      R => '0'
    );
fwd_10_1d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rw_bit0,
      I2 => rw_bit1,
      O => fwd_10
    );
fwd_10_1d_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => fwd_10_1d_i_3_n_0,
      I1 => fwd_10_1d_i_4_n_0,
      I2 => fwd_10_1d_i_5_n_0,
      I3 => fwd_10_1d_i_6_n_0,
      I4 => ce0,
      I5 => ce1,
      O => p_1_in
    );
fwd_10_1d_i_3: unisim.vcomponents.LUT6
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
      O => fwd_10_1d_i_3_n_0
    );
fwd_10_1d_i_4: unisim.vcomponents.LUT6
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
      O => fwd_10_1d_i_4_n_0
    );
fwd_10_1d_i_5: unisim.vcomponents.LUT6
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
      O => fwd_10_1d_i_5_n_0
    );
fwd_10_1d_i_6: unisim.vcomponents.LUT6
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
      O => fwd_10_1d_i_6_n_0
    );
fwd_10_1d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fwd_10,
      Q => fwd_10_1d,
      R => '0'
    );
\rdata0[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(0),
      I1 => fwd_10_1d,
      O => rdata0(0)
    );
\rdata0[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(10),
      I1 => fwd_10_1d,
      O => rdata0(10)
    );
\rdata0[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(11),
      I1 => fwd_10_1d,
      O => rdata0(11)
    );
\rdata0[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(12),
      I1 => fwd_10_1d,
      O => rdata0(12)
    );
\rdata0[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(13),
      I1 => fwd_10_1d,
      O => rdata0(13)
    );
\rdata0[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(14),
      I1 => fwd_10_1d,
      O => rdata0(14)
    );
\rdata0[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(15),
      I1 => fwd_10_1d,
      O => rdata0(15)
    );
\rdata0[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(16),
      I1 => fwd_10_1d,
      O => rdata0(16)
    );
\rdata0[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(17),
      I1 => fwd_10_1d,
      O => rdata0(17)
    );
\rdata0[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(18),
      I1 => fwd_10_1d,
      O => rdata0(18)
    );
\rdata0[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(19),
      I1 => fwd_10_1d,
      O => rdata0(19)
    );
\rdata0[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(1),
      I1 => fwd_10_1d,
      O => rdata0(1)
    );
\rdata0[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(20),
      I1 => fwd_10_1d,
      O => rdata0(20)
    );
\rdata0[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(21),
      I1 => fwd_10_1d,
      O => rdata0(21)
    );
\rdata0[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(22),
      I1 => fwd_10_1d,
      O => rdata0(22)
    );
\rdata0[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(23),
      I1 => fwd_10_1d,
      O => rdata0(23)
    );
\rdata0[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(24),
      I1 => fwd_10_1d,
      O => rdata0(24)
    );
\rdata0[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(25),
      I1 => fwd_10_1d,
      O => rdata0(25)
    );
\rdata0[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(26),
      I1 => fwd_10_1d,
      O => rdata0(26)
    );
\rdata0[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(27),
      I1 => fwd_10_1d,
      O => rdata0(27)
    );
\rdata0[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(28),
      I1 => fwd_10_1d,
      O => rdata0(28)
    );
\rdata0[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(29),
      I1 => fwd_10_1d,
      O => rdata0(29)
    );
\rdata0[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(2),
      I1 => fwd_10_1d,
      O => rdata0(2)
    );
\rdata0[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(30),
      I1 => fwd_10_1d,
      O => rdata0(30)
    );
\rdata0[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(31),
      I1 => fwd_10_1d,
      O => rdata0(31)
    );
\rdata0[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(32),
      I1 => fwd_10_1d,
      O => rdata0(32)
    );
\rdata0[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(33),
      I1 => fwd_10_1d,
      O => rdata0(33)
    );
\rdata0[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(34),
      I1 => fwd_10_1d,
      O => rdata0(34)
    );
\rdata0[35]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(35),
      I1 => fwd_10_1d,
      O => rdata0(35)
    );
\rdata0[36]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(36),
      I1 => fwd_10_1d,
      O => rdata0(36)
    );
\rdata0[37]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(37),
      I1 => fwd_10_1d,
      O => rdata0(37)
    );
\rdata0[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(38),
      I1 => fwd_10_1d,
      O => rdata0(38)
    );
\rdata0[39]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(39),
      I1 => fwd_10_1d,
      O => rdata0(39)
    );
\rdata0[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(3),
      I1 => fwd_10_1d,
      O => rdata0(3)
    );
\rdata0[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(40),
      I1 => fwd_10_1d,
      O => rdata0(40)
    );
\rdata0[41]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(41),
      I1 => fwd_10_1d,
      O => rdata0(41)
    );
\rdata0[42]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(42),
      I1 => fwd_10_1d,
      O => rdata0(42)
    );
\rdata0[43]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(43),
      I1 => fwd_10_1d,
      O => rdata0(43)
    );
\rdata0[44]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(44),
      I1 => fwd_10_1d,
      O => rdata0(44)
    );
\rdata0[45]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(45),
      I1 => fwd_10_1d,
      O => rdata0(45)
    );
\rdata0[46]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(46),
      I1 => fwd_10_1d,
      O => rdata0(46)
    );
\rdata0[47]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(47),
      I1 => fwd_10_1d,
      O => rdata0(47)
    );
\rdata0[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(48),
      I1 => fwd_10_1d,
      O => rdata0(48)
    );
\rdata0[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(49),
      I1 => fwd_10_1d,
      O => rdata0(49)
    );
\rdata0[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(4),
      I1 => fwd_10_1d,
      O => rdata0(4)
    );
\rdata0[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(50),
      I1 => fwd_10_1d,
      O => rdata0(50)
    );
\rdata0[51]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(51),
      I1 => fwd_10_1d,
      O => rdata0(51)
    );
\rdata0[52]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(52),
      I1 => fwd_10_1d,
      O => rdata0(52)
    );
\rdata0[53]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(53),
      I1 => fwd_10_1d,
      O => rdata0(53)
    );
\rdata0[54]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(54),
      I1 => fwd_10_1d,
      O => rdata0(54)
    );
\rdata0[55]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(55),
      I1 => fwd_10_1d,
      O => rdata0(55)
    );
\rdata0[56]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(56),
      I1 => fwd_10_1d,
      O => rdata0(56)
    );
\rdata0[57]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(57),
      I1 => fwd_10_1d,
      O => rdata0(57)
    );
\rdata0[58]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(58),
      I1 => fwd_10_1d,
      O => rdata0(58)
    );
\rdata0[59]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(59),
      I1 => fwd_10_1d,
      O => rdata0(59)
    );
\rdata0[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(5),
      I1 => fwd_10_1d,
      O => rdata0(5)
    );
\rdata0[60]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(60),
      I1 => fwd_10_1d,
      O => rdata0(60)
    );
\rdata0[61]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(61),
      I1 => fwd_10_1d,
      O => rdata0(61)
    );
\rdata0[62]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(62),
      I1 => fwd_10_1d,
      O => rdata0(62)
    );
\rdata0[63]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(63),
      I1 => fwd_10_1d,
      O => rdata0(63)
    );
\rdata0[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(6),
      I1 => fwd_10_1d,
      O => rdata0(6)
    );
\rdata0[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(7),
      I1 => fwd_10_1d,
      O => rdata0(7)
    );
\rdata0[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(8),
      I1 => fwd_10_1d,
      O => rdata0(8)
    );
\rdata0[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata0(9),
      I1 => fwd_10_1d,
      O => rdata0(9)
    );
\rdata1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(0),
      I1 => fwd_01_1d,
      O => rdata1(0)
    );
\rdata1[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(10),
      I1 => fwd_01_1d,
      O => rdata1(10)
    );
\rdata1[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(11),
      I1 => fwd_01_1d,
      O => rdata1(11)
    );
\rdata1[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(12),
      I1 => fwd_01_1d,
      O => rdata1(12)
    );
\rdata1[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(13),
      I1 => fwd_01_1d,
      O => rdata1(13)
    );
\rdata1[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(14),
      I1 => fwd_01_1d,
      O => rdata1(14)
    );
\rdata1[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(15),
      I1 => fwd_01_1d,
      O => rdata1(15)
    );
\rdata1[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(16),
      I1 => fwd_01_1d,
      O => rdata1(16)
    );
\rdata1[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(17),
      I1 => fwd_01_1d,
      O => rdata1(17)
    );
\rdata1[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(18),
      I1 => fwd_01_1d,
      O => rdata1(18)
    );
\rdata1[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(19),
      I1 => fwd_01_1d,
      O => rdata1(19)
    );
\rdata1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(1),
      I1 => fwd_01_1d,
      O => rdata1(1)
    );
\rdata1[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(20),
      I1 => fwd_01_1d,
      O => rdata1(20)
    );
\rdata1[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(21),
      I1 => fwd_01_1d,
      O => rdata1(21)
    );
\rdata1[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(22),
      I1 => fwd_01_1d,
      O => rdata1(22)
    );
\rdata1[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(23),
      I1 => fwd_01_1d,
      O => rdata1(23)
    );
\rdata1[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(24),
      I1 => fwd_01_1d,
      O => rdata1(24)
    );
\rdata1[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(25),
      I1 => fwd_01_1d,
      O => rdata1(25)
    );
\rdata1[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(26),
      I1 => fwd_01_1d,
      O => rdata1(26)
    );
\rdata1[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(27),
      I1 => fwd_01_1d,
      O => rdata1(27)
    );
\rdata1[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(28),
      I1 => fwd_01_1d,
      O => rdata1(28)
    );
\rdata1[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(29),
      I1 => fwd_01_1d,
      O => rdata1(29)
    );
\rdata1[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(2),
      I1 => fwd_01_1d,
      O => rdata1(2)
    );
\rdata1[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(30),
      I1 => fwd_01_1d,
      O => rdata1(30)
    );
\rdata1[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(31),
      I1 => fwd_01_1d,
      O => rdata1(31)
    );
\rdata1[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(32),
      I1 => fwd_01_1d,
      O => rdata1(32)
    );
\rdata1[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(33),
      I1 => fwd_01_1d,
      O => rdata1(33)
    );
\rdata1[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(34),
      I1 => fwd_01_1d,
      O => rdata1(34)
    );
\rdata1[35]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(35),
      I1 => fwd_01_1d,
      O => rdata1(35)
    );
\rdata1[36]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(36),
      I1 => fwd_01_1d,
      O => rdata1(36)
    );
\rdata1[37]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(37),
      I1 => fwd_01_1d,
      O => rdata1(37)
    );
\rdata1[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(38),
      I1 => fwd_01_1d,
      O => rdata1(38)
    );
\rdata1[39]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(39),
      I1 => fwd_01_1d,
      O => rdata1(39)
    );
\rdata1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(3),
      I1 => fwd_01_1d,
      O => rdata1(3)
    );
\rdata1[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(40),
      I1 => fwd_01_1d,
      O => rdata1(40)
    );
\rdata1[41]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(41),
      I1 => fwd_01_1d,
      O => rdata1(41)
    );
\rdata1[42]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(42),
      I1 => fwd_01_1d,
      O => rdata1(42)
    );
\rdata1[43]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(43),
      I1 => fwd_01_1d,
      O => rdata1(43)
    );
\rdata1[44]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(44),
      I1 => fwd_01_1d,
      O => rdata1(44)
    );
\rdata1[45]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(45),
      I1 => fwd_01_1d,
      O => rdata1(45)
    );
\rdata1[46]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(46),
      I1 => fwd_01_1d,
      O => rdata1(46)
    );
\rdata1[47]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(47),
      I1 => fwd_01_1d,
      O => rdata1(47)
    );
\rdata1[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(48),
      I1 => fwd_01_1d,
      O => rdata1(48)
    );
\rdata1[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(49),
      I1 => fwd_01_1d,
      O => rdata1(49)
    );
\rdata1[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(4),
      I1 => fwd_01_1d,
      O => rdata1(4)
    );
\rdata1[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(50),
      I1 => fwd_01_1d,
      O => rdata1(50)
    );
\rdata1[51]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(51),
      I1 => fwd_01_1d,
      O => rdata1(51)
    );
\rdata1[52]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(52),
      I1 => fwd_01_1d,
      O => rdata1(52)
    );
\rdata1[53]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(53),
      I1 => fwd_01_1d,
      O => rdata1(53)
    );
\rdata1[54]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(54),
      I1 => fwd_01_1d,
      O => rdata1(54)
    );
\rdata1[55]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(55),
      I1 => fwd_01_1d,
      O => rdata1(55)
    );
\rdata1[56]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(56),
      I1 => fwd_01_1d,
      O => rdata1(56)
    );
\rdata1[57]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(57),
      I1 => fwd_01_1d,
      O => rdata1(57)
    );
\rdata1[58]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(58),
      I1 => fwd_01_1d,
      O => rdata1(58)
    );
\rdata1[59]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(59),
      I1 => fwd_01_1d,
      O => rdata1(59)
    );
\rdata1[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(5),
      I1 => fwd_01_1d,
      O => rdata1(5)
    );
\rdata1[60]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(60),
      I1 => fwd_01_1d,
      O => rdata1(60)
    );
\rdata1[61]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(61),
      I1 => fwd_01_1d,
      O => rdata1(61)
    );
\rdata1[62]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(62),
      I1 => fwd_01_1d,
      O => rdata1(62)
    );
\rdata1[63]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(63),
      I1 => fwd_01_1d,
      O => rdata1(63)
    );
\rdata1[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(6),
      I1 => fwd_01_1d,
      O => rdata1(6)
    );
\rdata1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(7),
      I1 => fwd_01_1d,
      O => rdata1(7)
    );
\rdata1[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(8),
      I1 => fwd_01_1d,
      O => rdata1(8)
    );
\rdata1[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rdata1(9),
      I1 => fwd_01_1d,
      O => rdata1(9)
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
    we0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uram_wex8_uram_2w_2r_we_0_0,uram_2w_2r_we,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uram_2w_2r_we,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uram_wex8_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we
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
      we0(7 downto 0) => we0(7 downto 0),
      we1(7 downto 0) => we1(7 downto 0)
    );
end STRUCTURE;
