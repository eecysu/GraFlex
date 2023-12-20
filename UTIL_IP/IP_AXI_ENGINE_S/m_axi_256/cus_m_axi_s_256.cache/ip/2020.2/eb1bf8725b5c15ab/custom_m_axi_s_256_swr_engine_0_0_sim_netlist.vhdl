-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 29 18:06:20 2022
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_s_256_swr_engine_0_0_sim_netlist.vhdl
-- Design      : custom_m_axi_s_256_swr_engine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    \count_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r : out STD_LOGIC;
    is_zero_r_reg_1 : out STD_LOGIC;
    \count_r_reg[3]_0\ : out STD_LOGIC;
    is_zero_r_reg_2 : out STD_LOGIC;
    is_zero_r_reg_3 : out STD_LOGIC;
    clear : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_r_reg[1]_0\ : in STD_LOGIC;
    w_running_reg : in STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    w_running : in STD_LOGIC;
    w_running_reg_0 : in STD_LOGIC;
    wfirst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \^count_r_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of is_zero_r_i_10 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of is_zero_r_i_20 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of wfirst_i_1 : label is "soft_lutpair6";
begin
  \count_r_reg[0]_0\(0) <= \^count_r_reg[0]_0\(0);
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
\count_r[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => w_running_reg,
      I1 => m_axi_WREADY,
      I2 => s_axis_tvalid,
      I3 => w_running,
      I4 => \^is_zero_r_reg_0\,
      O => is_zero_r
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Q(0),
      I1 => \count_r_reg[1]_0\,
      I2 => \^count_r_reg[0]_0\(0),
      I3 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1_n_0\
    );
\count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => Q(1),
      I1 => \count_r_reg[1]_0\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \^count_r_reg[0]_0\(0),
      O => \count_r[2]_i_1_n_0\
    );
\count_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => Q(2),
      I1 => \count_r_reg[1]_0\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r_reg_n_0_[2]\,
      I4 => \^count_r_reg[0]_0\(0),
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[3]_i_1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \^count_r_reg[0]_0\(0),
      S => clear
    );
\count_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[1]_i_1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      S => clear
    );
\count_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[2]_i_1_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      S => clear
    );
\count_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[3]_i_1_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      S => clear
    );
is_zero_r_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axi_WREADY,
      I1 => s_axis_tvalid,
      I2 => w_running,
      O => p_6_in
    );
is_zero_r_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => w_running,
      I2 => s_axis_tvalid,
      I3 => m_axi_WREADY,
      O => is_zero_r_reg_1
    );
is_zero_r_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => p_6_in,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \^count_r_reg[0]_0\(0),
      O => \count_r_reg[3]_0\
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => is_zero_r_reg_4,
      Q => \^is_zero_r_reg_0\,
      R => clear
    );
w_running_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4CCCCCCC"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => w_running,
      I2 => s_axis_tvalid,
      I3 => m_axi_WREADY,
      I4 => w_running_reg_0,
      I5 => w_running_reg,
      O => is_zero_r_reg_2
    );
wfirst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => m_axi_WREADY,
      I2 => s_axis_tvalid,
      I3 => w_running,
      I4 => wfirst,
      O => is_zero_r_reg_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  port (
    clear : out STD_LOGIC;
    start_reg : out STD_LOGIC;
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    \is_zero_r_i_5__0_0\ : in STD_LOGIC;
    \count_r_reg[0]_0\ : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    start : in STD_LOGIC;
    \count_r_reg[23]_0\ : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    \m_axi_AWLEN[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  signal \^clear\ : STD_LOGIC;
  signal \count_r[0]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__0_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal \count_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal \is_zero_r_i_10__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_11__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_12__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_13__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_14__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_15__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_1__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_7__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_8__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_9__1_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \^start_reg\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_count_r_reg[48]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__0\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_AWLEN[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[3]_INST_0\ : label is "soft_lutpair2";
begin
  clear <= \^clear\;
  start_reg <= \^start_reg\;
\addr[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => start,
      I1 => \count_r_reg[0]_0\,
      I2 => m_axi_AWREADY,
      O => \^start_reg\
    );
awvalid_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^clear\
    );
\count_r[0]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => Q(7),
      I2 => start,
      O => \count_r[0]_i_10__1_n_0\
    );
\count_r[0]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => Q(6),
      I2 => start,
      O => \count_r[0]_i_11__0_n_0\
    );
\count_r[0]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => Q(5),
      I2 => start,
      O => \count_r[0]_i_12__0_n_0\
    );
\count_r[0]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => Q(4),
      I2 => start,
      O => \count_r[0]_i_13__0_n_0\
    );
\count_r[0]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => Q(3),
      I2 => start,
      O => \count_r[0]_i_14__0_n_0\
    );
\count_r[0]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => Q(2),
      I2 => start,
      O => \count_r[0]_i_15__0_n_0\
    );
\count_r[0]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => Q(1),
      I2 => start,
      O => \count_r[0]_i_16__0_n_0\
    );
\count_r[0]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => Q(0),
      I2 => start,
      O => \count_r[0]_i_17__0_n_0\
    );
\count_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => start,
      I2 => count_r_reg(7),
      O => \count_r[0]_i_2_n_0\
    );
\count_r[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => start,
      I2 => count_r_reg(6),
      O => \count_r[0]_i_3__0_n_0\
    );
\count_r[0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => start,
      I2 => count_r_reg(5),
      O => \count_r[0]_i_4__0_n_0\
    );
\count_r[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => start,
      I2 => count_r_reg(4),
      O => \count_r[0]_i_5__0_n_0\
    );
\count_r[0]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => start,
      I2 => count_r_reg(3),
      O => \count_r[0]_i_6__0_n_0\
    );
\count_r[0]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => start,
      I2 => count_r_reg(2),
      O => \count_r[0]_i_7__0_n_0\
    );
\count_r[0]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => start,
      I2 => count_r_reg(1),
      O => \count_r[0]_i_8__0_n_0\
    );
\count_r[0]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => start,
      I2 => count_r_reg(0),
      O => \count_r[0]_i_9__0_n_0\
    );
\count_r[16]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_10__0_n_0\
    );
\count_r[16]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_11__0_n_0\
    );
\count_r[16]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_12__0_n_0\
    );
\count_r[16]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_13__0_n_0\
    );
\count_r[16]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_14__0_n_0\
    );
\count_r[16]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[16]_i_15__0_n_0\
    );
\count_r[16]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => Q(12),
      I2 => start,
      O => \count_r[16]_i_16__0_n_0\
    );
\count_r[16]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => Q(12),
      I2 => start,
      O => \count_r[16]_i_17__0_n_0\
    );
\count_r[16]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(23),
      O => \count_r[16]_i_2__0_n_0\
    );
\count_r[16]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(22),
      O => \count_r[16]_i_3__0_n_0\
    );
\count_r[16]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(21),
      O => \count_r[16]_i_4__0_n_0\
    );
\count_r[16]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(20),
      O => \count_r[16]_i_5__0_n_0\
    );
\count_r[16]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(19),
      O => \count_r[16]_i_6__0_n_0\
    );
\count_r[16]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(18),
      O => \count_r[16]_i_7__0_n_0\
    );
\count_r[16]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(17),
      O => \count_r[16]_i_8__0_n_0\
    );
\count_r[16]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(16),
      O => \count_r[16]_i_9__0_n_0\
    );
\count_r[24]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_10__0_n_0\
    );
\count_r[24]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_11__0_n_0\
    );
\count_r[24]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_12__0_n_0\
    );
\count_r[24]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_13__0_n_0\
    );
\count_r[24]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_14__0_n_0\
    );
\count_r[24]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_15__0_n_0\
    );
\count_r[24]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_16__0_n_0\
    );
\count_r[24]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[24]_i_17__0_n_0\
    );
\count_r[24]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(31),
      O => \count_r[24]_i_2__0_n_0\
    );
\count_r[24]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(30),
      O => \count_r[24]_i_3__0_n_0\
    );
\count_r[24]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(29),
      O => \count_r[24]_i_4__0_n_0\
    );
\count_r[24]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(28),
      O => \count_r[24]_i_5__0_n_0\
    );
\count_r[24]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(27),
      O => \count_r[24]_i_6__0_n_0\
    );
\count_r[24]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(26),
      O => \count_r[24]_i_7__0_n_0\
    );
\count_r[24]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(25),
      O => \count_r[24]_i_8__0_n_0\
    );
\count_r[24]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(24),
      O => \count_r[24]_i_9__0_n_0\
    );
\count_r[32]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_10__0_n_0\
    );
\count_r[32]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_11__0_n_0\
    );
\count_r[32]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_12__0_n_0\
    );
\count_r[32]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_13__0_n_0\
    );
\count_r[32]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_14__0_n_0\
    );
\count_r[32]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_15__0_n_0\
    );
\count_r[32]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_16__0_n_0\
    );
\count_r[32]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[32]_i_17__0_n_0\
    );
\count_r[32]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(39),
      O => \count_r[32]_i_2__0_n_0\
    );
\count_r[32]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(38),
      O => \count_r[32]_i_3__0_n_0\
    );
\count_r[32]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(37),
      O => \count_r[32]_i_4__0_n_0\
    );
\count_r[32]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(36),
      O => \count_r[32]_i_5__0_n_0\
    );
\count_r[32]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(35),
      O => \count_r[32]_i_6__0_n_0\
    );
\count_r[32]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(34),
      O => \count_r[32]_i_7__0_n_0\
    );
\count_r[32]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(33),
      O => \count_r[32]_i_8__0_n_0\
    );
\count_r[32]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(32),
      O => \count_r[32]_i_9__0_n_0\
    );
\count_r[40]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_10__0_n_0\
    );
\count_r[40]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_11__0_n_0\
    );
\count_r[40]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_12__0_n_0\
    );
\count_r[40]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_13__0_n_0\
    );
\count_r[40]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_14__0_n_0\
    );
\count_r[40]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_15__0_n_0\
    );
\count_r[40]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_16__0_n_0\
    );
\count_r[40]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[40]_i_17__0_n_0\
    );
\count_r[40]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(47),
      O => \count_r[40]_i_2__0_n_0\
    );
\count_r[40]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(46),
      O => \count_r[40]_i_3__0_n_0\
    );
\count_r[40]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(45),
      O => \count_r[40]_i_4__0_n_0\
    );
\count_r[40]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(44),
      O => \count_r[40]_i_5__0_n_0\
    );
\count_r[40]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(43),
      O => \count_r[40]_i_6__0_n_0\
    );
\count_r[40]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(42),
      O => \count_r[40]_i_7__0_n_0\
    );
\count_r[40]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(41),
      O => \count_r[40]_i_8__0_n_0\
    );
\count_r[40]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(40),
      O => \count_r[40]_i_9__0_n_0\
    );
\count_r[48]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_10__0_n_0\
    );
\count_r[48]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_11__0_n_0\
    );
\count_r[48]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_12__0_n_0\
    );
\count_r[48]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_13__0_n_0\
    );
\count_r[48]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_14__0_n_0\
    );
\count_r[48]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(53),
      O => \count_r[48]_i_2__0_n_0\
    );
\count_r[48]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(52),
      O => \count_r[48]_i_3__0_n_0\
    );
\count_r[48]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(51),
      O => \count_r[48]_i_4__0_n_0\
    );
\count_r[48]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(50),
      O => \count_r[48]_i_5__0_n_0\
    );
\count_r[48]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(49),
      O => \count_r[48]_i_6__0_n_0\
    );
\count_r[48]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => start,
      I2 => count_r_reg(48),
      O => \count_r[48]_i_7__0_n_0\
    );
\count_r[48]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => count_r_reg(54),
      I2 => start,
      O => \count_r[48]_i_8__1_n_0\
    );
\count_r[48]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => \count_r_reg[23]_0\,
      I2 => start,
      O => \count_r[48]_i_9__0_n_0\
    );
\count_r[8]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_10__0_n_0\
    );
\count_r[8]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_11__0_n_0\
    );
\count_r[8]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_12__0_n_0\
    );
\count_r[8]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => Q(12),
      I2 => start,
      O => \count_r[8]_i_13__0_n_0\
    );
\count_r[8]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => Q(11),
      I2 => start,
      O => \count_r[8]_i_14__0_n_0\
    );
\count_r[8]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => Q(10),
      I2 => start,
      O => \count_r[8]_i_15__0_n_0\
    );
\count_r[8]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => Q(9),
      I2 => start,
      O => \count_r[8]_i_16__0_n_0\
    );
\count_r[8]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => Q(8),
      I2 => start,
      O => \count_r[8]_i_17__0_n_0\
    );
\count_r[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(15),
      O => \count_r[8]_i_2__0_n_0\
    );
\count_r[8]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(14),
      O => \count_r[8]_i_3__0_n_0\
    );
\count_r[8]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(13),
      O => \count_r[8]_i_4__0_n_0\
    );
\count_r[8]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => start,
      I2 => count_r_reg(12),
      O => \count_r[8]_i_5__0_n_0\
    );
\count_r[8]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => start,
      I2 => count_r_reg(11),
      O => \count_r[8]_i_6__0_n_0\
    );
\count_r[8]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => start,
      I2 => count_r_reg(10),
      O => \count_r[8]_i_7__0_n_0\
    );
\count_r[8]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => start,
      I2 => count_r_reg(9),
      O => \count_r[8]_i_8__0_n_0\
    );
\count_r[8]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => start,
      I2 => count_r_reg(8),
      O => \count_r[8]_i_9__0_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_15\,
      Q => count_r_reg(0),
      R => \^clear\
    );
\count_r_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_1_n_0\,
      CO(6) => \count_r_reg[0]_i_1_n_1\,
      CO(5) => \count_r_reg[0]_i_1_n_2\,
      CO(4) => \count_r_reg[0]_i_1_n_3\,
      CO(3) => \count_r_reg[0]_i_1_n_4\,
      CO(2) => \count_r_reg[0]_i_1_n_5\,
      CO(1) => \count_r_reg[0]_i_1_n_6\,
      CO(0) => \count_r_reg[0]_i_1_n_7\,
      DI(7) => \count_r[0]_i_2_n_0\,
      DI(6) => \count_r[0]_i_3__0_n_0\,
      DI(5) => \count_r[0]_i_4__0_n_0\,
      DI(4) => \count_r[0]_i_5__0_n_0\,
      DI(3) => \count_r[0]_i_6__0_n_0\,
      DI(2) => \count_r[0]_i_7__0_n_0\,
      DI(1) => \count_r[0]_i_8__0_n_0\,
      DI(0) => \count_r[0]_i_9__0_n_0\,
      O(7) => \count_r_reg[0]_i_1_n_8\,
      O(6) => \count_r_reg[0]_i_1_n_9\,
      O(5) => \count_r_reg[0]_i_1_n_10\,
      O(4) => \count_r_reg[0]_i_1_n_11\,
      O(3) => \count_r_reg[0]_i_1_n_12\,
      O(2) => \count_r_reg[0]_i_1_n_13\,
      O(1) => \count_r_reg[0]_i_1_n_14\,
      O(0) => \count_r_reg[0]_i_1_n_15\,
      S(7) => \count_r[0]_i_10__1_n_0\,
      S(6) => \count_r[0]_i_11__0_n_0\,
      S(5) => \count_r[0]_i_12__0_n_0\,
      S(4) => \count_r[0]_i_13__0_n_0\,
      S(3) => \count_r[0]_i_14__0_n_0\,
      S(2) => \count_r[0]_i_15__0_n_0\,
      S(1) => \count_r[0]_i_16__0_n_0\,
      S(0) => \count_r[0]_i_17__0_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_13\,
      Q => count_r_reg(10),
      R => \^clear\
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_12\,
      Q => count_r_reg(11),
      R => \^clear\
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_11\,
      Q => count_r_reg(12),
      R => \^clear\
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_10\,
      Q => count_r_reg(13),
      R => \^clear\
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_9\,
      Q => count_r_reg(14),
      R => \^clear\
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_8\,
      Q => count_r_reg(15),
      R => \^clear\
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_15\,
      Q => count_r_reg(16),
      R => \^clear\
    );
\count_r_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1__0_n_0\,
      CO(6) => \count_r_reg[16]_i_1__0_n_1\,
      CO(5) => \count_r_reg[16]_i_1__0_n_2\,
      CO(4) => \count_r_reg[16]_i_1__0_n_3\,
      CO(3) => \count_r_reg[16]_i_1__0_n_4\,
      CO(2) => \count_r_reg[16]_i_1__0_n_5\,
      CO(1) => \count_r_reg[16]_i_1__0_n_6\,
      CO(0) => \count_r_reg[16]_i_1__0_n_7\,
      DI(7) => \count_r[16]_i_2__0_n_0\,
      DI(6) => \count_r[16]_i_3__0_n_0\,
      DI(5) => \count_r[16]_i_4__0_n_0\,
      DI(4) => \count_r[16]_i_5__0_n_0\,
      DI(3) => \count_r[16]_i_6__0_n_0\,
      DI(2) => \count_r[16]_i_7__0_n_0\,
      DI(1) => \count_r[16]_i_8__0_n_0\,
      DI(0) => \count_r[16]_i_9__0_n_0\,
      O(7) => \count_r_reg[16]_i_1__0_n_8\,
      O(6) => \count_r_reg[16]_i_1__0_n_9\,
      O(5) => \count_r_reg[16]_i_1__0_n_10\,
      O(4) => \count_r_reg[16]_i_1__0_n_11\,
      O(3) => \count_r_reg[16]_i_1__0_n_12\,
      O(2) => \count_r_reg[16]_i_1__0_n_13\,
      O(1) => \count_r_reg[16]_i_1__0_n_14\,
      O(0) => \count_r_reg[16]_i_1__0_n_15\,
      S(7) => \count_r[16]_i_10__0_n_0\,
      S(6) => \count_r[16]_i_11__0_n_0\,
      S(5) => \count_r[16]_i_12__0_n_0\,
      S(4) => \count_r[16]_i_13__0_n_0\,
      S(3) => \count_r[16]_i_14__0_n_0\,
      S(2) => \count_r[16]_i_15__0_n_0\,
      S(1) => \count_r[16]_i_16__0_n_0\,
      S(0) => \count_r[16]_i_17__0_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_14\,
      Q => count_r_reg(17),
      R => \^clear\
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_13\,
      Q => count_r_reg(18),
      R => \^clear\
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_12\,
      Q => count_r_reg(19),
      R => \^clear\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_14\,
      Q => count_r_reg(1),
      R => \^clear\
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_11\,
      Q => count_r_reg(20),
      R => \^clear\
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_10\,
      Q => count_r_reg(21),
      R => \^clear\
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_9\,
      Q => count_r_reg(22),
      R => \^clear\
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[16]_i_1__0_n_8\,
      Q => count_r_reg(23),
      R => \^clear\
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_15\,
      Q => count_r_reg(24),
      R => \^clear\
    );
\count_r_reg[24]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1__0_n_0\,
      CO(6) => \count_r_reg[24]_i_1__0_n_1\,
      CO(5) => \count_r_reg[24]_i_1__0_n_2\,
      CO(4) => \count_r_reg[24]_i_1__0_n_3\,
      CO(3) => \count_r_reg[24]_i_1__0_n_4\,
      CO(2) => \count_r_reg[24]_i_1__0_n_5\,
      CO(1) => \count_r_reg[24]_i_1__0_n_6\,
      CO(0) => \count_r_reg[24]_i_1__0_n_7\,
      DI(7) => \count_r[24]_i_2__0_n_0\,
      DI(6) => \count_r[24]_i_3__0_n_0\,
      DI(5) => \count_r[24]_i_4__0_n_0\,
      DI(4) => \count_r[24]_i_5__0_n_0\,
      DI(3) => \count_r[24]_i_6__0_n_0\,
      DI(2) => \count_r[24]_i_7__0_n_0\,
      DI(1) => \count_r[24]_i_8__0_n_0\,
      DI(0) => \count_r[24]_i_9__0_n_0\,
      O(7) => \count_r_reg[24]_i_1__0_n_8\,
      O(6) => \count_r_reg[24]_i_1__0_n_9\,
      O(5) => \count_r_reg[24]_i_1__0_n_10\,
      O(4) => \count_r_reg[24]_i_1__0_n_11\,
      O(3) => \count_r_reg[24]_i_1__0_n_12\,
      O(2) => \count_r_reg[24]_i_1__0_n_13\,
      O(1) => \count_r_reg[24]_i_1__0_n_14\,
      O(0) => \count_r_reg[24]_i_1__0_n_15\,
      S(7) => \count_r[24]_i_10__0_n_0\,
      S(6) => \count_r[24]_i_11__0_n_0\,
      S(5) => \count_r[24]_i_12__0_n_0\,
      S(4) => \count_r[24]_i_13__0_n_0\,
      S(3) => \count_r[24]_i_14__0_n_0\,
      S(2) => \count_r[24]_i_15__0_n_0\,
      S(1) => \count_r[24]_i_16__0_n_0\,
      S(0) => \count_r[24]_i_17__0_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_14\,
      Q => count_r_reg(25),
      R => \^clear\
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_13\,
      Q => count_r_reg(26),
      R => \^clear\
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_12\,
      Q => count_r_reg(27),
      R => \^clear\
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_11\,
      Q => count_r_reg(28),
      R => \^clear\
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_10\,
      Q => count_r_reg(29),
      R => \^clear\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_13\,
      Q => count_r_reg(2),
      R => \^clear\
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_9\,
      Q => count_r_reg(30),
      R => \^clear\
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[24]_i_1__0_n_8\,
      Q => count_r_reg(31),
      R => \^clear\
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_15\,
      Q => count_r_reg(32),
      R => \^clear\
    );
\count_r_reg[32]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1__0_n_0\,
      CO(6) => \count_r_reg[32]_i_1__0_n_1\,
      CO(5) => \count_r_reg[32]_i_1__0_n_2\,
      CO(4) => \count_r_reg[32]_i_1__0_n_3\,
      CO(3) => \count_r_reg[32]_i_1__0_n_4\,
      CO(2) => \count_r_reg[32]_i_1__0_n_5\,
      CO(1) => \count_r_reg[32]_i_1__0_n_6\,
      CO(0) => \count_r_reg[32]_i_1__0_n_7\,
      DI(7) => \count_r[32]_i_2__0_n_0\,
      DI(6) => \count_r[32]_i_3__0_n_0\,
      DI(5) => \count_r[32]_i_4__0_n_0\,
      DI(4) => \count_r[32]_i_5__0_n_0\,
      DI(3) => \count_r[32]_i_6__0_n_0\,
      DI(2) => \count_r[32]_i_7__0_n_0\,
      DI(1) => \count_r[32]_i_8__0_n_0\,
      DI(0) => \count_r[32]_i_9__0_n_0\,
      O(7) => \count_r_reg[32]_i_1__0_n_8\,
      O(6) => \count_r_reg[32]_i_1__0_n_9\,
      O(5) => \count_r_reg[32]_i_1__0_n_10\,
      O(4) => \count_r_reg[32]_i_1__0_n_11\,
      O(3) => \count_r_reg[32]_i_1__0_n_12\,
      O(2) => \count_r_reg[32]_i_1__0_n_13\,
      O(1) => \count_r_reg[32]_i_1__0_n_14\,
      O(0) => \count_r_reg[32]_i_1__0_n_15\,
      S(7) => \count_r[32]_i_10__0_n_0\,
      S(6) => \count_r[32]_i_11__0_n_0\,
      S(5) => \count_r[32]_i_12__0_n_0\,
      S(4) => \count_r[32]_i_13__0_n_0\,
      S(3) => \count_r[32]_i_14__0_n_0\,
      S(2) => \count_r[32]_i_15__0_n_0\,
      S(1) => \count_r[32]_i_16__0_n_0\,
      S(0) => \count_r[32]_i_17__0_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_14\,
      Q => count_r_reg(33),
      R => \^clear\
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_13\,
      Q => count_r_reg(34),
      R => \^clear\
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_12\,
      Q => count_r_reg(35),
      R => \^clear\
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_11\,
      Q => count_r_reg(36),
      R => \^clear\
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_10\,
      Q => count_r_reg(37),
      R => \^clear\
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_9\,
      Q => count_r_reg(38),
      R => \^clear\
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[32]_i_1__0_n_8\,
      Q => count_r_reg(39),
      R => \^clear\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_12\,
      Q => count_r_reg(3),
      R => \^clear\
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_15\,
      Q => count_r_reg(40),
      R => \^clear\
    );
\count_r_reg[40]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1__0_n_0\,
      CO(6) => \count_r_reg[40]_i_1__0_n_1\,
      CO(5) => \count_r_reg[40]_i_1__0_n_2\,
      CO(4) => \count_r_reg[40]_i_1__0_n_3\,
      CO(3) => \count_r_reg[40]_i_1__0_n_4\,
      CO(2) => \count_r_reg[40]_i_1__0_n_5\,
      CO(1) => \count_r_reg[40]_i_1__0_n_6\,
      CO(0) => \count_r_reg[40]_i_1__0_n_7\,
      DI(7) => \count_r[40]_i_2__0_n_0\,
      DI(6) => \count_r[40]_i_3__0_n_0\,
      DI(5) => \count_r[40]_i_4__0_n_0\,
      DI(4) => \count_r[40]_i_5__0_n_0\,
      DI(3) => \count_r[40]_i_6__0_n_0\,
      DI(2) => \count_r[40]_i_7__0_n_0\,
      DI(1) => \count_r[40]_i_8__0_n_0\,
      DI(0) => \count_r[40]_i_9__0_n_0\,
      O(7) => \count_r_reg[40]_i_1__0_n_8\,
      O(6) => \count_r_reg[40]_i_1__0_n_9\,
      O(5) => \count_r_reg[40]_i_1__0_n_10\,
      O(4) => \count_r_reg[40]_i_1__0_n_11\,
      O(3) => \count_r_reg[40]_i_1__0_n_12\,
      O(2) => \count_r_reg[40]_i_1__0_n_13\,
      O(1) => \count_r_reg[40]_i_1__0_n_14\,
      O(0) => \count_r_reg[40]_i_1__0_n_15\,
      S(7) => \count_r[40]_i_10__0_n_0\,
      S(6) => \count_r[40]_i_11__0_n_0\,
      S(5) => \count_r[40]_i_12__0_n_0\,
      S(4) => \count_r[40]_i_13__0_n_0\,
      S(3) => \count_r[40]_i_14__0_n_0\,
      S(2) => \count_r[40]_i_15__0_n_0\,
      S(1) => \count_r[40]_i_16__0_n_0\,
      S(0) => \count_r[40]_i_17__0_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_14\,
      Q => count_r_reg(41),
      R => \^clear\
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_13\,
      Q => count_r_reg(42),
      R => \^clear\
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_12\,
      Q => count_r_reg(43),
      R => \^clear\
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_11\,
      Q => count_r_reg(44),
      R => \^clear\
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_10\,
      Q => count_r_reg(45),
      R => \^clear\
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_9\,
      Q => count_r_reg(46),
      R => \^clear\
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[40]_i_1__0_n_8\,
      Q => count_r_reg(47),
      R => \^clear\
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_15\,
      Q => count_r_reg(48),
      R => \^clear\
    );
\count_r_reg[48]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \count_r_reg[48]_i_1__0_n_2\,
      CO(4) => \count_r_reg[48]_i_1__0_n_3\,
      CO(3) => \count_r_reg[48]_i_1__0_n_4\,
      CO(2) => \count_r_reg[48]_i_1__0_n_5\,
      CO(1) => \count_r_reg[48]_i_1__0_n_6\,
      CO(0) => \count_r_reg[48]_i_1__0_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \count_r[48]_i_2__0_n_0\,
      DI(4) => \count_r[48]_i_3__0_n_0\,
      DI(3) => \count_r[48]_i_4__0_n_0\,
      DI(2) => \count_r[48]_i_5__0_n_0\,
      DI(1) => \count_r[48]_i_6__0_n_0\,
      DI(0) => \count_r[48]_i_7__0_n_0\,
      O(7) => \NLW_count_r_reg[48]_i_1__0_O_UNCONNECTED\(7),
      O(6) => \count_r_reg[48]_i_1__0_n_9\,
      O(5) => \count_r_reg[48]_i_1__0_n_10\,
      O(4) => \count_r_reg[48]_i_1__0_n_11\,
      O(3) => \count_r_reg[48]_i_1__0_n_12\,
      O(2) => \count_r_reg[48]_i_1__0_n_13\,
      O(1) => \count_r_reg[48]_i_1__0_n_14\,
      O(0) => \count_r_reg[48]_i_1__0_n_15\,
      S(7) => '0',
      S(6) => \count_r[48]_i_8__1_n_0\,
      S(5) => \count_r[48]_i_9__0_n_0\,
      S(4) => \count_r[48]_i_10__0_n_0\,
      S(3) => \count_r[48]_i_11__0_n_0\,
      S(2) => \count_r[48]_i_12__0_n_0\,
      S(1) => \count_r[48]_i_13__0_n_0\,
      S(0) => \count_r[48]_i_14__0_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_14\,
      Q => count_r_reg(49),
      R => \^clear\
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_11\,
      Q => count_r_reg(4),
      R => \^clear\
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_13\,
      Q => count_r_reg(50),
      R => \^clear\
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_12\,
      Q => count_r_reg(51),
      R => \^clear\
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_11\,
      Q => count_r_reg(52),
      R => \^clear\
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_10\,
      Q => count_r_reg(53),
      R => \^clear\
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[48]_i_1__0_n_9\,
      Q => count_r_reg(54),
      R => \^clear\
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_10\,
      Q => count_r_reg(5),
      R => \^clear\
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_9\,
      Q => count_r_reg(6),
      R => \^clear\
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[0]_i_1_n_8\,
      Q => count_r_reg(7),
      R => \^clear\
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_15\,
      Q => count_r_reg(8),
      R => \^clear\
    );
\count_r_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__0_n_0\,
      CO(6) => \count_r_reg[8]_i_1__0_n_1\,
      CO(5) => \count_r_reg[8]_i_1__0_n_2\,
      CO(4) => \count_r_reg[8]_i_1__0_n_3\,
      CO(3) => \count_r_reg[8]_i_1__0_n_4\,
      CO(2) => \count_r_reg[8]_i_1__0_n_5\,
      CO(1) => \count_r_reg[8]_i_1__0_n_6\,
      CO(0) => \count_r_reg[8]_i_1__0_n_7\,
      DI(7) => \count_r[8]_i_2__0_n_0\,
      DI(6) => \count_r[8]_i_3__0_n_0\,
      DI(5) => \count_r[8]_i_4__0_n_0\,
      DI(4) => \count_r[8]_i_5__0_n_0\,
      DI(3) => \count_r[8]_i_6__0_n_0\,
      DI(2) => \count_r[8]_i_7__0_n_0\,
      DI(1) => \count_r[8]_i_8__0_n_0\,
      DI(0) => \count_r[8]_i_9__0_n_0\,
      O(7) => \count_r_reg[8]_i_1__0_n_8\,
      O(6) => \count_r_reg[8]_i_1__0_n_9\,
      O(5) => \count_r_reg[8]_i_1__0_n_10\,
      O(4) => \count_r_reg[8]_i_1__0_n_11\,
      O(3) => \count_r_reg[8]_i_1__0_n_12\,
      O(2) => \count_r_reg[8]_i_1__0_n_13\,
      O(1) => \count_r_reg[8]_i_1__0_n_14\,
      O(0) => \count_r_reg[8]_i_1__0_n_15\,
      S(7) => \count_r[8]_i_10__0_n_0\,
      S(6) => \count_r[8]_i_11__0_n_0\,
      S(5) => \count_r[8]_i_12__0_n_0\,
      S(4) => \count_r[8]_i_13__0_n_0\,
      S(3) => \count_r[8]_i_14__0_n_0\,
      S(2) => \count_r[8]_i_15__0_n_0\,
      S(1) => \count_r[8]_i_16__0_n_0\,
      S(0) => \count_r[8]_i_17__0_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \count_r_reg[8]_i_1__0_n_14\,
      Q => count_r_reg(9),
      R => \^clear\
    );
\is_zero_r_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => count_r_reg(9),
      I2 => count_r_reg(53),
      I3 => count_r_reg(15),
      O => \is_zero_r_i_10__1_n_0\
    );
\is_zero_r_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(37),
      I2 => count_r_reg(45),
      I3 => count_r_reg(47),
      I4 => \is_zero_r_i_15__1_n_0\,
      O => \is_zero_r_i_11__1_n_0\
    );
\is_zero_r_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => count_r_reg(17),
      I2 => \is_zero_r_i_5__0_0\,
      I3 => count_r_reg(0),
      I4 => \count_r_reg[0]_0\,
      I5 => m_axi_AWREADY,
      O => \is_zero_r_i_12__1_n_0\
    );
\is_zero_r_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => count_r_reg(18),
      I2 => count_r_reg(34),
      I3 => count_r_reg(7),
      O => \is_zero_r_i_13__1_n_0\
    );
\is_zero_r_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => count_r_reg(29),
      I2 => count_r_reg(35),
      I3 => count_r_reg(33),
      O => \is_zero_r_i_14__1_n_0\
    );
\is_zero_r_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => count_r_reg(1),
      I2 => count_r_reg(48),
      I3 => count_r_reg(8),
      O => \is_zero_r_i_15__1_n_0\
    );
\is_zero_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => is_zero_r_reg_0,
      I1 => \is_zero_r_i_2__2_n_0\,
      I2 => \is_zero_r_i_3__1_n_0\,
      I3 => \is_zero_r_i_4__1_n_0\,
      I4 => \is_zero_r_i_5__0_n_0\,
      O => \is_zero_r_i_1__0_n_0\
    );
\is_zero_r_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => count_r_reg(50),
      I2 => count_r_reg(13),
      I3 => count_r_reg(14),
      I4 => \is_zero_r_i_6__1_n_0\,
      I5 => \is_zero_r_i_7__1_n_0\,
      O => \is_zero_r_i_2__2_n_0\
    );
\is_zero_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_8__1_n_0\,
      I1 => count_r_reg(36),
      I2 => count_r_reg(4),
      I3 => count_r_reg(38),
      I4 => count_r_reg(28),
      I5 => \is_zero_r_i_9__1_n_0\,
      O => \is_zero_r_i_3__1_n_0\
    );
\is_zero_r_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \is_zero_r_i_10__1_n_0\,
      I1 => count_r_reg(3),
      I2 => count_r_reg(2),
      I3 => count_r_reg(54),
      I4 => count_r_reg(26),
      I5 => \is_zero_r_i_11__1_n_0\,
      O => \is_zero_r_i_4__1_n_0\
    );
\is_zero_r_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_12__1_n_0\,
      I1 => \is_zero_r_i_13__1_n_0\,
      I2 => count_r_reg(32),
      I3 => count_r_reg(30),
      I4 => count_r_reg(44),
      I5 => count_r_reg(42),
      O => \is_zero_r_i_5__0_n_0\
    );
\is_zero_r_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => count_r_reg(41),
      I2 => count_r_reg(19),
      I3 => count_r_reg(6),
      O => \is_zero_r_i_6__1_n_0\
    );
\is_zero_r_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => count_r_reg(12),
      I2 => count_r_reg(49),
      I3 => count_r_reg(22),
      O => \is_zero_r_i_7__1_n_0\
    );
\is_zero_r_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => count_r_reg(21),
      I2 => count_r_reg(40),
      I3 => count_r_reg(23),
      O => \is_zero_r_i_8__1_n_0\
    );
\is_zero_r_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => count_r_reg(24),
      I2 => count_r_reg(46),
      I3 => count_r_reg(51),
      I4 => \is_zero_r_i_14__1_n_0\,
      O => \is_zero_r_i_9__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \^start_reg\,
      D => \is_zero_r_i_1__0_n_0\,
      Q => is_zero_r_reg_n_0,
      S => \^clear\
    );
\m_axi_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_AWLEN[3]\(0),
      O => m_axi_AWLEN(0)
    );
\m_axi_AWLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_AWLEN[3]\(1),
      O => m_axi_AWLEN(1)
    );
\m_axi_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_AWLEN[3]\(2),
      O => m_axi_AWLEN(2)
    );
\m_axi_AWLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => \m_axi_AWLEN[3]\(3),
      O => m_axi_AWLEN(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  port (
    \total_len_r_reg[10]\ : out STD_LOGIC;
    done0 : out STD_LOGIC;
    clear : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    is_zero_r_reg_0 : in STD_LOGIC;
    \count_r_reg[23]_0\ : in STD_LOGIC;
    \is_zero_r_i_4__0_0\ : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  signal \count_r[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal \count_r_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \is_zero_r_i_10__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_11__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_12__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_13__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_14__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_15__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_1__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_7__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_8__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_9__0_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^total_len_r_reg[10]\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_count_r_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \is_zero_r_i_13__0\ : label is "soft_lutpair4";
begin
  \total_len_r_reg[10]\ <= \^total_len_r_reg[10]\;
\count_r[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(0),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(0),
      O => \count_r[0]_i_10_n_0\
    );
\count_r[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => data(7),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_11_n_0\
    );
\count_r[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => data(6),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_12_n_0\
    );
\count_r[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => data(5),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_13_n_0\
    );
\count_r[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => data(4),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_14_n_0\
    );
\count_r[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => data(3),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_15_n_0\
    );
\count_r[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => data(2),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_16_n_0\
    );
\count_r[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => data(1),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_17_n_0\
    );
\count_r[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => data(0),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_18_n_0\
    );
\count_r[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_0,
      O => \count_r[0]_i_1__1_n_0\
    );
\count_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(7),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(7),
      O => \count_r[0]_i_3_n_0\
    );
\count_r[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(6),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(6),
      O => \count_r[0]_i_4_n_0\
    );
\count_r[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(5),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(5),
      O => \count_r[0]_i_5_n_0\
    );
\count_r[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(4),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(4),
      O => \count_r[0]_i_6_n_0\
    );
\count_r[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(3),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(3),
      O => \count_r[0]_i_7_n_0\
    );
\count_r[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(2),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(2),
      O => \count_r[0]_i_8_n_0\
    );
\count_r[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(1),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(1),
      O => \count_r[0]_i_9_n_0\
    );
\count_r[16]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_10_n_0\
    );
\count_r[16]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_11_n_0\
    );
\count_r[16]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_12_n_0\
    );
\count_r[16]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_13_n_0\
    );
\count_r[16]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_14_n_0\
    );
\count_r[16]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_15_n_0\
    );
\count_r[16]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_16_n_0\
    );
\count_r[16]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_17_n_0\
    );
\count_r[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(23),
      O => \count_r[16]_i_2_n_0\
    );
\count_r[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(22),
      O => \count_r[16]_i_3_n_0\
    );
\count_r[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(21),
      O => \count_r[16]_i_4_n_0\
    );
\count_r[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(20),
      O => \count_r[16]_i_5_n_0\
    );
\count_r[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(19),
      O => \count_r[16]_i_6_n_0\
    );
\count_r[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(18),
      O => \count_r[16]_i_7_n_0\
    );
\count_r[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(17),
      O => \count_r[16]_i_8_n_0\
    );
\count_r[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(16),
      O => \count_r[16]_i_9_n_0\
    );
\count_r[24]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_10_n_0\
    );
\count_r[24]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_11_n_0\
    );
\count_r[24]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_12_n_0\
    );
\count_r[24]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_13_n_0\
    );
\count_r[24]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_14_n_0\
    );
\count_r[24]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_15_n_0\
    );
\count_r[24]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_16_n_0\
    );
\count_r[24]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_17_n_0\
    );
\count_r[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(31),
      O => \count_r[24]_i_2_n_0\
    );
\count_r[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(30),
      O => \count_r[24]_i_3_n_0\
    );
\count_r[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(29),
      O => \count_r[24]_i_4_n_0\
    );
\count_r[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(28),
      O => \count_r[24]_i_5_n_0\
    );
\count_r[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(27),
      O => \count_r[24]_i_6_n_0\
    );
\count_r[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(26),
      O => \count_r[24]_i_7_n_0\
    );
\count_r[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(25),
      O => \count_r[24]_i_8_n_0\
    );
\count_r[24]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(24),
      O => \count_r[24]_i_9_n_0\
    );
\count_r[32]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_10_n_0\
    );
\count_r[32]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_11_n_0\
    );
\count_r[32]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_12_n_0\
    );
\count_r[32]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_13_n_0\
    );
\count_r[32]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_14_n_0\
    );
\count_r[32]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_15_n_0\
    );
\count_r[32]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_16_n_0\
    );
\count_r[32]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_17_n_0\
    );
\count_r[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(39),
      O => \count_r[32]_i_2_n_0\
    );
\count_r[32]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(38),
      O => \count_r[32]_i_3_n_0\
    );
\count_r[32]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(37),
      O => \count_r[32]_i_4_n_0\
    );
\count_r[32]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(36),
      O => \count_r[32]_i_5_n_0\
    );
\count_r[32]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(35),
      O => \count_r[32]_i_6_n_0\
    );
\count_r[32]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(34),
      O => \count_r[32]_i_7_n_0\
    );
\count_r[32]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(33),
      O => \count_r[32]_i_8_n_0\
    );
\count_r[32]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(32),
      O => \count_r[32]_i_9_n_0\
    );
\count_r[40]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_10_n_0\
    );
\count_r[40]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_11_n_0\
    );
\count_r[40]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_12_n_0\
    );
\count_r[40]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_13_n_0\
    );
\count_r[40]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_14_n_0\
    );
\count_r[40]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_15_n_0\
    );
\count_r[40]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_16_n_0\
    );
\count_r[40]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_17_n_0\
    );
\count_r[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(47),
      O => \count_r[40]_i_2_n_0\
    );
\count_r[40]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(46),
      O => \count_r[40]_i_3_n_0\
    );
\count_r[40]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(45),
      O => \count_r[40]_i_4_n_0\
    );
\count_r[40]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(44),
      O => \count_r[40]_i_5_n_0\
    );
\count_r[40]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(43),
      O => \count_r[40]_i_6_n_0\
    );
\count_r[40]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(42),
      O => \count_r[40]_i_7_n_0\
    );
\count_r[40]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(41),
      O => \count_r[40]_i_8_n_0\
    );
\count_r[40]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(40),
      O => \count_r[40]_i_9_n_0\
    );
\count_r[48]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_10_n_0\
    );
\count_r[48]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_11_n_0\
    );
\count_r[48]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_12_n_0\
    );
\count_r[48]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_13_n_0\
    );
\count_r[48]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_14_n_0\
    );
\count_r[48]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(53),
      O => \count_r[48]_i_2_n_0\
    );
\count_r[48]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(52),
      O => \count_r[48]_i_3_n_0\
    );
\count_r[48]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(51),
      O => \count_r[48]_i_4_n_0\
    );
\count_r[48]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(50),
      O => \count_r[48]_i_5_n_0\
    );
\count_r[48]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(49),
      O => \count_r[48]_i_6_n_0\
    );
\count_r[48]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(48),
      O => \count_r[48]_i_7_n_0\
    );
\count_r[48]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \count_r_reg[23]_0\,
      I1 => count_r_reg(54),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_8_n_0\
    );
\count_r[48]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => \count_r_reg[23]_0\,
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_9_n_0\
    );
\count_r[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_10_n_0\
    );
\count_r[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_11_n_0\
    );
\count_r[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_12_n_0\
    );
\count_r[8]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_13_n_0\
    );
\count_r[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => data(11),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_14_n_0\
    );
\count_r[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => data(10),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_15_n_0\
    );
\count_r[8]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => data(9),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_16_n_0\
    );
\count_r[8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => data(8),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_17_n_0\
    );
\count_r[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(15),
      O => \count_r[8]_i_2_n_0\
    );
\count_r[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(14),
      O => \count_r[8]_i_3_n_0\
    );
\count_r[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(13),
      O => \count_r[8]_i_4_n_0\
    );
\count_r[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(12),
      O => \count_r[8]_i_5_n_0\
    );
\count_r[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(11),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(11),
      O => \count_r[8]_i_6_n_0\
    );
\count_r[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(10),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(10),
      O => \count_r[8]_i_7_n_0\
    );
\count_r[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(9),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(9),
      O => \count_r[8]_i_8_n_0\
    );
\count_r[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(8),
      I1 => is_zero_r_reg_0,
      I2 => count_r_reg(8),
      O => \count_r[8]_i_9_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_15\,
      Q => count_r_reg(0),
      R => clear
    );
\count_r_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2_n_0\,
      CO(6) => \count_r_reg[0]_i_2_n_1\,
      CO(5) => \count_r_reg[0]_i_2_n_2\,
      CO(4) => \count_r_reg[0]_i_2_n_3\,
      CO(3) => \count_r_reg[0]_i_2_n_4\,
      CO(2) => \count_r_reg[0]_i_2_n_5\,
      CO(1) => \count_r_reg[0]_i_2_n_6\,
      CO(0) => \count_r_reg[0]_i_2_n_7\,
      DI(7) => \count_r[0]_i_3_n_0\,
      DI(6) => \count_r[0]_i_4_n_0\,
      DI(5) => \count_r[0]_i_5_n_0\,
      DI(4) => \count_r[0]_i_6_n_0\,
      DI(3) => \count_r[0]_i_7_n_0\,
      DI(2) => \count_r[0]_i_8_n_0\,
      DI(1) => \count_r[0]_i_9_n_0\,
      DI(0) => \count_r[0]_i_10_n_0\,
      O(7) => \count_r_reg[0]_i_2_n_8\,
      O(6) => \count_r_reg[0]_i_2_n_9\,
      O(5) => \count_r_reg[0]_i_2_n_10\,
      O(4) => \count_r_reg[0]_i_2_n_11\,
      O(3) => \count_r_reg[0]_i_2_n_12\,
      O(2) => \count_r_reg[0]_i_2_n_13\,
      O(1) => \count_r_reg[0]_i_2_n_14\,
      O(0) => \count_r_reg[0]_i_2_n_15\,
      S(7) => \count_r[0]_i_11_n_0\,
      S(6) => \count_r[0]_i_12_n_0\,
      S(5) => \count_r[0]_i_13_n_0\,
      S(4) => \count_r[0]_i_14_n_0\,
      S(3) => \count_r[0]_i_15_n_0\,
      S(2) => \count_r[0]_i_16_n_0\,
      S(1) => \count_r[0]_i_17_n_0\,
      S(0) => \count_r[0]_i_18_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_13\,
      Q => count_r_reg(10),
      R => clear
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_12\,
      Q => count_r_reg(11),
      R => clear
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_11\,
      Q => count_r_reg(12),
      R => clear
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_10\,
      Q => count_r_reg(13),
      R => clear
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_9\,
      Q => count_r_reg(14),
      R => clear
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_8\,
      Q => count_r_reg(15),
      R => clear
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_15\,
      Q => count_r_reg(16),
      R => clear
    );
\count_r_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1_n_0\,
      CO(6) => \count_r_reg[16]_i_1_n_1\,
      CO(5) => \count_r_reg[16]_i_1_n_2\,
      CO(4) => \count_r_reg[16]_i_1_n_3\,
      CO(3) => \count_r_reg[16]_i_1_n_4\,
      CO(2) => \count_r_reg[16]_i_1_n_5\,
      CO(1) => \count_r_reg[16]_i_1_n_6\,
      CO(0) => \count_r_reg[16]_i_1_n_7\,
      DI(7) => \count_r[16]_i_2_n_0\,
      DI(6) => \count_r[16]_i_3_n_0\,
      DI(5) => \count_r[16]_i_4_n_0\,
      DI(4) => \count_r[16]_i_5_n_0\,
      DI(3) => \count_r[16]_i_6_n_0\,
      DI(2) => \count_r[16]_i_7_n_0\,
      DI(1) => \count_r[16]_i_8_n_0\,
      DI(0) => \count_r[16]_i_9_n_0\,
      O(7) => \count_r_reg[16]_i_1_n_8\,
      O(6) => \count_r_reg[16]_i_1_n_9\,
      O(5) => \count_r_reg[16]_i_1_n_10\,
      O(4) => \count_r_reg[16]_i_1_n_11\,
      O(3) => \count_r_reg[16]_i_1_n_12\,
      O(2) => \count_r_reg[16]_i_1_n_13\,
      O(1) => \count_r_reg[16]_i_1_n_14\,
      O(0) => \count_r_reg[16]_i_1_n_15\,
      S(7) => \count_r[16]_i_10_n_0\,
      S(6) => \count_r[16]_i_11_n_0\,
      S(5) => \count_r[16]_i_12_n_0\,
      S(4) => \count_r[16]_i_13_n_0\,
      S(3) => \count_r[16]_i_14_n_0\,
      S(2) => \count_r[16]_i_15_n_0\,
      S(1) => \count_r[16]_i_16_n_0\,
      S(0) => \count_r[16]_i_17_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_14\,
      Q => count_r_reg(17),
      R => clear
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_13\,
      Q => count_r_reg(18),
      R => clear
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_12\,
      Q => count_r_reg(19),
      R => clear
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_14\,
      Q => count_r_reg(1),
      R => clear
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_11\,
      Q => count_r_reg(20),
      R => clear
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_10\,
      Q => count_r_reg(21),
      R => clear
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_9\,
      Q => count_r_reg(22),
      R => clear
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[16]_i_1_n_8\,
      Q => count_r_reg(23),
      R => clear
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_15\,
      Q => count_r_reg(24),
      R => clear
    );
\count_r_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1_n_0\,
      CO(6) => \count_r_reg[24]_i_1_n_1\,
      CO(5) => \count_r_reg[24]_i_1_n_2\,
      CO(4) => \count_r_reg[24]_i_1_n_3\,
      CO(3) => \count_r_reg[24]_i_1_n_4\,
      CO(2) => \count_r_reg[24]_i_1_n_5\,
      CO(1) => \count_r_reg[24]_i_1_n_6\,
      CO(0) => \count_r_reg[24]_i_1_n_7\,
      DI(7) => \count_r[24]_i_2_n_0\,
      DI(6) => \count_r[24]_i_3_n_0\,
      DI(5) => \count_r[24]_i_4_n_0\,
      DI(4) => \count_r[24]_i_5_n_0\,
      DI(3) => \count_r[24]_i_6_n_0\,
      DI(2) => \count_r[24]_i_7_n_0\,
      DI(1) => \count_r[24]_i_8_n_0\,
      DI(0) => \count_r[24]_i_9_n_0\,
      O(7) => \count_r_reg[24]_i_1_n_8\,
      O(6) => \count_r_reg[24]_i_1_n_9\,
      O(5) => \count_r_reg[24]_i_1_n_10\,
      O(4) => \count_r_reg[24]_i_1_n_11\,
      O(3) => \count_r_reg[24]_i_1_n_12\,
      O(2) => \count_r_reg[24]_i_1_n_13\,
      O(1) => \count_r_reg[24]_i_1_n_14\,
      O(0) => \count_r_reg[24]_i_1_n_15\,
      S(7) => \count_r[24]_i_10_n_0\,
      S(6) => \count_r[24]_i_11_n_0\,
      S(5) => \count_r[24]_i_12_n_0\,
      S(4) => \count_r[24]_i_13_n_0\,
      S(3) => \count_r[24]_i_14_n_0\,
      S(2) => \count_r[24]_i_15_n_0\,
      S(1) => \count_r[24]_i_16_n_0\,
      S(0) => \count_r[24]_i_17_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_14\,
      Q => count_r_reg(25),
      R => clear
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_13\,
      Q => count_r_reg(26),
      R => clear
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_12\,
      Q => count_r_reg(27),
      R => clear
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_11\,
      Q => count_r_reg(28),
      R => clear
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_10\,
      Q => count_r_reg(29),
      R => clear
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_13\,
      Q => count_r_reg(2),
      R => clear
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_9\,
      Q => count_r_reg(30),
      R => clear
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[24]_i_1_n_8\,
      Q => count_r_reg(31),
      R => clear
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_15\,
      Q => count_r_reg(32),
      R => clear
    );
\count_r_reg[32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1_n_0\,
      CO(6) => \count_r_reg[32]_i_1_n_1\,
      CO(5) => \count_r_reg[32]_i_1_n_2\,
      CO(4) => \count_r_reg[32]_i_1_n_3\,
      CO(3) => \count_r_reg[32]_i_1_n_4\,
      CO(2) => \count_r_reg[32]_i_1_n_5\,
      CO(1) => \count_r_reg[32]_i_1_n_6\,
      CO(0) => \count_r_reg[32]_i_1_n_7\,
      DI(7) => \count_r[32]_i_2_n_0\,
      DI(6) => \count_r[32]_i_3_n_0\,
      DI(5) => \count_r[32]_i_4_n_0\,
      DI(4) => \count_r[32]_i_5_n_0\,
      DI(3) => \count_r[32]_i_6_n_0\,
      DI(2) => \count_r[32]_i_7_n_0\,
      DI(1) => \count_r[32]_i_8_n_0\,
      DI(0) => \count_r[32]_i_9_n_0\,
      O(7) => \count_r_reg[32]_i_1_n_8\,
      O(6) => \count_r_reg[32]_i_1_n_9\,
      O(5) => \count_r_reg[32]_i_1_n_10\,
      O(4) => \count_r_reg[32]_i_1_n_11\,
      O(3) => \count_r_reg[32]_i_1_n_12\,
      O(2) => \count_r_reg[32]_i_1_n_13\,
      O(1) => \count_r_reg[32]_i_1_n_14\,
      O(0) => \count_r_reg[32]_i_1_n_15\,
      S(7) => \count_r[32]_i_10_n_0\,
      S(6) => \count_r[32]_i_11_n_0\,
      S(5) => \count_r[32]_i_12_n_0\,
      S(4) => \count_r[32]_i_13_n_0\,
      S(3) => \count_r[32]_i_14_n_0\,
      S(2) => \count_r[32]_i_15_n_0\,
      S(1) => \count_r[32]_i_16_n_0\,
      S(0) => \count_r[32]_i_17_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_14\,
      Q => count_r_reg(33),
      R => clear
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_13\,
      Q => count_r_reg(34),
      R => clear
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_12\,
      Q => count_r_reg(35),
      R => clear
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_11\,
      Q => count_r_reg(36),
      R => clear
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_10\,
      Q => count_r_reg(37),
      R => clear
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_9\,
      Q => count_r_reg(38),
      R => clear
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[32]_i_1_n_8\,
      Q => count_r_reg(39),
      R => clear
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_12\,
      Q => count_r_reg(3),
      R => clear
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_15\,
      Q => count_r_reg(40),
      R => clear
    );
\count_r_reg[40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1_n_0\,
      CO(6) => \count_r_reg[40]_i_1_n_1\,
      CO(5) => \count_r_reg[40]_i_1_n_2\,
      CO(4) => \count_r_reg[40]_i_1_n_3\,
      CO(3) => \count_r_reg[40]_i_1_n_4\,
      CO(2) => \count_r_reg[40]_i_1_n_5\,
      CO(1) => \count_r_reg[40]_i_1_n_6\,
      CO(0) => \count_r_reg[40]_i_1_n_7\,
      DI(7) => \count_r[40]_i_2_n_0\,
      DI(6) => \count_r[40]_i_3_n_0\,
      DI(5) => \count_r[40]_i_4_n_0\,
      DI(4) => \count_r[40]_i_5_n_0\,
      DI(3) => \count_r[40]_i_6_n_0\,
      DI(2) => \count_r[40]_i_7_n_0\,
      DI(1) => \count_r[40]_i_8_n_0\,
      DI(0) => \count_r[40]_i_9_n_0\,
      O(7) => \count_r_reg[40]_i_1_n_8\,
      O(6) => \count_r_reg[40]_i_1_n_9\,
      O(5) => \count_r_reg[40]_i_1_n_10\,
      O(4) => \count_r_reg[40]_i_1_n_11\,
      O(3) => \count_r_reg[40]_i_1_n_12\,
      O(2) => \count_r_reg[40]_i_1_n_13\,
      O(1) => \count_r_reg[40]_i_1_n_14\,
      O(0) => \count_r_reg[40]_i_1_n_15\,
      S(7) => \count_r[40]_i_10_n_0\,
      S(6) => \count_r[40]_i_11_n_0\,
      S(5) => \count_r[40]_i_12_n_0\,
      S(4) => \count_r[40]_i_13_n_0\,
      S(3) => \count_r[40]_i_14_n_0\,
      S(2) => \count_r[40]_i_15_n_0\,
      S(1) => \count_r[40]_i_16_n_0\,
      S(0) => \count_r[40]_i_17_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_14\,
      Q => count_r_reg(41),
      R => clear
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_13\,
      Q => count_r_reg(42),
      R => clear
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_12\,
      Q => count_r_reg(43),
      R => clear
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_11\,
      Q => count_r_reg(44),
      R => clear
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_10\,
      Q => count_r_reg(45),
      R => clear
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_9\,
      Q => count_r_reg(46),
      R => clear
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[40]_i_1_n_8\,
      Q => count_r_reg(47),
      R => clear
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_15\,
      Q => count_r_reg(48),
      R => clear
    );
\count_r_reg[48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_count_r_reg[48]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \count_r_reg[48]_i_1_n_2\,
      CO(4) => \count_r_reg[48]_i_1_n_3\,
      CO(3) => \count_r_reg[48]_i_1_n_4\,
      CO(2) => \count_r_reg[48]_i_1_n_5\,
      CO(1) => \count_r_reg[48]_i_1_n_6\,
      CO(0) => \count_r_reg[48]_i_1_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \count_r[48]_i_2_n_0\,
      DI(4) => \count_r[48]_i_3_n_0\,
      DI(3) => \count_r[48]_i_4_n_0\,
      DI(2) => \count_r[48]_i_5_n_0\,
      DI(1) => \count_r[48]_i_6_n_0\,
      DI(0) => \count_r[48]_i_7_n_0\,
      O(7) => \NLW_count_r_reg[48]_i_1_O_UNCONNECTED\(7),
      O(6) => \count_r_reg[48]_i_1_n_9\,
      O(5) => \count_r_reg[48]_i_1_n_10\,
      O(4) => \count_r_reg[48]_i_1_n_11\,
      O(3) => \count_r_reg[48]_i_1_n_12\,
      O(2) => \count_r_reg[48]_i_1_n_13\,
      O(1) => \count_r_reg[48]_i_1_n_14\,
      O(0) => \count_r_reg[48]_i_1_n_15\,
      S(7) => '0',
      S(6) => \count_r[48]_i_8_n_0\,
      S(5) => \count_r[48]_i_9_n_0\,
      S(4) => \count_r[48]_i_10_n_0\,
      S(3) => \count_r[48]_i_11_n_0\,
      S(2) => \count_r[48]_i_12_n_0\,
      S(1) => \count_r[48]_i_13_n_0\,
      S(0) => \count_r[48]_i_14_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_14\,
      Q => count_r_reg(49),
      R => clear
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_11\,
      Q => count_r_reg(4),
      R => clear
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_13\,
      Q => count_r_reg(50),
      R => clear
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_12\,
      Q => count_r_reg(51),
      R => clear
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_11\,
      Q => count_r_reg(52),
      R => clear
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_10\,
      Q => count_r_reg(53),
      R => clear
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[48]_i_1_n_9\,
      Q => count_r_reg(54),
      R => clear
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_10\,
      Q => count_r_reg(5),
      R => clear
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_9\,
      Q => count_r_reg(6),
      R => clear
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[0]_i_2_n_8\,
      Q => count_r_reg(7),
      R => clear
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_15\,
      Q => count_r_reg(8),
      R => clear
    );
\count_r_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1_n_0\,
      CO(6) => \count_r_reg[8]_i_1_n_1\,
      CO(5) => \count_r_reg[8]_i_1_n_2\,
      CO(4) => \count_r_reg[8]_i_1_n_3\,
      CO(3) => \count_r_reg[8]_i_1_n_4\,
      CO(2) => \count_r_reg[8]_i_1_n_5\,
      CO(1) => \count_r_reg[8]_i_1_n_6\,
      CO(0) => \count_r_reg[8]_i_1_n_7\,
      DI(7) => \count_r[8]_i_2_n_0\,
      DI(6) => \count_r[8]_i_3_n_0\,
      DI(5) => \count_r[8]_i_4_n_0\,
      DI(4) => \count_r[8]_i_5_n_0\,
      DI(3) => \count_r[8]_i_6_n_0\,
      DI(2) => \count_r[8]_i_7_n_0\,
      DI(1) => \count_r[8]_i_8_n_0\,
      DI(0) => \count_r[8]_i_9_n_0\,
      O(7) => \count_r_reg[8]_i_1_n_8\,
      O(6) => \count_r_reg[8]_i_1_n_9\,
      O(5) => \count_r_reg[8]_i_1_n_10\,
      O(4) => \count_r_reg[8]_i_1_n_11\,
      O(3) => \count_r_reg[8]_i_1_n_12\,
      O(2) => \count_r_reg[8]_i_1_n_13\,
      O(1) => \count_r_reg[8]_i_1_n_14\,
      O(0) => \count_r_reg[8]_i_1_n_15\,
      S(7) => \count_r[8]_i_10_n_0\,
      S(6) => \count_r[8]_i_11_n_0\,
      S(5) => \count_r[8]_i_12_n_0\,
      S(4) => \count_r[8]_i_13_n_0\,
      S(3) => \count_r[8]_i_14_n_0\,
      S(2) => \count_r[8]_i_15_n_0\,
      S(1) => \count_r[8]_i_16_n_0\,
      S(0) => \count_r[8]_i_17_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \count_r_reg[8]_i_1_n_14\,
      Q => count_r_reg(9),
      R => clear
    );
done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_n_0,
      O => done0
    );
\is_zero_r_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(54),
      I1 => \is_zero_r_i_4__0_0\,
      I2 => count_r_reg(4),
      I3 => count_r_reg(42),
      I4 => count_r_reg(3),
      I5 => count_r_reg(17),
      O => \is_zero_r_i_10__0_n_0\
    );
\is_zero_r_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => count_r_reg(2),
      I2 => count_r_reg(34),
      I3 => count_r_reg(21),
      O => \is_zero_r_i_11__0_n_0\
    );
\is_zero_r_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => count_r_reg(51),
      I2 => count_r_reg(47),
      I3 => count_r_reg(46),
      O => \is_zero_r_i_12__0_n_0\
    );
\is_zero_r_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => count_r_reg(7),
      I2 => count_r_reg(49),
      I3 => count_r_reg(18),
      O => \is_zero_r_i_13__0_n_0\
    );
\is_zero_r_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => count_r_reg(28),
      I2 => count_r_reg(37),
      I3 => count_r_reg(27),
      O => \is_zero_r_i_14__0_n_0\
    );
\is_zero_r_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => count_r_reg(24),
      I2 => count_r_reg(44),
      I3 => count_r_reg(35),
      O => \is_zero_r_i_15__0_n_0\
    );
\is_zero_r_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \^total_len_r_reg[10]\,
      I1 => \is_zero_r_i_2__1_n_0\,
      I2 => \is_zero_r_i_3__0_n_0\,
      I3 => \is_zero_r_i_4__0_n_0\,
      O => \is_zero_r_i_1__1_n_0\
    );
\is_zero_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_5__1_n_0\,
      I1 => count_r_reg(32),
      I2 => count_r_reg(5),
      I3 => count_r_reg(1),
      I4 => \is_zero_r_i_6__0_n_0\,
      I5 => \is_zero_r_i_7__0_n_0\,
      O => \is_zero_r_i_2__1_n_0\
    );
\is_zero_r_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \is_zero_r_i_8__0_n_0\,
      I1 => count_r_reg(15),
      I2 => count_r_reg(11),
      I3 => count_r_reg(43),
      I4 => count_r_reg(23),
      I5 => \is_zero_r_i_9__0_n_0\,
      O => \is_zero_r_i_3__0_n_0\
    );
\is_zero_r_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_10__0_n_0\,
      I1 => \is_zero_r_i_11__0_n_0\,
      I2 => count_r_reg(31),
      I3 => count_r_reg(19),
      I4 => count_r_reg(16),
      I5 => count_r_reg(10),
      O => \is_zero_r_i_4__0_n_0\
    );
\is_zero_r_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => count_r_reg(25),
      I2 => count_r_reg(6),
      I3 => count_r_reg(9),
      I4 => \is_zero_r_i_12__0_n_0\,
      O => \is_zero_r_i_5__1_n_0\
    );
\is_zero_r_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => count_r_reg(22),
      I2 => count_r_reg(20),
      I3 => count_r_reg(50),
      I4 => \is_zero_r_i_13__0_n_0\,
      O => \is_zero_r_i_6__0_n_0\
    );
\is_zero_r_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => count_r_reg(41),
      I2 => count_r_reg(36),
      I3 => count_r_reg(53),
      I4 => \is_zero_r_i_14__0_n_0\,
      O => \is_zero_r_i_7__0_n_0\
    );
\is_zero_r_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => count_r_reg(14),
      I2 => count_r_reg(48),
      I3 => count_r_reg(13),
      O => \is_zero_r_i_8__0_n_0\
    );
\is_zero_r_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => count_r_reg(39),
      I2 => count_r_reg(30),
      I3 => count_r_reg(40),
      I4 => \is_zero_r_i_15__0_n_0\,
      O => \is_zero_r_i_9__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__1_n_0\,
      D => \is_zero_r_i_1__1_n_0\,
      Q => is_zero_r_reg_n_0,
      S => clear
    );
\m_axi_AWLEN[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \m_axi_AWLEN[3]_INST_0_i_2_n_0\,
      I1 => \m_axi_AWLEN[3]_INST_0_i_3_n_0\,
      I2 => \m_axi_AWLEN[3]_INST_0_i_4_n_0\,
      I3 => data(6),
      I4 => data(12),
      I5 => data(11),
      O => \^total_len_r_reg[10]\
    );
\m_axi_AWLEN[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \is_zero_r_i_4__0_0\,
      I1 => data(2),
      I2 => data(4),
      I3 => data(3),
      O => \m_axi_AWLEN[3]_INST_0_i_2_n_0\
    );
\m_axi_AWLEN[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data(10),
      I1 => data(9),
      I2 => data(13),
      I3 => data(0),
      O => \m_axi_AWLEN[3]_INST_0_i_3_n_0\
    );
\m_axi_AWLEN[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(7),
      I1 => data(1),
      I2 => data(8),
      I3 => data(5),
      O => \m_axi_AWLEN[3]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \total_len_r_reg[10]\ : out STD_LOGIC;
    \final_burst_len_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clear : in STD_LOGIC;
    is_zero_r : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    is_zero_r_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_2 : in STD_LOGIC;
    w_running : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    is_zero_r_reg_3 : in STD_LOGIC;
    is_zero_r_i_3_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  signal \count_r[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__1_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal \count_r_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal is_zero_r_i_11_n_0 : STD_LOGIC;
  signal is_zero_r_i_12_n_0 : STD_LOGIC;
  signal is_zero_r_i_13_n_0 : STD_LOGIC;
  signal is_zero_r_i_14_n_0 : STD_LOGIC;
  signal is_zero_r_i_15_n_0 : STD_LOGIC;
  signal is_zero_r_i_16_n_0 : STD_LOGIC;
  signal is_zero_r_i_17_n_0 : STD_LOGIC;
  signal is_zero_r_i_18_n_0 : STD_LOGIC;
  signal is_zero_r_i_19_n_0 : STD_LOGIC;
  signal \is_zero_r_i_1__4_n_0\ : STD_LOGIC;
  signal is_zero_r_i_21_n_0 : STD_LOGIC;
  signal is_zero_r_i_5_n_0 : STD_LOGIC;
  signal is_zero_r_i_6_n_0 : STD_LOGIC;
  signal is_zero_r_i_7_n_0 : STD_LOGIC;
  signal is_zero_r_i_8_n_0 : STD_LOGIC;
  signal is_zero_r_i_9_n_0 : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal \^total_len_r_reg[10]\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_count_r_reg[48]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__1\ : label is 16;
begin
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
  \total_len_r_reg[10]\ <= \^total_len_r_reg[10]\;
\count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => \^total_len_r_reg[10]\,
      I2 => \count_r_reg[0]_0\(0),
      O => D(0)
    );
\count_r[0]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(0),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(0),
      O => \count_r[0]_i_10__0_n_0\
    );
\count_r[0]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => data(7),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_11__1_n_0\
    );
\count_r[0]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => data(6),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_12__1_n_0\
    );
\count_r[0]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => data(5),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_13__1_n_0\
    );
\count_r[0]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => data(4),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_14__1_n_0\
    );
\count_r[0]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => data(3),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_15__1_n_0\
    );
\count_r[0]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => data(2),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_16__1_n_0\
    );
\count_r[0]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => data(1),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_17__1_n_0\
    );
\count_r[0]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => data(0),
      I2 => is_zero_r_reg_1,
      O => \count_r[0]_i_18__0_n_0\
    );
\count_r[0]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(7),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(7),
      O => \count_r[0]_i_3__1_n_0\
    );
\count_r[0]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(6),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(6),
      O => \count_r[0]_i_4__1_n_0\
    );
\count_r[0]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(5),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(5),
      O => \count_r[0]_i_5__1_n_0\
    );
\count_r[0]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(4),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(4),
      O => \count_r[0]_i_6__1_n_0\
    );
\count_r[0]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(3),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(3),
      O => \count_r[0]_i_7__1_n_0\
    );
\count_r[0]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(2),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(2),
      O => \count_r[0]_i_8__1_n_0\
    );
\count_r[0]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(1),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(1),
      O => \count_r[0]_i_9__1_n_0\
    );
\count_r[16]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_10__1_n_0\
    );
\count_r[16]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_11__1_n_0\
    );
\count_r[16]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_12__1_n_0\
    );
\count_r[16]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_13__1_n_0\
    );
\count_r[16]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_14__1_n_0\
    );
\count_r[16]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_15__1_n_0\
    );
\count_r[16]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_16__1_n_0\
    );
\count_r[16]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[16]_i_17__1_n_0\
    );
\count_r[16]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(23),
      O => \count_r[16]_i_2__1_n_0\
    );
\count_r[16]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(22),
      O => \count_r[16]_i_3__1_n_0\
    );
\count_r[16]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(21),
      O => \count_r[16]_i_4__1_n_0\
    );
\count_r[16]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(20),
      O => \count_r[16]_i_5__1_n_0\
    );
\count_r[16]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(19),
      O => \count_r[16]_i_6__1_n_0\
    );
\count_r[16]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(18),
      O => \count_r[16]_i_7__1_n_0\
    );
\count_r[16]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(17),
      O => \count_r[16]_i_8__1_n_0\
    );
\count_r[16]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(16),
      O => \count_r[16]_i_9__1_n_0\
    );
\count_r[24]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_10__1_n_0\
    );
\count_r[24]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_11__1_n_0\
    );
\count_r[24]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_12__1_n_0\
    );
\count_r[24]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_13__1_n_0\
    );
\count_r[24]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_14__1_n_0\
    );
\count_r[24]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_15__1_n_0\
    );
\count_r[24]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_16__1_n_0\
    );
\count_r[24]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[24]_i_17__1_n_0\
    );
\count_r[24]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(31),
      O => \count_r[24]_i_2__1_n_0\
    );
\count_r[24]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(30),
      O => \count_r[24]_i_3__1_n_0\
    );
\count_r[24]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(29),
      O => \count_r[24]_i_4__1_n_0\
    );
\count_r[24]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(28),
      O => \count_r[24]_i_5__1_n_0\
    );
\count_r[24]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(27),
      O => \count_r[24]_i_6__1_n_0\
    );
\count_r[24]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(26),
      O => \count_r[24]_i_7__1_n_0\
    );
\count_r[24]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(25),
      O => \count_r[24]_i_8__1_n_0\
    );
\count_r[24]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(24),
      O => \count_r[24]_i_9__1_n_0\
    );
\count_r[32]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_10__1_n_0\
    );
\count_r[32]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_11__1_n_0\
    );
\count_r[32]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_12__1_n_0\
    );
\count_r[32]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_13__1_n_0\
    );
\count_r[32]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_14__1_n_0\
    );
\count_r[32]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_15__1_n_0\
    );
\count_r[32]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_16__1_n_0\
    );
\count_r[32]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[32]_i_17__1_n_0\
    );
\count_r[32]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(39),
      O => \count_r[32]_i_2__1_n_0\
    );
\count_r[32]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(38),
      O => \count_r[32]_i_3__1_n_0\
    );
\count_r[32]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(37),
      O => \count_r[32]_i_4__1_n_0\
    );
\count_r[32]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(36),
      O => \count_r[32]_i_5__1_n_0\
    );
\count_r[32]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(35),
      O => \count_r[32]_i_6__1_n_0\
    );
\count_r[32]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(34),
      O => \count_r[32]_i_7__1_n_0\
    );
\count_r[32]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(33),
      O => \count_r[32]_i_8__1_n_0\
    );
\count_r[32]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(32),
      O => \count_r[32]_i_9__1_n_0\
    );
\count_r[40]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_10__1_n_0\
    );
\count_r[40]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_11__1_n_0\
    );
\count_r[40]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_12__1_n_0\
    );
\count_r[40]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_13__1_n_0\
    );
\count_r[40]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_14__1_n_0\
    );
\count_r[40]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_15__1_n_0\
    );
\count_r[40]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_16__1_n_0\
    );
\count_r[40]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[40]_i_17__1_n_0\
    );
\count_r[40]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(47),
      O => \count_r[40]_i_2__1_n_0\
    );
\count_r[40]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(46),
      O => \count_r[40]_i_3__1_n_0\
    );
\count_r[40]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(45),
      O => \count_r[40]_i_4__1_n_0\
    );
\count_r[40]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(44),
      O => \count_r[40]_i_5__1_n_0\
    );
\count_r[40]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(43),
      O => \count_r[40]_i_6__1_n_0\
    );
\count_r[40]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(42),
      O => \count_r[40]_i_7__1_n_0\
    );
\count_r[40]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(41),
      O => \count_r[40]_i_8__1_n_0\
    );
\count_r[40]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(40),
      O => \count_r[40]_i_9__1_n_0\
    );
\count_r[48]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_10__1_n_0\
    );
\count_r[48]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_11__1_n_0\
    );
\count_r[48]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_12__1_n_0\
    );
\count_r[48]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_13__1_n_0\
    );
\count_r[48]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_14__1_n_0\
    );
\count_r[48]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(53),
      O => \count_r[48]_i_2__1_n_0\
    );
\count_r[48]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(52),
      O => \count_r[48]_i_3__1_n_0\
    );
\count_r[48]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(51),
      O => \count_r[48]_i_4__1_n_0\
    );
\count_r[48]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(50),
      O => \count_r[48]_i_5__1_n_0\
    );
\count_r[48]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(49),
      O => \count_r[48]_i_6__1_n_0\
    );
\count_r[48]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(48),
      O => \count_r[48]_i_7__1_n_0\
    );
\count_r[48]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => data(13),
      I1 => count_r_reg(54),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_8__0_n_0\
    );
\count_r[48]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => data(13),
      I2 => is_zero_r_reg_1,
      O => \count_r[48]_i_9__1_n_0\
    );
\count_r[8]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_10__1_n_0\
    );
\count_r[8]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_11__1_n_0\
    );
\count_r[8]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_12__1_n_0\
    );
\count_r[8]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => data(12),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_13__1_n_0\
    );
\count_r[8]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => data(11),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_14__1_n_0\
    );
\count_r[8]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => data(10),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_15__1_n_0\
    );
\count_r[8]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => data(9),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_16__1_n_0\
    );
\count_r[8]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => data(8),
      I2 => is_zero_r_reg_1,
      O => \count_r[8]_i_17__1_n_0\
    );
\count_r[8]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(15),
      O => \count_r[8]_i_2__1_n_0\
    );
\count_r[8]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(14),
      O => \count_r[8]_i_3__1_n_0\
    );
\count_r[8]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(13),
      O => \count_r[8]_i_4__1_n_0\
    );
\count_r[8]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(12),
      O => \count_r[8]_i_5__1_n_0\
    );
\count_r[8]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(11),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(11),
      O => \count_r[8]_i_6__1_n_0\
    );
\count_r[8]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(10),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(10),
      O => \count_r[8]_i_7__1_n_0\
    );
\count_r[8]_i_8__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(9),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(9),
      O => \count_r[8]_i_8__1_n_0\
    );
\count_r[8]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(8),
      I1 => is_zero_r_reg_1,
      I2 => count_r_reg(8),
      O => \count_r[8]_i_9__1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_15\,
      Q => count_r_reg(0),
      R => clear
    );
\count_r_reg[0]_i_2__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2__0_n_0\,
      CO(6) => \count_r_reg[0]_i_2__0_n_1\,
      CO(5) => \count_r_reg[0]_i_2__0_n_2\,
      CO(4) => \count_r_reg[0]_i_2__0_n_3\,
      CO(3) => \count_r_reg[0]_i_2__0_n_4\,
      CO(2) => \count_r_reg[0]_i_2__0_n_5\,
      CO(1) => \count_r_reg[0]_i_2__0_n_6\,
      CO(0) => \count_r_reg[0]_i_2__0_n_7\,
      DI(7) => \count_r[0]_i_3__1_n_0\,
      DI(6) => \count_r[0]_i_4__1_n_0\,
      DI(5) => \count_r[0]_i_5__1_n_0\,
      DI(4) => \count_r[0]_i_6__1_n_0\,
      DI(3) => \count_r[0]_i_7__1_n_0\,
      DI(2) => \count_r[0]_i_8__1_n_0\,
      DI(1) => \count_r[0]_i_9__1_n_0\,
      DI(0) => \count_r[0]_i_10__0_n_0\,
      O(7) => \count_r_reg[0]_i_2__0_n_8\,
      O(6) => \count_r_reg[0]_i_2__0_n_9\,
      O(5) => \count_r_reg[0]_i_2__0_n_10\,
      O(4) => \count_r_reg[0]_i_2__0_n_11\,
      O(3) => \count_r_reg[0]_i_2__0_n_12\,
      O(2) => \count_r_reg[0]_i_2__0_n_13\,
      O(1) => \count_r_reg[0]_i_2__0_n_14\,
      O(0) => \count_r_reg[0]_i_2__0_n_15\,
      S(7) => \count_r[0]_i_11__1_n_0\,
      S(6) => \count_r[0]_i_12__1_n_0\,
      S(5) => \count_r[0]_i_13__1_n_0\,
      S(4) => \count_r[0]_i_14__1_n_0\,
      S(3) => \count_r[0]_i_15__1_n_0\,
      S(2) => \count_r[0]_i_16__1_n_0\,
      S(1) => \count_r[0]_i_17__1_n_0\,
      S(0) => \count_r[0]_i_18__0_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_13\,
      Q => count_r_reg(10),
      R => clear
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_12\,
      Q => count_r_reg(11),
      R => clear
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_11\,
      Q => count_r_reg(12),
      R => clear
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_10\,
      Q => count_r_reg(13),
      R => clear
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_9\,
      Q => count_r_reg(14),
      R => clear
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_8\,
      Q => count_r_reg(15),
      R => clear
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_15\,
      Q => count_r_reg(16),
      R => clear
    );
\count_r_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1__1_n_0\,
      CO(6) => \count_r_reg[16]_i_1__1_n_1\,
      CO(5) => \count_r_reg[16]_i_1__1_n_2\,
      CO(4) => \count_r_reg[16]_i_1__1_n_3\,
      CO(3) => \count_r_reg[16]_i_1__1_n_4\,
      CO(2) => \count_r_reg[16]_i_1__1_n_5\,
      CO(1) => \count_r_reg[16]_i_1__1_n_6\,
      CO(0) => \count_r_reg[16]_i_1__1_n_7\,
      DI(7) => \count_r[16]_i_2__1_n_0\,
      DI(6) => \count_r[16]_i_3__1_n_0\,
      DI(5) => \count_r[16]_i_4__1_n_0\,
      DI(4) => \count_r[16]_i_5__1_n_0\,
      DI(3) => \count_r[16]_i_6__1_n_0\,
      DI(2) => \count_r[16]_i_7__1_n_0\,
      DI(1) => \count_r[16]_i_8__1_n_0\,
      DI(0) => \count_r[16]_i_9__1_n_0\,
      O(7) => \count_r_reg[16]_i_1__1_n_8\,
      O(6) => \count_r_reg[16]_i_1__1_n_9\,
      O(5) => \count_r_reg[16]_i_1__1_n_10\,
      O(4) => \count_r_reg[16]_i_1__1_n_11\,
      O(3) => \count_r_reg[16]_i_1__1_n_12\,
      O(2) => \count_r_reg[16]_i_1__1_n_13\,
      O(1) => \count_r_reg[16]_i_1__1_n_14\,
      O(0) => \count_r_reg[16]_i_1__1_n_15\,
      S(7) => \count_r[16]_i_10__1_n_0\,
      S(6) => \count_r[16]_i_11__1_n_0\,
      S(5) => \count_r[16]_i_12__1_n_0\,
      S(4) => \count_r[16]_i_13__1_n_0\,
      S(3) => \count_r[16]_i_14__1_n_0\,
      S(2) => \count_r[16]_i_15__1_n_0\,
      S(1) => \count_r[16]_i_16__1_n_0\,
      S(0) => \count_r[16]_i_17__1_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_14\,
      Q => count_r_reg(17),
      R => clear
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_13\,
      Q => count_r_reg(18),
      R => clear
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_12\,
      Q => count_r_reg(19),
      R => clear
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_14\,
      Q => count_r_reg(1),
      R => clear
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_11\,
      Q => count_r_reg(20),
      R => clear
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_10\,
      Q => count_r_reg(21),
      R => clear
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_9\,
      Q => count_r_reg(22),
      R => clear
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[16]_i_1__1_n_8\,
      Q => count_r_reg(23),
      R => clear
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_15\,
      Q => count_r_reg(24),
      R => clear
    );
\count_r_reg[24]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1__1_n_0\,
      CO(6) => \count_r_reg[24]_i_1__1_n_1\,
      CO(5) => \count_r_reg[24]_i_1__1_n_2\,
      CO(4) => \count_r_reg[24]_i_1__1_n_3\,
      CO(3) => \count_r_reg[24]_i_1__1_n_4\,
      CO(2) => \count_r_reg[24]_i_1__1_n_5\,
      CO(1) => \count_r_reg[24]_i_1__1_n_6\,
      CO(0) => \count_r_reg[24]_i_1__1_n_7\,
      DI(7) => \count_r[24]_i_2__1_n_0\,
      DI(6) => \count_r[24]_i_3__1_n_0\,
      DI(5) => \count_r[24]_i_4__1_n_0\,
      DI(4) => \count_r[24]_i_5__1_n_0\,
      DI(3) => \count_r[24]_i_6__1_n_0\,
      DI(2) => \count_r[24]_i_7__1_n_0\,
      DI(1) => \count_r[24]_i_8__1_n_0\,
      DI(0) => \count_r[24]_i_9__1_n_0\,
      O(7) => \count_r_reg[24]_i_1__1_n_8\,
      O(6) => \count_r_reg[24]_i_1__1_n_9\,
      O(5) => \count_r_reg[24]_i_1__1_n_10\,
      O(4) => \count_r_reg[24]_i_1__1_n_11\,
      O(3) => \count_r_reg[24]_i_1__1_n_12\,
      O(2) => \count_r_reg[24]_i_1__1_n_13\,
      O(1) => \count_r_reg[24]_i_1__1_n_14\,
      O(0) => \count_r_reg[24]_i_1__1_n_15\,
      S(7) => \count_r[24]_i_10__1_n_0\,
      S(6) => \count_r[24]_i_11__1_n_0\,
      S(5) => \count_r[24]_i_12__1_n_0\,
      S(4) => \count_r[24]_i_13__1_n_0\,
      S(3) => \count_r[24]_i_14__1_n_0\,
      S(2) => \count_r[24]_i_15__1_n_0\,
      S(1) => \count_r[24]_i_16__1_n_0\,
      S(0) => \count_r[24]_i_17__1_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_14\,
      Q => count_r_reg(25),
      R => clear
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_13\,
      Q => count_r_reg(26),
      R => clear
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_12\,
      Q => count_r_reg(27),
      R => clear
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_11\,
      Q => count_r_reg(28),
      R => clear
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_10\,
      Q => count_r_reg(29),
      R => clear
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_13\,
      Q => count_r_reg(2),
      R => clear
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_9\,
      Q => count_r_reg(30),
      R => clear
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[24]_i_1__1_n_8\,
      Q => count_r_reg(31),
      R => clear
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_15\,
      Q => count_r_reg(32),
      R => clear
    );
\count_r_reg[32]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1__1_n_0\,
      CO(6) => \count_r_reg[32]_i_1__1_n_1\,
      CO(5) => \count_r_reg[32]_i_1__1_n_2\,
      CO(4) => \count_r_reg[32]_i_1__1_n_3\,
      CO(3) => \count_r_reg[32]_i_1__1_n_4\,
      CO(2) => \count_r_reg[32]_i_1__1_n_5\,
      CO(1) => \count_r_reg[32]_i_1__1_n_6\,
      CO(0) => \count_r_reg[32]_i_1__1_n_7\,
      DI(7) => \count_r[32]_i_2__1_n_0\,
      DI(6) => \count_r[32]_i_3__1_n_0\,
      DI(5) => \count_r[32]_i_4__1_n_0\,
      DI(4) => \count_r[32]_i_5__1_n_0\,
      DI(3) => \count_r[32]_i_6__1_n_0\,
      DI(2) => \count_r[32]_i_7__1_n_0\,
      DI(1) => \count_r[32]_i_8__1_n_0\,
      DI(0) => \count_r[32]_i_9__1_n_0\,
      O(7) => \count_r_reg[32]_i_1__1_n_8\,
      O(6) => \count_r_reg[32]_i_1__1_n_9\,
      O(5) => \count_r_reg[32]_i_1__1_n_10\,
      O(4) => \count_r_reg[32]_i_1__1_n_11\,
      O(3) => \count_r_reg[32]_i_1__1_n_12\,
      O(2) => \count_r_reg[32]_i_1__1_n_13\,
      O(1) => \count_r_reg[32]_i_1__1_n_14\,
      O(0) => \count_r_reg[32]_i_1__1_n_15\,
      S(7) => \count_r[32]_i_10__1_n_0\,
      S(6) => \count_r[32]_i_11__1_n_0\,
      S(5) => \count_r[32]_i_12__1_n_0\,
      S(4) => \count_r[32]_i_13__1_n_0\,
      S(3) => \count_r[32]_i_14__1_n_0\,
      S(2) => \count_r[32]_i_15__1_n_0\,
      S(1) => \count_r[32]_i_16__1_n_0\,
      S(0) => \count_r[32]_i_17__1_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_14\,
      Q => count_r_reg(33),
      R => clear
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_13\,
      Q => count_r_reg(34),
      R => clear
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_12\,
      Q => count_r_reg(35),
      R => clear
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_11\,
      Q => count_r_reg(36),
      R => clear
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_10\,
      Q => count_r_reg(37),
      R => clear
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_9\,
      Q => count_r_reg(38),
      R => clear
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[32]_i_1__1_n_8\,
      Q => count_r_reg(39),
      R => clear
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_12\,
      Q => count_r_reg(3),
      R => clear
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_15\,
      Q => count_r_reg(40),
      R => clear
    );
\count_r_reg[40]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1__1_n_0\,
      CO(6) => \count_r_reg[40]_i_1__1_n_1\,
      CO(5) => \count_r_reg[40]_i_1__1_n_2\,
      CO(4) => \count_r_reg[40]_i_1__1_n_3\,
      CO(3) => \count_r_reg[40]_i_1__1_n_4\,
      CO(2) => \count_r_reg[40]_i_1__1_n_5\,
      CO(1) => \count_r_reg[40]_i_1__1_n_6\,
      CO(0) => \count_r_reg[40]_i_1__1_n_7\,
      DI(7) => \count_r[40]_i_2__1_n_0\,
      DI(6) => \count_r[40]_i_3__1_n_0\,
      DI(5) => \count_r[40]_i_4__1_n_0\,
      DI(4) => \count_r[40]_i_5__1_n_0\,
      DI(3) => \count_r[40]_i_6__1_n_0\,
      DI(2) => \count_r[40]_i_7__1_n_0\,
      DI(1) => \count_r[40]_i_8__1_n_0\,
      DI(0) => \count_r[40]_i_9__1_n_0\,
      O(7) => \count_r_reg[40]_i_1__1_n_8\,
      O(6) => \count_r_reg[40]_i_1__1_n_9\,
      O(5) => \count_r_reg[40]_i_1__1_n_10\,
      O(4) => \count_r_reg[40]_i_1__1_n_11\,
      O(3) => \count_r_reg[40]_i_1__1_n_12\,
      O(2) => \count_r_reg[40]_i_1__1_n_13\,
      O(1) => \count_r_reg[40]_i_1__1_n_14\,
      O(0) => \count_r_reg[40]_i_1__1_n_15\,
      S(7) => \count_r[40]_i_10__1_n_0\,
      S(6) => \count_r[40]_i_11__1_n_0\,
      S(5) => \count_r[40]_i_12__1_n_0\,
      S(4) => \count_r[40]_i_13__1_n_0\,
      S(3) => \count_r[40]_i_14__1_n_0\,
      S(2) => \count_r[40]_i_15__1_n_0\,
      S(1) => \count_r[40]_i_16__1_n_0\,
      S(0) => \count_r[40]_i_17__1_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_14\,
      Q => count_r_reg(41),
      R => clear
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_13\,
      Q => count_r_reg(42),
      R => clear
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_12\,
      Q => count_r_reg(43),
      R => clear
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_11\,
      Q => count_r_reg(44),
      R => clear
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_10\,
      Q => count_r_reg(45),
      R => clear
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_9\,
      Q => count_r_reg(46),
      R => clear
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[40]_i_1__1_n_8\,
      Q => count_r_reg(47),
      R => clear
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_15\,
      Q => count_r_reg(48),
      R => clear
    );
\count_r_reg[48]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \count_r_reg[48]_i_1__1_n_2\,
      CO(4) => \count_r_reg[48]_i_1__1_n_3\,
      CO(3) => \count_r_reg[48]_i_1__1_n_4\,
      CO(2) => \count_r_reg[48]_i_1__1_n_5\,
      CO(1) => \count_r_reg[48]_i_1__1_n_6\,
      CO(0) => \count_r_reg[48]_i_1__1_n_7\,
      DI(7 downto 6) => B"00",
      DI(5) => \count_r[48]_i_2__1_n_0\,
      DI(4) => \count_r[48]_i_3__1_n_0\,
      DI(3) => \count_r[48]_i_4__1_n_0\,
      DI(2) => \count_r[48]_i_5__1_n_0\,
      DI(1) => \count_r[48]_i_6__1_n_0\,
      DI(0) => \count_r[48]_i_7__1_n_0\,
      O(7) => \NLW_count_r_reg[48]_i_1__1_O_UNCONNECTED\(7),
      O(6) => \count_r_reg[48]_i_1__1_n_9\,
      O(5) => \count_r_reg[48]_i_1__1_n_10\,
      O(4) => \count_r_reg[48]_i_1__1_n_11\,
      O(3) => \count_r_reg[48]_i_1__1_n_12\,
      O(2) => \count_r_reg[48]_i_1__1_n_13\,
      O(1) => \count_r_reg[48]_i_1__1_n_14\,
      O(0) => \count_r_reg[48]_i_1__1_n_15\,
      S(7) => '0',
      S(6) => \count_r[48]_i_8__0_n_0\,
      S(5) => \count_r[48]_i_9__1_n_0\,
      S(4) => \count_r[48]_i_10__1_n_0\,
      S(3) => \count_r[48]_i_11__1_n_0\,
      S(2) => \count_r[48]_i_12__1_n_0\,
      S(1) => \count_r[48]_i_13__1_n_0\,
      S(0) => \count_r[48]_i_14__1_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_14\,
      Q => count_r_reg(49),
      R => clear
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_11\,
      Q => count_r_reg(4),
      R => clear
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_13\,
      Q => count_r_reg(50),
      R => clear
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_12\,
      Q => count_r_reg(51),
      R => clear
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_11\,
      Q => count_r_reg(52),
      R => clear
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_10\,
      Q => count_r_reg(53),
      R => clear
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[48]_i_1__1_n_9\,
      Q => count_r_reg(54),
      R => clear
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_10\,
      Q => count_r_reg(5),
      R => clear
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_9\,
      Q => count_r_reg(6),
      R => clear
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[0]_i_2__0_n_8\,
      Q => count_r_reg(7),
      R => clear
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_15\,
      Q => count_r_reg(8),
      R => clear
    );
\count_r_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__1_n_0\,
      CO(6) => \count_r_reg[8]_i_1__1_n_1\,
      CO(5) => \count_r_reg[8]_i_1__1_n_2\,
      CO(4) => \count_r_reg[8]_i_1__1_n_3\,
      CO(3) => \count_r_reg[8]_i_1__1_n_4\,
      CO(2) => \count_r_reg[8]_i_1__1_n_5\,
      CO(1) => \count_r_reg[8]_i_1__1_n_6\,
      CO(0) => \count_r_reg[8]_i_1__1_n_7\,
      DI(7) => \count_r[8]_i_2__1_n_0\,
      DI(6) => \count_r[8]_i_3__1_n_0\,
      DI(5) => \count_r[8]_i_4__1_n_0\,
      DI(4) => \count_r[8]_i_5__1_n_0\,
      DI(3) => \count_r[8]_i_6__1_n_0\,
      DI(2) => \count_r[8]_i_7__1_n_0\,
      DI(1) => \count_r[8]_i_8__1_n_0\,
      DI(0) => \count_r[8]_i_9__1_n_0\,
      O(7) => \count_r_reg[8]_i_1__1_n_8\,
      O(6) => \count_r_reg[8]_i_1__1_n_9\,
      O(5) => \count_r_reg[8]_i_1__1_n_10\,
      O(4) => \count_r_reg[8]_i_1__1_n_11\,
      O(3) => \count_r_reg[8]_i_1__1_n_12\,
      O(2) => \count_r_reg[8]_i_1__1_n_13\,
      O(1) => \count_r_reg[8]_i_1__1_n_14\,
      O(0) => \count_r_reg[8]_i_1__1_n_15\,
      S(7) => \count_r[8]_i_10__1_n_0\,
      S(6) => \count_r[8]_i_11__1_n_0\,
      S(5) => \count_r[8]_i_12__1_n_0\,
      S(4) => \count_r[8]_i_13__1_n_0\,
      S(3) => \count_r[8]_i_14__1_n_0\,
      S(2) => \count_r[8]_i_15__1_n_0\,
      S(1) => \count_r[8]_i_16__1_n_0\,
      S(0) => \count_r[8]_i_17__1_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_zero_r,
      D => \count_r_reg[8]_i_1__1_n_14\,
      Q => count_r_reg(9),
      R => clear
    );
is_zero_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => w_running,
      I1 => s_axis_tvalid,
      I2 => m_axi_WREADY,
      I3 => \^total_len_r_reg[10]\,
      O => E(0)
    );
is_zero_r_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => count_r_reg(23),
      I2 => count_r_reg(11),
      I3 => count_r_reg(4),
      O => is_zero_r_i_11_n_0
    );
is_zero_r_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => count_r_reg(7),
      I2 => count_r_reg(14),
      I3 => count_r_reg(12),
      O => is_zero_r_i_12_n_0
    );
is_zero_r_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => count_r_reg(5),
      I2 => count_r_reg(44),
      I3 => count_r_reg(41),
      O => is_zero_r_i_13_n_0
    );
is_zero_r_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => count_r_reg(9),
      I2 => count_r_reg(28),
      I3 => count_r_reg(15),
      O => is_zero_r_i_14_n_0
    );
is_zero_r_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => count_r_reg(29),
      I2 => count_r_reg(47),
      I3 => count_r_reg(39),
      O => is_zero_r_i_15_n_0
    );
is_zero_r_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => count_r_reg(37),
      I2 => count_r_reg(33),
      I3 => count_r_reg(32),
      O => is_zero_r_i_16_n_0
    );
is_zero_r_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => count_r_reg(25),
      I2 => count_r_reg(24),
      I3 => count_r_reg(18),
      O => is_zero_r_i_17_n_0
    );
is_zero_r_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => count_r_reg(50),
      I2 => count_r_reg(22),
      I3 => count_r_reg(1),
      O => is_zero_r_i_18_n_0
    );
is_zero_r_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => count_r_reg(26),
      I2 => count_r_reg(40),
      I3 => count_r_reg(36),
      O => is_zero_r_i_19_n_0
    );
\is_zero_r_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => \^total_len_r_reg[10]\,
      I1 => is_zero_r_reg_3,
      I2 => is_zero_r_reg_1,
      I3 => is_zero_r,
      I4 => \^is_zero_r_reg_0\,
      O => \is_zero_r_i_1__4_n_0\
    );
is_zero_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^total_len_r_reg[10]\,
      I5 => is_zero_r_reg_2,
      O => \final_burst_len_reg[1]\
    );
is_zero_r_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => count_r_reg(21),
      I2 => count_r_reg(30),
      I3 => count_r_reg(19),
      O => is_zero_r_i_21_n_0
    );
is_zero_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => is_zero_r_reg_3,
      I1 => is_zero_r_i_5_n_0,
      I2 => is_zero_r_i_6_n_0,
      I3 => is_zero_r_i_7_n_0,
      I4 => is_zero_r_i_8_n_0,
      I5 => is_zero_r_i_9_n_0,
      O => \^total_len_r_reg[10]\
    );
is_zero_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => is_zero_r_i_11_n_0,
      I1 => is_zero_r_i_12_n_0,
      I2 => is_zero_r_i_13_n_0,
      I3 => count_r_reg(6),
      I4 => count_r_reg(3),
      I5 => count_r_reg(2),
      O => is_zero_r_i_5_n_0
    );
is_zero_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => is_zero_r_i_14_n_0,
      I1 => is_zero_r_i_15_n_0,
      I2 => is_zero_r_i_16_n_0,
      I3 => is_zero_r_i_17_n_0,
      O => is_zero_r_i_6_n_0
    );
is_zero_r_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => count_r_reg(54),
      I2 => count_r_reg(17),
      I3 => count_r_reg(20),
      I4 => is_zero_r_i_18_n_0,
      O => is_zero_r_i_7_n_0
    );
is_zero_r_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => count_r_reg(53),
      I2 => count_r_reg(13),
      I3 => count_r_reg(16),
      I4 => is_zero_r_i_19_n_0,
      O => is_zero_r_i_8_n_0
    );
is_zero_r_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => is_zero_r_i_3_0,
      I1 => is_zero_r_i_21_n_0,
      I2 => count_r_reg(48),
      I3 => count_r_reg(34),
      I4 => count_r_reg(45),
      I5 => count_r_reg(35),
      O => is_zero_r_i_9_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \is_zero_r_i_1__4_n_0\,
      Q => \^is_zero_r_reg_0\,
      S => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  port (
    m_axi_AWREADY_0 : out STD_LOGIC;
    m_axi_AWREADY_1 : out STD_LOGIC;
    clear : in STD_LOGIC;
    clk : in STD_LOGIC;
    wfirst_pulse : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    stall_aw : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  signal \count_r[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal idle_aw : STD_LOGIC;
  signal \is_zero_r_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_axi_awready_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[1]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_r[3]_i_3\ : label is "soft_lutpair7";
begin
  m_axi_AWREADY_0 <= \^m_axi_awready_0\;
awvalid_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5053"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => idle_aw,
      I2 => is_zero_r_reg_0,
      I3 => stall_aw,
      O => m_axi_AWREADY_1
    );
\count_r[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__2_n_0\
    );
\count_r[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6665999"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => wfirst_pulse,
      I2 => is_zero_r_reg_0,
      I3 => m_axi_AWREADY,
      I4 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1__1_n_0\
    );
\count_r[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => is_zero_r_reg_0,
      I2 => wfirst_pulse,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[2]_i_1__1_n_0\
    );
\count_r[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wfirst_pulse,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      O => \count_r[3]_i_1__1_n_0\
    );
\count_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \count_r_reg_n_0_[3]\,
      I1 => \count_r_reg_n_0_[2]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => wfirst_pulse,
      I4 => \^m_axi_awready_0\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[3]_i_2_n_0\
    );
\count_r[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => is_zero_r_reg_0,
      O => \^m_axi_awready_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[0]_i_1__2_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => clear
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[1]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => clear
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[2]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => clear
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[3]_i_2_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => clear
    );
\is_zero_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000002280000000"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => wfirst_pulse,
      I3 => \count_r_reg_n_0_[3]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \^m_axi_awready_0\,
      O => \is_zero_r_i_1__2_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \is_zero_r_i_1__2_n_0\,
      Q => idle_aw,
      S => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ is
  port (
    stall_aw : out STD_LOGIC;
    clear : in STD_LOGIC;
    clk : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    \count_r_reg[3]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ is
  signal \count_r[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \is_zero_r_i_1__3_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_r[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \is_zero_r_i_1__3\ : label is "soft_lutpair1";
begin
\count_r[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__3_n_0\
    );
\count_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      I3 => m_axi_BVALID,
      I4 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1__0_n_0\
    );
\count_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FF4000BF"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => m_axi_AWREADY,
      I2 => is_zero_r_reg_0,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[2]_i_1__0_n_0\
    );
\count_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFBA0045"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => m_axi_BVALID,
      I2 => \count_r_reg[3]_0\,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[3]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[3]_i_1__0_n_0\
    );
\count_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      O => \count_r[4]_i_1_n_0\
    );
\count_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \count_r_reg_n_0_[4]\,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r[4]_i_3_n_0\,
      I4 => \count_r_reg_n_0_[0]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[4]_i_2_n_0\
    );
\count_r[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => is_zero_r_reg_0,
      I1 => m_axi_AWREADY,
      I2 => m_axi_BVALID,
      O => \count_r[4]_i_3_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[0]_i_1__3_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => clear
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[1]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => clear
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[2]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => clear
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[3]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => clear
    );
\count_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[4]_i_2_n_0\,
      Q => \count_r_reg_n_0_[4]\,
      S => clear
    );
\is_zero_r_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \is_zero_r_i_2__0_n_0\,
      O => \is_zero_r_i_1__3_n_0\
    );
\is_zero_r_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFFFFDFFFFFFFD"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => \count_r_reg_n_0_[4]\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r_reg_n_0_[2]\,
      I4 => \count_r_reg_n_0_[1]\,
      I5 => \count_r_reg[3]_0\,
      O => \is_zero_r_i_2__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \is_zero_r_i_1__3_n_0\,
      Q => stall_aw,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  port (
    awvalid_r_reg_0 : out STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ctrl_done : out STD_LOGIC;
    m_axi_WVALID : out STD_LOGIC;
    is_zero_r_reg : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    clk : in STD_LOGIC;
    req_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ctrl_start : in STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 54 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  signal \addr[15]_i_10_n_0\ : STD_LOGIC;
  signal \addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \addr[15]_i_4_n_0\ : STD_LOGIC;
  signal \addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \addr[15]_i_8_n_0\ : STD_LOGIC;
  signal \addr[15]_i_9_n_0\ : STD_LOGIC;
  signal \addr[23]_i_2_n_0\ : STD_LOGIC;
  signal \addr[23]_i_3_n_0\ : STD_LOGIC;
  signal \addr[23]_i_4_n_0\ : STD_LOGIC;
  signal \addr[23]_i_5_n_0\ : STD_LOGIC;
  signal \addr[23]_i_6_n_0\ : STD_LOGIC;
  signal \addr[23]_i_7_n_0\ : STD_LOGIC;
  signal \addr[23]_i_8_n_0\ : STD_LOGIC;
  signal \addr[23]_i_9_n_0\ : STD_LOGIC;
  signal \addr[31]_i_2_n_0\ : STD_LOGIC;
  signal \addr[31]_i_3_n_0\ : STD_LOGIC;
  signal \addr[31]_i_4_n_0\ : STD_LOGIC;
  signal \addr[31]_i_5_n_0\ : STD_LOGIC;
  signal \addr[31]_i_6_n_0\ : STD_LOGIC;
  signal \addr[31]_i_7_n_0\ : STD_LOGIC;
  signal \addr[31]_i_8_n_0\ : STD_LOGIC;
  signal \addr[31]_i_9_n_0\ : STD_LOGIC;
  signal \addr[39]_i_2_n_0\ : STD_LOGIC;
  signal \addr[39]_i_3_n_0\ : STD_LOGIC;
  signal \addr[39]_i_4_n_0\ : STD_LOGIC;
  signal \addr[39]_i_5_n_0\ : STD_LOGIC;
  signal \addr[39]_i_6_n_0\ : STD_LOGIC;
  signal \addr[39]_i_7_n_0\ : STD_LOGIC;
  signal \addr[39]_i_8_n_0\ : STD_LOGIC;
  signal \addr[39]_i_9_n_0\ : STD_LOGIC;
  signal \addr[47]_i_2_n_0\ : STD_LOGIC;
  signal \addr[47]_i_3_n_0\ : STD_LOGIC;
  signal \addr[47]_i_4_n_0\ : STD_LOGIC;
  signal \addr[47]_i_5_n_0\ : STD_LOGIC;
  signal \addr[47]_i_6_n_0\ : STD_LOGIC;
  signal \addr[47]_i_7_n_0\ : STD_LOGIC;
  signal \addr[47]_i_8_n_0\ : STD_LOGIC;
  signal \addr[47]_i_9_n_0\ : STD_LOGIC;
  signal \addr[55]_i_2_n_0\ : STD_LOGIC;
  signal \addr[55]_i_3_n_0\ : STD_LOGIC;
  signal \addr[55]_i_4_n_0\ : STD_LOGIC;
  signal \addr[55]_i_5_n_0\ : STD_LOGIC;
  signal \addr[55]_i_6_n_0\ : STD_LOGIC;
  signal \addr[55]_i_7_n_0\ : STD_LOGIC;
  signal \addr[55]_i_8_n_0\ : STD_LOGIC;
  signal \addr[55]_i_9_n_0\ : STD_LOGIC;
  signal \addr[63]_i_10_n_0\ : STD_LOGIC;
  signal \addr[63]_i_3_n_0\ : STD_LOGIC;
  signal \addr[63]_i_4_n_0\ : STD_LOGIC;
  signal \addr[63]_i_5_n_0\ : STD_LOGIC;
  signal \addr[63]_i_6_n_0\ : STD_LOGIC;
  signal \addr[63]_i_7_n_0\ : STD_LOGIC;
  signal \addr[63]_i_8_n_0\ : STD_LOGIC;
  signal \addr[63]_i_9_n_0\ : STD_LOGIC;
  signal addr_offset_r : STD_LOGIC_VECTOR ( 63 downto 9 );
  signal \addr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[39]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[47]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[55]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_10\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_11\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_12\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_13\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_14\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_15\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_8\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_9\ : STD_LOGIC;
  signal \^awvalid_r_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal ctrl_start_d1 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal done0 : STD_LOGIC;
  signal final_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_aw_transaction_cntr_n_1 : STD_LOGIC;
  signal inst_b_transaction_cntr_n_0 : STD_LOGIC;
  signal inst_burst_cntr_n_1 : STD_LOGIC;
  signal inst_burst_cntr_n_3 : STD_LOGIC;
  signal inst_burst_cntr_n_4 : STD_LOGIC;
  signal inst_burst_cntr_n_5 : STD_LOGIC;
  signal inst_burst_cntr_n_6 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_0 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_1 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_0 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_1 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_2 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_3 : STD_LOGIC;
  signal is_zero_r : STD_LOGIC;
  signal is_zero_r_0 : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal stall_aw : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \start_reg_rep__0_n_0\ : STD_LOGIC;
  signal start_reg_rep_n_0 : STD_LOGIC;
  signal total_len_r1 : STD_LOGIC_VECTOR ( 58 downto 0 );
  signal \total_len_r[21]_i_2_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_3_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_4_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_5_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_6_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_7_n_0\ : STD_LOGIC;
  signal \total_len_r[21]_i_8_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_8_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_9_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \total_len_r_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \total_len_r_reg[58]_rep__0_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[58]_rep_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[3]\ : STD_LOGIC;
  signal w_running : STD_LOGIC;
  signal wfirst : STD_LOGIC;
  signal wfirst_d1 : STD_LOGIC;
  signal wfirst_d10 : STD_LOGIC;
  signal wfirst_pulse : STD_LOGIC;
  signal wfirst_pulse0 : STD_LOGIC;
  signal \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_total_len_r_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[39]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[47]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[55]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[63]_i_2\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axi_WVALID_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair9";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of start_reg : label is "start_reg";
  attribute ORIG_CELL_NAME of start_reg_rep : label is "start_reg";
  attribute ORIG_CELL_NAME of \start_reg_rep__0\ : label is "start_reg";
  attribute ORIG_CELL_NAME of \total_len_r_reg[58]\ : label is "total_len_r_reg[58]";
  attribute ORIG_CELL_NAME of \total_len_r_reg[58]_rep\ : label is "total_len_r_reg[58]";
  attribute ORIG_CELL_NAME of \total_len_r_reg[58]_rep__0\ : label is "total_len_r_reg[58]";
  attribute SOFT_HLUTNM of wfirst_d1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of wfirst_pulse_i_1 : label is "soft_lutpair8";
begin
  awvalid_r_reg_0 <= \^awvalid_r_reg_0\;
  m_axi_AWADDR(55 downto 0) <= \^m_axi_awaddr\(55 downto 0);
\addr[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => start,
      O => \addr[15]_i_10_n_0\
    );
\addr[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(9),
      I1 => start,
      I2 => \^m_axi_awaddr\(1),
      O => \addr[15]_i_2_n_0\
    );
\addr[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(15),
      I1 => start,
      I2 => \^m_axi_awaddr\(7),
      O => \addr[15]_i_3_n_0\
    );
\addr[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(14),
      I1 => start,
      I2 => \^m_axi_awaddr\(6),
      O => \addr[15]_i_4_n_0\
    );
\addr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(13),
      I1 => start,
      I2 => \^m_axi_awaddr\(5),
      O => \addr[15]_i_5_n_0\
    );
\addr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(12),
      I1 => start,
      I2 => \^m_axi_awaddr\(4),
      O => \addr[15]_i_6_n_0\
    );
\addr[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(11),
      I1 => start,
      I2 => \^m_axi_awaddr\(3),
      O => \addr[15]_i_7_n_0\
    );
\addr[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(10),
      I1 => start,
      I2 => \^m_axi_awaddr\(2),
      O => \addr[15]_i_8_n_0\
    );
\addr[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => addr_offset_r(9),
      I2 => start,
      O => \addr[15]_i_9_n_0\
    );
\addr[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(23),
      I1 => start,
      I2 => \^m_axi_awaddr\(15),
      O => \addr[23]_i_2_n_0\
    );
\addr[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(22),
      I1 => start,
      I2 => \^m_axi_awaddr\(14),
      O => \addr[23]_i_3_n_0\
    );
\addr[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(21),
      I1 => start,
      I2 => \^m_axi_awaddr\(13),
      O => \addr[23]_i_4_n_0\
    );
\addr[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(20),
      I1 => start,
      I2 => \^m_axi_awaddr\(12),
      O => \addr[23]_i_5_n_0\
    );
\addr[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(19),
      I1 => start,
      I2 => \^m_axi_awaddr\(11),
      O => \addr[23]_i_6_n_0\
    );
\addr[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(18),
      I1 => start,
      I2 => \^m_axi_awaddr\(10),
      O => \addr[23]_i_7_n_0\
    );
\addr[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(17),
      I1 => start,
      I2 => \^m_axi_awaddr\(9),
      O => \addr[23]_i_8_n_0\
    );
\addr[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(16),
      I1 => start,
      I2 => \^m_axi_awaddr\(8),
      O => \addr[23]_i_9_n_0\
    );
\addr[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(31),
      I1 => start,
      I2 => \^m_axi_awaddr\(23),
      O => \addr[31]_i_2_n_0\
    );
\addr[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(30),
      I1 => start,
      I2 => \^m_axi_awaddr\(22),
      O => \addr[31]_i_3_n_0\
    );
\addr[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(29),
      I1 => start,
      I2 => \^m_axi_awaddr\(21),
      O => \addr[31]_i_4_n_0\
    );
\addr[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(28),
      I1 => start,
      I2 => \^m_axi_awaddr\(20),
      O => \addr[31]_i_5_n_0\
    );
\addr[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(27),
      I1 => start,
      I2 => \^m_axi_awaddr\(19),
      O => \addr[31]_i_6_n_0\
    );
\addr[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(26),
      I1 => start,
      I2 => \^m_axi_awaddr\(18),
      O => \addr[31]_i_7_n_0\
    );
\addr[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(25),
      I1 => start,
      I2 => \^m_axi_awaddr\(17),
      O => \addr[31]_i_8_n_0\
    );
\addr[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(24),
      I1 => start,
      I2 => \^m_axi_awaddr\(16),
      O => \addr[31]_i_9_n_0\
    );
\addr[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(39),
      I1 => start,
      I2 => \^m_axi_awaddr\(31),
      O => \addr[39]_i_2_n_0\
    );
\addr[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(38),
      I1 => start,
      I2 => \^m_axi_awaddr\(30),
      O => \addr[39]_i_3_n_0\
    );
\addr[39]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(37),
      I1 => start,
      I2 => \^m_axi_awaddr\(29),
      O => \addr[39]_i_4_n_0\
    );
\addr[39]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(36),
      I1 => start,
      I2 => \^m_axi_awaddr\(28),
      O => \addr[39]_i_5_n_0\
    );
\addr[39]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(35),
      I1 => start,
      I2 => \^m_axi_awaddr\(27),
      O => \addr[39]_i_6_n_0\
    );
\addr[39]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(34),
      I1 => start,
      I2 => \^m_axi_awaddr\(26),
      O => \addr[39]_i_7_n_0\
    );
\addr[39]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(33),
      I1 => start,
      I2 => \^m_axi_awaddr\(25),
      O => \addr[39]_i_8_n_0\
    );
\addr[39]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(32),
      I1 => start,
      I2 => \^m_axi_awaddr\(24),
      O => \addr[39]_i_9_n_0\
    );
\addr[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(47),
      I1 => start,
      I2 => \^m_axi_awaddr\(39),
      O => \addr[47]_i_2_n_0\
    );
\addr[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(46),
      I1 => start,
      I2 => \^m_axi_awaddr\(38),
      O => \addr[47]_i_3_n_0\
    );
\addr[47]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(45),
      I1 => start,
      I2 => \^m_axi_awaddr\(37),
      O => \addr[47]_i_4_n_0\
    );
\addr[47]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(44),
      I1 => start,
      I2 => \^m_axi_awaddr\(36),
      O => \addr[47]_i_5_n_0\
    );
\addr[47]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(43),
      I1 => start,
      I2 => \^m_axi_awaddr\(35),
      O => \addr[47]_i_6_n_0\
    );
\addr[47]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(42),
      I1 => start,
      I2 => \^m_axi_awaddr\(34),
      O => \addr[47]_i_7_n_0\
    );
\addr[47]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(41),
      I1 => start,
      I2 => \^m_axi_awaddr\(33),
      O => \addr[47]_i_8_n_0\
    );
\addr[47]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(40),
      I1 => start,
      I2 => \^m_axi_awaddr\(32),
      O => \addr[47]_i_9_n_0\
    );
\addr[55]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(55),
      I1 => start,
      I2 => \^m_axi_awaddr\(47),
      O => \addr[55]_i_2_n_0\
    );
\addr[55]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(54),
      I1 => start,
      I2 => \^m_axi_awaddr\(46),
      O => \addr[55]_i_3_n_0\
    );
\addr[55]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(53),
      I1 => start,
      I2 => \^m_axi_awaddr\(45),
      O => \addr[55]_i_4_n_0\
    );
\addr[55]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(52),
      I1 => start,
      I2 => \^m_axi_awaddr\(44),
      O => \addr[55]_i_5_n_0\
    );
\addr[55]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(51),
      I1 => start,
      I2 => \^m_axi_awaddr\(43),
      O => \addr[55]_i_6_n_0\
    );
\addr[55]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(50),
      I1 => start,
      I2 => \^m_axi_awaddr\(42),
      O => \addr[55]_i_7_n_0\
    );
\addr[55]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(49),
      I1 => start,
      I2 => \^m_axi_awaddr\(41),
      O => \addr[55]_i_8_n_0\
    );
\addr[55]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(48),
      I1 => start,
      I2 => \^m_axi_awaddr\(40),
      O => \addr[55]_i_9_n_0\
    );
\addr[63]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(56),
      I1 => start,
      I2 => \^m_axi_awaddr\(48),
      O => \addr[63]_i_10_n_0\
    );
\addr[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(63),
      I1 => start,
      I2 => \^m_axi_awaddr\(55),
      O => \addr[63]_i_3_n_0\
    );
\addr[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(62),
      I1 => start,
      I2 => \^m_axi_awaddr\(54),
      O => \addr[63]_i_4_n_0\
    );
\addr[63]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(61),
      I1 => start,
      I2 => \^m_axi_awaddr\(53),
      O => \addr[63]_i_5_n_0\
    );
\addr[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(60),
      I1 => start,
      I2 => \^m_axi_awaddr\(52),
      O => \addr[63]_i_6_n_0\
    );
\addr[63]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(59),
      I1 => start,
      I2 => \^m_axi_awaddr\(51),
      O => \addr[63]_i_7_n_0\
    );
\addr[63]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(58),
      I1 => start,
      I2 => \^m_axi_awaddr\(50),
      O => \addr[63]_i_8_n_0\
    );
\addr[63]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(57),
      I1 => start,
      I2 => \^m_axi_awaddr\(49),
      O => \addr[63]_i_9_n_0\
    );
\addr_offset_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(1),
      Q => addr_offset_r(10),
      R => '0'
    );
\addr_offset_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(2),
      Q => addr_offset_r(11),
      R => '0'
    );
\addr_offset_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(3),
      Q => addr_offset_r(12),
      R => '0'
    );
\addr_offset_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(4),
      Q => addr_offset_r(13),
      R => '0'
    );
\addr_offset_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(5),
      Q => addr_offset_r(14),
      R => '0'
    );
\addr_offset_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(6),
      Q => addr_offset_r(15),
      R => '0'
    );
\addr_offset_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(7),
      Q => addr_offset_r(16),
      R => '0'
    );
\addr_offset_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(8),
      Q => addr_offset_r(17),
      R => '0'
    );
\addr_offset_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(9),
      Q => addr_offset_r(18),
      R => '0'
    );
\addr_offset_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(10),
      Q => addr_offset_r(19),
      R => '0'
    );
\addr_offset_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(11),
      Q => addr_offset_r(20),
      R => '0'
    );
\addr_offset_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(12),
      Q => addr_offset_r(21),
      R => '0'
    );
\addr_offset_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(13),
      Q => addr_offset_r(22),
      R => '0'
    );
\addr_offset_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(14),
      Q => addr_offset_r(23),
      R => '0'
    );
\addr_offset_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(15),
      Q => addr_offset_r(24),
      R => '0'
    );
\addr_offset_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(16),
      Q => addr_offset_r(25),
      R => '0'
    );
\addr_offset_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(17),
      Q => addr_offset_r(26),
      R => '0'
    );
\addr_offset_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(18),
      Q => addr_offset_r(27),
      R => '0'
    );
\addr_offset_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(19),
      Q => addr_offset_r(28),
      R => '0'
    );
\addr_offset_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(20),
      Q => addr_offset_r(29),
      R => '0'
    );
\addr_offset_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(21),
      Q => addr_offset_r(30),
      R => '0'
    );
\addr_offset_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(22),
      Q => addr_offset_r(31),
      R => '0'
    );
\addr_offset_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(23),
      Q => addr_offset_r(32),
      R => '0'
    );
\addr_offset_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(24),
      Q => addr_offset_r(33),
      R => '0'
    );
\addr_offset_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(25),
      Q => addr_offset_r(34),
      R => '0'
    );
\addr_offset_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(26),
      Q => addr_offset_r(35),
      R => '0'
    );
\addr_offset_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(27),
      Q => addr_offset_r(36),
      R => '0'
    );
\addr_offset_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(28),
      Q => addr_offset_r(37),
      R => '0'
    );
\addr_offset_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(29),
      Q => addr_offset_r(38),
      R => '0'
    );
\addr_offset_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(30),
      Q => addr_offset_r(39),
      R => '0'
    );
\addr_offset_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(31),
      Q => addr_offset_r(40),
      R => '0'
    );
\addr_offset_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(32),
      Q => addr_offset_r(41),
      R => '0'
    );
\addr_offset_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(33),
      Q => addr_offset_r(42),
      R => '0'
    );
\addr_offset_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(34),
      Q => addr_offset_r(43),
      R => '0'
    );
\addr_offset_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(35),
      Q => addr_offset_r(44),
      R => '0'
    );
\addr_offset_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(36),
      Q => addr_offset_r(45),
      R => '0'
    );
\addr_offset_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(37),
      Q => addr_offset_r(46),
      R => '0'
    );
\addr_offset_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(38),
      Q => addr_offset_r(47),
      R => '0'
    );
\addr_offset_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(39),
      Q => addr_offset_r(48),
      R => '0'
    );
\addr_offset_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(40),
      Q => addr_offset_r(49),
      R => '0'
    );
\addr_offset_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(41),
      Q => addr_offset_r(50),
      R => '0'
    );
\addr_offset_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(42),
      Q => addr_offset_r(51),
      R => '0'
    );
\addr_offset_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(43),
      Q => addr_offset_r(52),
      R => '0'
    );
\addr_offset_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(44),
      Q => addr_offset_r(53),
      R => '0'
    );
\addr_offset_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(45),
      Q => addr_offset_r(54),
      R => '0'
    );
\addr_offset_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(46),
      Q => addr_offset_r(55),
      R => '0'
    );
\addr_offset_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(47),
      Q => addr_offset_r(56),
      R => '0'
    );
\addr_offset_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(48),
      Q => addr_offset_r(57),
      R => '0'
    );
\addr_offset_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(49),
      Q => addr_offset_r(58),
      R => '0'
    );
\addr_offset_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(50),
      Q => addr_offset_r(59),
      R => '0'
    );
\addr_offset_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(51),
      Q => addr_offset_r(60),
      R => '0'
    );
\addr_offset_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(52),
      Q => addr_offset_r(61),
      R => '0'
    );
\addr_offset_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(53),
      Q => addr_offset_r(62),
      R => '0'
    );
\addr_offset_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(54),
      Q => addr_offset_r(63),
      R => '0'
    );
\addr_offset_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(0),
      Q => addr_offset_r(9),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_13\,
      Q => \^m_axi_awaddr\(2),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_12\,
      Q => \^m_axi_awaddr\(3),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_11\,
      Q => \^m_axi_awaddr\(4),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_10\,
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_9\,
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_8\,
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\addr_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \addr_reg[15]_i_1_n_0\,
      CO(6) => \addr_reg[15]_i_1_n_1\,
      CO(5) => \addr_reg[15]_i_1_n_2\,
      CO(4) => \addr_reg[15]_i_1_n_3\,
      CO(3) => \addr_reg[15]_i_1_n_4\,
      CO(2) => \addr_reg[15]_i_1_n_5\,
      CO(1) => \addr_reg[15]_i_1_n_6\,
      CO(0) => \addr_reg[15]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \addr[15]_i_2_n_0\,
      DI(0) => '0',
      O(7) => \addr_reg[15]_i_1_n_8\,
      O(6) => \addr_reg[15]_i_1_n_9\,
      O(5) => \addr_reg[15]_i_1_n_10\,
      O(4) => \addr_reg[15]_i_1_n_11\,
      O(3) => \addr_reg[15]_i_1_n_12\,
      O(2) => \addr_reg[15]_i_1_n_13\,
      O(1) => \addr_reg[15]_i_1_n_14\,
      O(0) => \addr_reg[15]_i_1_n_15\,
      S(7) => \addr[15]_i_3_n_0\,
      S(6) => \addr[15]_i_4_n_0\,
      S(5) => \addr[15]_i_5_n_0\,
      S(4) => \addr[15]_i_6_n_0\,
      S(3) => \addr[15]_i_7_n_0\,
      S(2) => \addr[15]_i_8_n_0\,
      S(1) => \addr[15]_i_9_n_0\,
      S(0) => \addr[15]_i_10_n_0\
    );
\addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_15\,
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_14\,
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
\addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_13\,
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_12\,
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_11\,
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_10\,
      Q => \^m_axi_awaddr\(13),
      R => '0'
    );
\addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_9\,
      Q => \^m_axi_awaddr\(14),
      R => '0'
    );
\addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[23]_i_1_n_8\,
      Q => \^m_axi_awaddr\(15),
      R => '0'
    );
\addr_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[23]_i_1_n_0\,
      CO(6) => \addr_reg[23]_i_1_n_1\,
      CO(5) => \addr_reg[23]_i_1_n_2\,
      CO(4) => \addr_reg[23]_i_1_n_3\,
      CO(3) => \addr_reg[23]_i_1_n_4\,
      CO(2) => \addr_reg[23]_i_1_n_5\,
      CO(1) => \addr_reg[23]_i_1_n_6\,
      CO(0) => \addr_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[23]_i_1_n_8\,
      O(6) => \addr_reg[23]_i_1_n_9\,
      O(5) => \addr_reg[23]_i_1_n_10\,
      O(4) => \addr_reg[23]_i_1_n_11\,
      O(3) => \addr_reg[23]_i_1_n_12\,
      O(2) => \addr_reg[23]_i_1_n_13\,
      O(1) => \addr_reg[23]_i_1_n_14\,
      O(0) => \addr_reg[23]_i_1_n_15\,
      S(7) => \addr[23]_i_2_n_0\,
      S(6) => \addr[23]_i_3_n_0\,
      S(5) => \addr[23]_i_4_n_0\,
      S(4) => \addr[23]_i_5_n_0\,
      S(3) => \addr[23]_i_6_n_0\,
      S(2) => \addr[23]_i_7_n_0\,
      S(1) => \addr[23]_i_8_n_0\,
      S(0) => \addr[23]_i_9_n_0\
    );
\addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_15\,
      Q => \^m_axi_awaddr\(16),
      R => '0'
    );
\addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_14\,
      Q => \^m_axi_awaddr\(17),
      R => '0'
    );
\addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_13\,
      Q => \^m_axi_awaddr\(18),
      R => '0'
    );
\addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_12\,
      Q => \^m_axi_awaddr\(19),
      R => '0'
    );
\addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_11\,
      Q => \^m_axi_awaddr\(20),
      R => '0'
    );
\addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_10\,
      Q => \^m_axi_awaddr\(21),
      R => '0'
    );
\addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_9\,
      Q => \^m_axi_awaddr\(22),
      R => '0'
    );
\addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[31]_i_1_n_8\,
      Q => \^m_axi_awaddr\(23),
      R => '0'
    );
\addr_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[31]_i_1_n_0\,
      CO(6) => \addr_reg[31]_i_1_n_1\,
      CO(5) => \addr_reg[31]_i_1_n_2\,
      CO(4) => \addr_reg[31]_i_1_n_3\,
      CO(3) => \addr_reg[31]_i_1_n_4\,
      CO(2) => \addr_reg[31]_i_1_n_5\,
      CO(1) => \addr_reg[31]_i_1_n_6\,
      CO(0) => \addr_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[31]_i_1_n_8\,
      O(6) => \addr_reg[31]_i_1_n_9\,
      O(5) => \addr_reg[31]_i_1_n_10\,
      O(4) => \addr_reg[31]_i_1_n_11\,
      O(3) => \addr_reg[31]_i_1_n_12\,
      O(2) => \addr_reg[31]_i_1_n_13\,
      O(1) => \addr_reg[31]_i_1_n_14\,
      O(0) => \addr_reg[31]_i_1_n_15\,
      S(7) => \addr[31]_i_2_n_0\,
      S(6) => \addr[31]_i_3_n_0\,
      S(5) => \addr[31]_i_4_n_0\,
      S(4) => \addr[31]_i_5_n_0\,
      S(3) => \addr[31]_i_6_n_0\,
      S(2) => \addr[31]_i_7_n_0\,
      S(1) => \addr[31]_i_8_n_0\,
      S(0) => \addr[31]_i_9_n_0\
    );
\addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_15\,
      Q => \^m_axi_awaddr\(24),
      R => '0'
    );
\addr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_14\,
      Q => \^m_axi_awaddr\(25),
      R => '0'
    );
\addr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_13\,
      Q => \^m_axi_awaddr\(26),
      R => '0'
    );
\addr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_12\,
      Q => \^m_axi_awaddr\(27),
      R => '0'
    );
\addr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_11\,
      Q => \^m_axi_awaddr\(28),
      R => '0'
    );
\addr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_10\,
      Q => \^m_axi_awaddr\(29),
      R => '0'
    );
\addr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_9\,
      Q => \^m_axi_awaddr\(30),
      R => '0'
    );
\addr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[39]_i_1_n_8\,
      Q => \^m_axi_awaddr\(31),
      R => '0'
    );
\addr_reg[39]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[31]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[39]_i_1_n_0\,
      CO(6) => \addr_reg[39]_i_1_n_1\,
      CO(5) => \addr_reg[39]_i_1_n_2\,
      CO(4) => \addr_reg[39]_i_1_n_3\,
      CO(3) => \addr_reg[39]_i_1_n_4\,
      CO(2) => \addr_reg[39]_i_1_n_5\,
      CO(1) => \addr_reg[39]_i_1_n_6\,
      CO(0) => \addr_reg[39]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[39]_i_1_n_8\,
      O(6) => \addr_reg[39]_i_1_n_9\,
      O(5) => \addr_reg[39]_i_1_n_10\,
      O(4) => \addr_reg[39]_i_1_n_11\,
      O(3) => \addr_reg[39]_i_1_n_12\,
      O(2) => \addr_reg[39]_i_1_n_13\,
      O(1) => \addr_reg[39]_i_1_n_14\,
      O(0) => \addr_reg[39]_i_1_n_15\,
      S(7) => \addr[39]_i_2_n_0\,
      S(6) => \addr[39]_i_3_n_0\,
      S(5) => \addr[39]_i_4_n_0\,
      S(4) => \addr[39]_i_5_n_0\,
      S(3) => \addr[39]_i_6_n_0\,
      S(2) => \addr[39]_i_7_n_0\,
      S(1) => \addr[39]_i_8_n_0\,
      S(0) => \addr[39]_i_9_n_0\
    );
\addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_15\,
      Q => \^m_axi_awaddr\(32),
      R => '0'
    );
\addr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_14\,
      Q => \^m_axi_awaddr\(33),
      R => '0'
    );
\addr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_13\,
      Q => \^m_axi_awaddr\(34),
      R => '0'
    );
\addr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_12\,
      Q => \^m_axi_awaddr\(35),
      R => '0'
    );
\addr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_11\,
      Q => \^m_axi_awaddr\(36),
      R => '0'
    );
\addr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_10\,
      Q => \^m_axi_awaddr\(37),
      R => '0'
    );
\addr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_9\,
      Q => \^m_axi_awaddr\(38),
      R => '0'
    );
\addr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[47]_i_1_n_8\,
      Q => \^m_axi_awaddr\(39),
      R => '0'
    );
\addr_reg[47]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[39]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[47]_i_1_n_0\,
      CO(6) => \addr_reg[47]_i_1_n_1\,
      CO(5) => \addr_reg[47]_i_1_n_2\,
      CO(4) => \addr_reg[47]_i_1_n_3\,
      CO(3) => \addr_reg[47]_i_1_n_4\,
      CO(2) => \addr_reg[47]_i_1_n_5\,
      CO(1) => \addr_reg[47]_i_1_n_6\,
      CO(0) => \addr_reg[47]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[47]_i_1_n_8\,
      O(6) => \addr_reg[47]_i_1_n_9\,
      O(5) => \addr_reg[47]_i_1_n_10\,
      O(4) => \addr_reg[47]_i_1_n_11\,
      O(3) => \addr_reg[47]_i_1_n_12\,
      O(2) => \addr_reg[47]_i_1_n_13\,
      O(1) => \addr_reg[47]_i_1_n_14\,
      O(0) => \addr_reg[47]_i_1_n_15\,
      S(7) => \addr[47]_i_2_n_0\,
      S(6) => \addr[47]_i_3_n_0\,
      S(5) => \addr[47]_i_4_n_0\,
      S(4) => \addr[47]_i_5_n_0\,
      S(3) => \addr[47]_i_6_n_0\,
      S(2) => \addr[47]_i_7_n_0\,
      S(1) => \addr[47]_i_8_n_0\,
      S(0) => \addr[47]_i_9_n_0\
    );
\addr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_15\,
      Q => \^m_axi_awaddr\(40),
      R => '0'
    );
\addr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_14\,
      Q => \^m_axi_awaddr\(41),
      R => '0'
    );
\addr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_13\,
      Q => \^m_axi_awaddr\(42),
      R => '0'
    );
\addr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_12\,
      Q => \^m_axi_awaddr\(43),
      R => '0'
    );
\addr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_11\,
      Q => \^m_axi_awaddr\(44),
      R => '0'
    );
\addr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_10\,
      Q => \^m_axi_awaddr\(45),
      R => '0'
    );
\addr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_9\,
      Q => \^m_axi_awaddr\(46),
      R => '0'
    );
\addr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[55]_i_1_n_8\,
      Q => \^m_axi_awaddr\(47),
      R => '0'
    );
\addr_reg[55]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[47]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[55]_i_1_n_0\,
      CO(6) => \addr_reg[55]_i_1_n_1\,
      CO(5) => \addr_reg[55]_i_1_n_2\,
      CO(4) => \addr_reg[55]_i_1_n_3\,
      CO(3) => \addr_reg[55]_i_1_n_4\,
      CO(2) => \addr_reg[55]_i_1_n_5\,
      CO(1) => \addr_reg[55]_i_1_n_6\,
      CO(0) => \addr_reg[55]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[55]_i_1_n_8\,
      O(6) => \addr_reg[55]_i_1_n_9\,
      O(5) => \addr_reg[55]_i_1_n_10\,
      O(4) => \addr_reg[55]_i_1_n_11\,
      O(3) => \addr_reg[55]_i_1_n_12\,
      O(2) => \addr_reg[55]_i_1_n_13\,
      O(1) => \addr_reg[55]_i_1_n_14\,
      O(0) => \addr_reg[55]_i_1_n_15\,
      S(7) => \addr[55]_i_2_n_0\,
      S(6) => \addr[55]_i_3_n_0\,
      S(5) => \addr[55]_i_4_n_0\,
      S(4) => \addr[55]_i_5_n_0\,
      S(3) => \addr[55]_i_6_n_0\,
      S(2) => \addr[55]_i_7_n_0\,
      S(1) => \addr[55]_i_8_n_0\,
      S(0) => \addr[55]_i_9_n_0\
    );
\addr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_15\,
      Q => \^m_axi_awaddr\(48),
      R => '0'
    );
\addr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_14\,
      Q => \^m_axi_awaddr\(49),
      R => '0'
    );
\addr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_13\,
      Q => \^m_axi_awaddr\(50),
      R => '0'
    );
\addr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_12\,
      Q => \^m_axi_awaddr\(51),
      R => '0'
    );
\addr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_11\,
      Q => \^m_axi_awaddr\(52),
      R => '0'
    );
\addr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_10\,
      Q => \^m_axi_awaddr\(53),
      R => '0'
    );
\addr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_9\,
      Q => \^m_axi_awaddr\(54),
      R => '0'
    );
\addr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_8\,
      Q => \^m_axi_awaddr\(55),
      R => '0'
    );
\addr_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[55]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \addr_reg[63]_i_2_n_1\,
      CO(5) => \addr_reg[63]_i_2_n_2\,
      CO(4) => \addr_reg[63]_i_2_n_3\,
      CO(3) => \addr_reg[63]_i_2_n_4\,
      CO(2) => \addr_reg[63]_i_2_n_5\,
      CO(1) => \addr_reg[63]_i_2_n_6\,
      CO(0) => \addr_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[63]_i_2_n_8\,
      O(6) => \addr_reg[63]_i_2_n_9\,
      O(5) => \addr_reg[63]_i_2_n_10\,
      O(4) => \addr_reg[63]_i_2_n_11\,
      O(3) => \addr_reg[63]_i_2_n_12\,
      O(2) => \addr_reg[63]_i_2_n_13\,
      O(1) => \addr_reg[63]_i_2_n_14\,
      O(0) => \addr_reg[63]_i_2_n_15\,
      S(7) => \addr[63]_i_3_n_0\,
      S(6) => \addr[63]_i_4_n_0\,
      S(5) => \addr[63]_i_5_n_0\,
      S(4) => \addr[63]_i_6_n_0\,
      S(3) => \addr[63]_i_7_n_0\,
      S(2) => \addr[63]_i_8_n_0\,
      S(1) => \addr[63]_i_9_n_0\,
      S(0) => \addr[63]_i_10_n_0\
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_15\,
      Q => \^m_axi_awaddr\(0),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[15]_i_1_n_14\,
      Q => \^m_axi_awaddr\(1),
      R => '0'
    );
awvalid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_w_to_aw_cntr_n_1,
      Q => \^awvalid_r_reg_0\,
      R => clear
    );
ctrl_start_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start,
      Q => ctrl_start_d1,
      R => '0'
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done0,
      Q => ctrl_done,
      R => '0'
    );
\final_burst_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[0]\,
      Q => final_burst_len(0),
      R => '0'
    );
\final_burst_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[1]\,
      Q => final_burst_len(1),
      R => '0'
    );
\final_burst_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[2]\,
      Q => final_burst_len(2),
      R => '0'
    );
\final_burst_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[3]\,
      Q => final_burst_len(3),
      R => '0'
    );
inst_aw_to_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\
     port map (
      clear => clear,
      clk => clk,
      \count_r_reg[3]_0\ => inst_w_to_aw_cntr_n_0,
      is_zero_r_reg_0 => \^awvalid_r_reg_0\,
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_BVALID => m_axi_BVALID,
      stall_aw => stall_aw
    );
inst_aw_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\
     port map (
      Q(12) => data(17),
      Q(11 downto 0) => data(11 downto 0),
      clear => clear,
      clk => clk,
      \count_r_reg[0]_0\ => \^awvalid_r_reg_0\,
      \count_r_reg[23]_0\ => \total_len_r_reg[58]_rep_n_0\,
      \is_zero_r_i_5__0_0\ => \start_reg_rep__0_n_0\,
      is_zero_r_reg_0 => inst_b_transaction_cntr_n_0,
      m_axi_AWLEN(3 downto 0) => m_axi_AWLEN(3 downto 0),
      \m_axi_AWLEN[3]\(3 downto 0) => final_burst_len(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      rst_n => rst_n,
      start => start,
      start_reg => inst_aw_transaction_cntr_n_1
    );
inst_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\
     port map (
      clear => clear,
      clk => clk,
      \count_r_reg[23]_0\ => \total_len_r_reg[58]_rep__0_n_0\,
      data(13) => data(54),
      data(12) => data(17),
      data(11 downto 0) => data(11 downto 0),
      done0 => done0,
      \is_zero_r_i_4__0_0\ => \start_reg_rep__0_n_0\,
      is_zero_r_reg_0 => start_reg_rep_n_0,
      m_axi_BVALID => m_axi_BVALID,
      \total_len_r_reg[10]\ => inst_b_transaction_cntr_n_0
    );
inst_burst_cntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter
     port map (
      D(0) => inst_w_transaction_cntr_n_1,
      E(0) => is_zero_r_0,
      Q(2 downto 0) => final_burst_len(3 downto 1),
      clear => clear,
      clk => clk,
      \count_r_reg[0]_0\(0) => inst_burst_cntr_n_1,
      \count_r_reg[1]_0\ => inst_w_transaction_cntr_n_2,
      \count_r_reg[3]_0\ => inst_burst_cntr_n_4,
      is_zero_r => is_zero_r,
      is_zero_r_reg_0 => is_zero_r_reg,
      is_zero_r_reg_1 => inst_burst_cntr_n_3,
      is_zero_r_reg_2 => inst_burst_cntr_n_5,
      is_zero_r_reg_3 => inst_burst_cntr_n_6,
      is_zero_r_reg_4 => inst_w_transaction_cntr_n_3,
      m_axi_WREADY => m_axi_WREADY,
      s_axis_tvalid => s_axis_tvalid,
      w_running => w_running,
      w_running_reg => \start_reg_rep__0_n_0\,
      w_running_reg_0 => inst_w_transaction_cntr_n_0,
      wfirst => wfirst
    );
inst_w_to_aw_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\
     port map (
      clear => clear,
      clk => clk,
      is_zero_r_reg_0 => \^awvalid_r_reg_0\,
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_AWREADY_0 => inst_w_to_aw_cntr_n_0,
      m_axi_AWREADY_1 => inst_w_to_aw_cntr_n_1,
      stall_aw => stall_aw,
      wfirst_pulse => wfirst_pulse
    );
inst_w_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\
     port map (
      D(0) => inst_w_transaction_cntr_n_1,
      E(0) => is_zero_r_0,
      Q(3 downto 0) => final_burst_len(3 downto 0),
      clear => clear,
      clk => clk,
      \count_r_reg[0]_0\(0) => inst_burst_cntr_n_1,
      data(13) => data(54),
      data(12) => data(17),
      data(11 downto 0) => data(11 downto 0),
      \final_burst_len_reg[1]\ => inst_w_transaction_cntr_n_3,
      is_zero_r => is_zero_r,
      is_zero_r_i_3_0 => inst_burst_cntr_n_3,
      is_zero_r_reg_0 => inst_w_transaction_cntr_n_0,
      is_zero_r_reg_1 => \start_reg_rep__0_n_0\,
      is_zero_r_reg_2 => inst_burst_cntr_n_4,
      is_zero_r_reg_3 => inst_b_transaction_cntr_n_0,
      m_axi_WREADY => m_axi_WREADY,
      s_axis_tvalid => s_axis_tvalid,
      \total_len_r_reg[10]\ => inst_w_transaction_cntr_n_2,
      w_running => w_running
    );
m_axi_WVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => w_running,
      O => m_axi_WVALID
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_running,
      I1 => m_axi_WREADY,
      O => s_axis_tready
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => start,
      R => '0'
    );
start_reg_rep: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => start_reg_rep_n_0,
      R => '0'
    );
\start_reg_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => \start_reg_rep__0_n_0\,
      R => '0'
    );
\total_len_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(0),
      O => total_len_r1(0)
    );
\total_len_r[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(15),
      O => \total_len_r[21]_i_2_n_0\
    );
\total_len_r[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(14),
      O => \total_len_r[21]_i_3_n_0\
    );
\total_len_r[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(13),
      O => \total_len_r[21]_i_4_n_0\
    );
\total_len_r[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(12),
      O => \total_len_r[21]_i_5_n_0\
    );
\total_len_r[21]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(11),
      O => \total_len_r[21]_i_6_n_0\
    );
\total_len_r[21]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(10),
      O => \total_len_r[21]_i_7_n_0\
    );
\total_len_r[21]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(9),
      O => \total_len_r[21]_i_8_n_0\
    );
\total_len_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(8),
      O => \total_len_r[8]_i_2_n_0\
    );
\total_len_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(7),
      O => \total_len_r[8]_i_3_n_0\
    );
\total_len_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(6),
      O => \total_len_r[8]_i_4_n_0\
    );
\total_len_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(5),
      O => \total_len_r[8]_i_5_n_0\
    );
\total_len_r[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(4),
      O => \total_len_r[8]_i_6_n_0\
    );
\total_len_r[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(3),
      O => \total_len_r[8]_i_7_n_0\
    );
\total_len_r[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(2),
      O => \total_len_r[8]_i_8_n_0\
    );
\total_len_r[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(1),
      O => \total_len_r[8]_i_9_n_0\
    );
\total_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(0),
      Q => \total_len_r_reg_n_0_[0]\,
      R => '0'
    );
\total_len_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(10),
      Q => data(6),
      R => '0'
    );
\total_len_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(11),
      Q => data(7),
      R => '0'
    );
\total_len_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(12),
      Q => data(8),
      R => '0'
    );
\total_len_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(13),
      Q => data(9),
      R => '0'
    );
\total_len_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(14),
      Q => data(10),
      R => '0'
    );
\total_len_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(15),
      Q => data(11),
      R => '0'
    );
\total_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(1),
      Q => \total_len_r_reg_n_0_[1]\,
      R => '0'
    );
\total_len_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(58),
      Q => data(17),
      R => '0'
    );
\total_len_r_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_len_r_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_total_len_r_reg[21]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \total_len_r_reg[21]_i_1_n_1\,
      CO(5) => \total_len_r_reg[21]_i_1_n_2\,
      CO(4) => \total_len_r_reg[21]_i_1_n_3\,
      CO(3) => \total_len_r_reg[21]_i_1_n_4\,
      CO(2) => \total_len_r_reg[21]_i_1_n_5\,
      CO(1) => \total_len_r_reg[21]_i_1_n_6\,
      CO(0) => \total_len_r_reg[21]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => req_len(15 downto 9),
      O(7) => total_len_r1(58),
      O(6 downto 0) => total_len_r1(15 downto 9),
      S(7) => '1',
      S(6) => \total_len_r[21]_i_2_n_0\,
      S(5) => \total_len_r[21]_i_3_n_0\,
      S(4) => \total_len_r[21]_i_4_n_0\,
      S(3) => \total_len_r[21]_i_5_n_0\,
      S(2) => \total_len_r[21]_i_6_n_0\,
      S(1) => \total_len_r[21]_i_7_n_0\,
      S(0) => \total_len_r[21]_i_8_n_0\
    );
\total_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(2),
      Q => \total_len_r_reg_n_0_[2]\,
      R => '0'
    );
\total_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(3),
      Q => \total_len_r_reg_n_0_[3]\,
      R => '0'
    );
\total_len_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(4),
      Q => data(0),
      R => '0'
    );
\total_len_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(58),
      Q => data(54),
      R => '0'
    );
\total_len_r_reg[58]_rep\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(58),
      Q => \total_len_r_reg[58]_rep_n_0\,
      R => '0'
    );
\total_len_r_reg[58]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(58),
      Q => \total_len_r_reg[58]_rep__0_n_0\,
      R => '0'
    );
\total_len_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(5),
      Q => data(1),
      R => '0'
    );
\total_len_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(6),
      Q => data(2),
      R => '0'
    );
\total_len_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(7),
      Q => data(3),
      R => '0'
    );
\total_len_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(8),
      Q => data(4),
      R => '0'
    );
\total_len_r_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => req_len(0),
      CI_TOP => '0',
      CO(7) => \total_len_r_reg[8]_i_1_n_0\,
      CO(6) => \total_len_r_reg[8]_i_1_n_1\,
      CO(5) => \total_len_r_reg[8]_i_1_n_2\,
      CO(4) => \total_len_r_reg[8]_i_1_n_3\,
      CO(3) => \total_len_r_reg[8]_i_1_n_4\,
      CO(2) => \total_len_r_reg[8]_i_1_n_5\,
      CO(1) => \total_len_r_reg[8]_i_1_n_6\,
      CO(0) => \total_len_r_reg[8]_i_1_n_7\,
      DI(7 downto 0) => req_len(8 downto 1),
      O(7 downto 0) => total_len_r1(8 downto 1),
      S(7) => \total_len_r[8]_i_2_n_0\,
      S(6) => \total_len_r[8]_i_3_n_0\,
      S(5) => \total_len_r[8]_i_4_n_0\,
      S(4) => \total_len_r[8]_i_5_n_0\,
      S(3) => \total_len_r[8]_i_6_n_0\,
      S(2) => \total_len_r[8]_i_7_n_0\,
      S(1) => \total_len_r[8]_i_8_n_0\,
      S(0) => \total_len_r[8]_i_9_n_0\
    );
\total_len_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(9),
      Q => data(5),
      R => '0'
    );
w_running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_burst_cntr_n_5,
      Q => w_running,
      R => clear
    );
wfirst_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wfirst,
      I1 => s_axis_tvalid,
      I2 => w_running,
      O => wfirst_d10
    );
wfirst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_d10,
      Q => wfirst_d1,
      R => '0'
    );
wfirst_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => w_running,
      I1 => s_axis_tvalid,
      I2 => wfirst,
      I3 => wfirst_d1,
      O => wfirst_pulse0
    );
wfirst_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_pulse0,
      Q => wfirst_pulse,
      R => '0'
    );
wfirst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_burst_cntr_n_6,
      Q => wfirst,
      S => clear
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
    ctrl_start : in STD_LOGIC;
    ctrl_done : out STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    req_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_AWVALID : out STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AWID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_WVALID : out STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_WSTRB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_WLAST : out STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    m_axi_BREADY : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "custom_m_axi_s_256_swr_engine_0_0,swr_engine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "swr_engine,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_256_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_AWREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_AWVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_BREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_BREADY : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_256_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_BVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_WLAST : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_WREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_WVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axi_AWADDR : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_AWID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_AWLEN : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_WDATA : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_WSTRB : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_256_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^s_axis_tdata\(255 downto 0) <= s_axis_tdata(255 downto 0);
  m_axi_AWADDR(63 downto 8) <= \^m_axi_awaddr\(63 downto 8);
  m_axi_AWADDR(7) <= \<const0>\;
  m_axi_AWADDR(6) <= \<const0>\;
  m_axi_AWADDR(5) <= \<const0>\;
  m_axi_AWADDR(4) <= \<const0>\;
  m_axi_AWADDR(3) <= \<const0>\;
  m_axi_AWADDR(2) <= \<const0>\;
  m_axi_AWADDR(1) <= \<const0>\;
  m_axi_AWADDR(0) <= \<const0>\;
  m_axi_AWID(5) <= \<const0>\;
  m_axi_AWID(4) <= \<const0>\;
  m_axi_AWID(3) <= \<const0>\;
  m_axi_AWID(2) <= \<const0>\;
  m_axi_AWID(1) <= \<const0>\;
  m_axi_AWID(0) <= \<const0>\;
  m_axi_AWLEN(7) <= \<const0>\;
  m_axi_AWLEN(6) <= \<const0>\;
  m_axi_AWLEN(5) <= \<const0>\;
  m_axi_AWLEN(4) <= \<const0>\;
  m_axi_AWLEN(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
  m_axi_AWSIZE(2) <= \<const1>\;
  m_axi_AWSIZE(1) <= \<const0>\;
  m_axi_AWSIZE(0) <= \<const1>\;
  m_axi_BREADY <= \<const1>\;
  m_axi_WDATA(255 downto 0) <= \^s_axis_tdata\(255 downto 0);
  m_axi_WSTRB(31) <= \<const1>\;
  m_axi_WSTRB(30) <= \<const1>\;
  m_axi_WSTRB(29) <= \<const1>\;
  m_axi_WSTRB(28) <= \<const1>\;
  m_axi_WSTRB(27) <= \<const1>\;
  m_axi_WSTRB(26) <= \<const1>\;
  m_axi_WSTRB(25) <= \<const1>\;
  m_axi_WSTRB(24) <= \<const1>\;
  m_axi_WSTRB(23) <= \<const1>\;
  m_axi_WSTRB(22) <= \<const1>\;
  m_axi_WSTRB(21) <= \<const1>\;
  m_axi_WSTRB(20) <= \<const1>\;
  m_axi_WSTRB(19) <= \<const1>\;
  m_axi_WSTRB(18) <= \<const1>\;
  m_axi_WSTRB(17) <= \<const1>\;
  m_axi_WSTRB(16) <= \<const1>\;
  m_axi_WSTRB(15) <= \<const1>\;
  m_axi_WSTRB(14) <= \<const1>\;
  m_axi_WSTRB(13) <= \<const1>\;
  m_axi_WSTRB(12) <= \<const1>\;
  m_axi_WSTRB(11) <= \<const1>\;
  m_axi_WSTRB(10) <= \<const1>\;
  m_axi_WSTRB(9) <= \<const1>\;
  m_axi_WSTRB(8) <= \<const1>\;
  m_axi_WSTRB(7) <= \<const1>\;
  m_axi_WSTRB(6) <= \<const1>\;
  m_axi_WSTRB(5) <= \<const1>\;
  m_axi_WSTRB(4) <= \<const1>\;
  m_axi_WSTRB(3) <= \<const1>\;
  m_axi_WSTRB(2) <= \<const1>\;
  m_axi_WSTRB(1) <= \<const1>\;
  m_axi_WSTRB(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine
     port map (
      awvalid_r_reg_0 => m_axi_AWVALID,
      baseAddr(54 downto 0) => baseAddr(63 downto 9),
      clk => clk,
      ctrl_done => ctrl_done,
      ctrl_start => ctrl_start,
      is_zero_r_reg => m_axi_WLAST,
      m_axi_AWADDR(55 downto 0) => \^m_axi_awaddr\(63 downto 8),
      m_axi_AWLEN(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_BVALID => m_axi_BVALID,
      m_axi_WREADY => m_axi_WREADY,
      m_axi_WVALID => m_axi_WVALID,
      req_len(15 downto 0) => req_len(15 downto 0),
      rst_n => rst_n,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
