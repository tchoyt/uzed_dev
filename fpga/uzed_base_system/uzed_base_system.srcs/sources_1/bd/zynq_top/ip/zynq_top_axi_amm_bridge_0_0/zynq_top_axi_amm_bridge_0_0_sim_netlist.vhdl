-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Wed Feb  8 12:34:49 2017
-- Host        : thoyt-dell7510 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/thoyt/fpga_work/uzed_dev/fpga/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/ip/zynq_top_axi_amm_bridge_0_0/zynq_top_axi_amm_bridge_0_0_sim_netlist.vhdl
-- Design      : zynq_top_axi_amm_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_lite is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_byteenable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_beginbursttransfer : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_write : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    avm_readdatavalid : in STD_LOGIC;
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_writeresponsevalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_lite : entity is "axi_amm_bridge_v1_0_1_lite";
end zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_lite;

architecture STRUCTURE of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_lite is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_current_state_reg_n_0_[7]\ : signal is "yes";
  signal \avm_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[0]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[10]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[11]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[12]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[13]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[14]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[15]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[16]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[16]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[17]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[17]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[18]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[18]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[19]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[19]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[1]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[20]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[20]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[21]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[21]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[22]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[22]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[23]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[23]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[24]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[24]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[25]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[25]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[26]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[26]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[27]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[27]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[28]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[28]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[29]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[29]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[2]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[30]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[30]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_4_n_0\ : STD_LOGIC;
  signal \avm_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[3]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[4]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[5]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[7]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[8]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[9]_i_2_n_0\ : STD_LOGIC;
  signal avm_beginbursttransfer_i_1_n_0 : STD_LOGIC;
  signal \avm_byteenable[0]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[1]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[2]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[3]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[3]_i_2_n_0\ : STD_LOGIC;
  signal \avm_byteenable[3]_i_3_n_0\ : STD_LOGIC;
  signal \^avm_read\ : STD_LOGIC;
  signal avm_read_i_1_n_0 : STD_LOGIC;
  signal avm_readdata_i : STD_LOGIC;
  attribute RTL_KEEP of avm_readdata_i : signal is "yes";
  signal avm_readdatavalid_i : STD_LOGIC;
  signal \^avm_write\ : STD_LOGIC;
  signal avm_write_i_1_n_0 : STD_LOGIC;
  signal avm_write_i_2_n_0 : STD_LOGIC;
  signal \avm_writedata[0]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[10]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[11]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[12]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[13]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[14]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[15]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[16]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[17]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[18]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[19]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[1]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[20]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[21]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[22]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[23]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[24]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[25]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[26]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[27]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[28]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[29]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[2]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[30]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[31]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[31]_i_2_n_0\ : STD_LOGIC;
  signal \avm_writedata[3]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[4]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[5]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[6]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[7]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[8]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[9]_i_1_n_0\ : STD_LOGIC;
  signal avm_writeresponsevalid_i : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal current_state115_out : STD_LOGIC;
  signal done_read : STD_LOGIC;
  signal done_write : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in9_in : STD_LOGIC;
  attribute RTL_KEEP of p_1_in9_in : signal is "yes";
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal s_axi_awready_i_2_n_0 : STD_LOGIC;
  signal s_axi_awready_i_3_n_0 : STD_LOGIC;
  signal s_axi_awready_i_4_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_bresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_axi_rresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal start_i_2_n_0 : STD_LOGIC;
  signal start_i_3_n_0 : STD_LOGIC;
  signal start_i_4_n_0 : STD_LOGIC;
  signal start_reg_n_0 : STD_LOGIC;
  signal \tout_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \tout_counter_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[8]_i_4\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_current_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[5]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[6]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[7]\ : label is "yes";
  attribute KEEP of \FSM_onehot_current_state_reg[8]\ : label is "yes";
  attribute SOFT_HLUTNM of \avm_address[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \avm_byteenable[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of avm_write_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tout_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tout_counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tout_counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tout_counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tout_counter[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tout_counter[8]_i_2\ : label is "soft_lutpair3";
begin
  avm_read <= \^avm_read\;
  avm_write <= \^avm_write\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444477777444"
    )
        port map (
      I0 => \avm_byteenable[3]_i_3_n_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I3 => \FSM_onehot_current_state[0]_i_3_n_0\,
      I4 => \FSM_onehot_current_state[0]_i_4_n_0\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800F8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => p_1_in9_in,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[0]_i_2_n_0\
    );
\FSM_onehot_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0AAAA000000F3"
    )
        port map (
      I0 => done_read,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => done_write,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => p_1_in9_in,
      I5 => avm_readdata_i,
      O => \FSM_onehot_current_state[0]_i_3_n_0\
    );
\FSM_onehot_current_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => done_write,
      I1 => p_1_in9_in,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => done_read,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[0]_i_4_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888F888888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_current_state[6]_i_2_n_0\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => avm_waitrequest,
      I5 => current_state115_out,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AAC0"
    )
        port map (
      I0 => avm_write_i_2_n_0,
      I1 => avm_waitrequest,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => current_state115_out,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055553000"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => done_write,
      I2 => p_1_in9_in,
      I3 => \FSM_onehot_current_state[5]_i_2_n_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => current_state115_out,
      I1 => avm_waitrequest,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001F00100010"
    )
        port map (
      I0 => done_write,
      I1 => \FSM_onehot_current_state[5]_i_2_n_0\,
      I2 => p_1_in9_in,
      I3 => \FSM_onehot_current_state[5]_i_3_n_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_current_state[5]_i_4_n_0\,
      O => \FSM_onehot_current_state[5]_i_1_n_0\
    );
\FSM_onehot_current_state[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_awready_i_4_n_0,
      I1 => \FSM_onehot_current_state[8]_i_4_n_0\,
      I2 => \^s_axi_bvalid\,
      I3 => avm_writeresponsevalid_i,
      O => \FSM_onehot_current_state[5]_i_2_n_0\
    );
\FSM_onehot_current_state[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[5]_i_3_n_0\
    );
\FSM_onehot_current_state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I5 => done_write,
      O => \FSM_onehot_current_state[5]_i_4_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010131010101010"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state[6]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state[8]_i_2_n_0\,
      I4 => done_read,
      I5 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => \FSM_onehot_current_state[6]_i_1_n_0\
    );
\FSM_onehot_current_state[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => p_1_in9_in,
      O => \FSM_onehot_current_state[6]_i_2_n_0\
    );
\FSM_onehot_current_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => current_state115_out,
      I1 => avm_waitrequest,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => p_1_in9_in,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[7]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001F1F1310"
    )
        port map (
      I0 => \FSM_onehot_current_state[8]_i_2_n_0\,
      I1 => done_read,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => avm_readdata_i,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_current_state[8]_i_3_n_0\,
      O => \FSM_onehot_current_state[8]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_awready_i_4_n_0,
      I1 => \FSM_onehot_current_state[8]_i_4_n_0\,
      I2 => \^s_axi_rvalid\,
      I3 => avm_readdatavalid_i,
      O => \FSM_onehot_current_state[8]_i_2_n_0\
    );
\FSM_onehot_current_state[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_1_in9_in,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[8]_i_3_n_0\
    );
\FSM_onehot_current_state[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \tout_counter_reg__0\(1),
      I1 => \tout_counter_reg__0\(0),
      I2 => \tout_counter_reg__0\(3),
      I3 => \tout_counter_reg__0\(2),
      O => \FSM_onehot_current_state[8]_i_4_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => p_1_in9_in,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[5]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[6]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[6]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[7]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[8]_i_1_n_0\,
      Q => avm_readdata_i,
      R => s_axi_awready_i_1_n_0
    );
\avm_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(0),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(0),
      I4 => \avm_address[0]_i_2_n_0\,
      O => \avm_address[0]_i_1_n_0\
    );
\avm_address[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(0),
      I5 => s_axi_araddr(0),
      O => \avm_address[0]_i_2_n_0\
    );
\avm_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(10),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(10),
      I4 => \avm_address[10]_i_2_n_0\,
      O => \avm_address[10]_i_1_n_0\
    );
\avm_address[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(10),
      I5 => s_axi_araddr(10),
      O => \avm_address[10]_i_2_n_0\
    );
\avm_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(11),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(11),
      I4 => \avm_address[11]_i_2_n_0\,
      O => \avm_address[11]_i_1_n_0\
    );
\avm_address[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(11),
      I5 => s_axi_araddr(11),
      O => \avm_address[11]_i_2_n_0\
    );
\avm_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(12),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(12),
      I4 => \avm_address[12]_i_2_n_0\,
      O => \avm_address[12]_i_1_n_0\
    );
\avm_address[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(12),
      I5 => s_axi_araddr(12),
      O => \avm_address[12]_i_2_n_0\
    );
\avm_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(13),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(13),
      I4 => \avm_address[13]_i_2_n_0\,
      O => \avm_address[13]_i_1_n_0\
    );
\avm_address[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(13),
      I5 => s_axi_araddr(13),
      O => \avm_address[13]_i_2_n_0\
    );
\avm_address[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(14),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(14),
      I4 => \avm_address[14]_i_2_n_0\,
      O => \avm_address[14]_i_1_n_0\
    );
\avm_address[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(14),
      I5 => s_axi_araddr(14),
      O => \avm_address[14]_i_2_n_0\
    );
\avm_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(15),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(15),
      I4 => \avm_address[15]_i_2_n_0\,
      O => \avm_address[15]_i_1_n_0\
    );
\avm_address[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(15),
      I5 => s_axi_araddr(15),
      O => \avm_address[15]_i_2_n_0\
    );
\avm_address[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(16),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(16),
      I4 => \avm_address[16]_i_2_n_0\,
      O => \avm_address[16]_i_1_n_0\
    );
\avm_address[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(16),
      I5 => s_axi_araddr(16),
      O => \avm_address[16]_i_2_n_0\
    );
\avm_address[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(17),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(17),
      I4 => \avm_address[17]_i_2_n_0\,
      O => \avm_address[17]_i_1_n_0\
    );
\avm_address[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(17),
      I5 => s_axi_araddr(17),
      O => \avm_address[17]_i_2_n_0\
    );
\avm_address[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(18),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(18),
      I4 => \avm_address[18]_i_2_n_0\,
      O => \avm_address[18]_i_1_n_0\
    );
\avm_address[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(18),
      I5 => s_axi_araddr(18),
      O => \avm_address[18]_i_2_n_0\
    );
\avm_address[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(19),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(19),
      I4 => \avm_address[19]_i_2_n_0\,
      O => \avm_address[19]_i_1_n_0\
    );
\avm_address[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(19),
      I5 => s_axi_araddr(19),
      O => \avm_address[19]_i_2_n_0\
    );
\avm_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(1),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(1),
      I4 => \avm_address[1]_i_2_n_0\,
      O => \avm_address[1]_i_1_n_0\
    );
\avm_address[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(1),
      I5 => s_axi_araddr(1),
      O => \avm_address[1]_i_2_n_0\
    );
\avm_address[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(20),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(20),
      I4 => \avm_address[20]_i_2_n_0\,
      O => \avm_address[20]_i_1_n_0\
    );
\avm_address[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(20),
      I5 => s_axi_araddr(20),
      O => \avm_address[20]_i_2_n_0\
    );
\avm_address[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(21),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(21),
      I4 => \avm_address[21]_i_2_n_0\,
      O => \avm_address[21]_i_1_n_0\
    );
\avm_address[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(21),
      I5 => s_axi_araddr(21),
      O => \avm_address[21]_i_2_n_0\
    );
\avm_address[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(22),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(22),
      I4 => \avm_address[22]_i_2_n_0\,
      O => \avm_address[22]_i_1_n_0\
    );
\avm_address[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(22),
      I5 => s_axi_araddr(22),
      O => \avm_address[22]_i_2_n_0\
    );
\avm_address[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(23),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(23),
      I4 => \avm_address[23]_i_2_n_0\,
      O => \avm_address[23]_i_1_n_0\
    );
\avm_address[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(23),
      I5 => s_axi_araddr(23),
      O => \avm_address[23]_i_2_n_0\
    );
\avm_address[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(24),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(24),
      I4 => \avm_address[24]_i_2_n_0\,
      O => \avm_address[24]_i_1_n_0\
    );
\avm_address[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(24),
      I5 => s_axi_araddr(24),
      O => \avm_address[24]_i_2_n_0\
    );
\avm_address[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(25),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(25),
      I4 => \avm_address[25]_i_2_n_0\,
      O => \avm_address[25]_i_1_n_0\
    );
\avm_address[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(25),
      I5 => s_axi_araddr(25),
      O => \avm_address[25]_i_2_n_0\
    );
\avm_address[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(26),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(26),
      I4 => \avm_address[26]_i_2_n_0\,
      O => \avm_address[26]_i_1_n_0\
    );
\avm_address[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(26),
      I5 => s_axi_araddr(26),
      O => \avm_address[26]_i_2_n_0\
    );
\avm_address[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(27),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(27),
      I4 => \avm_address[27]_i_2_n_0\,
      O => \avm_address[27]_i_1_n_0\
    );
\avm_address[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(27),
      I5 => s_axi_araddr(27),
      O => \avm_address[27]_i_2_n_0\
    );
\avm_address[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(28),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(28),
      I4 => \avm_address[28]_i_2_n_0\,
      O => \avm_address[28]_i_1_n_0\
    );
\avm_address[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(28),
      I5 => s_axi_araddr(28),
      O => \avm_address[28]_i_2_n_0\
    );
\avm_address[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(29),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(29),
      I4 => \avm_address[29]_i_2_n_0\,
      O => \avm_address[29]_i_1_n_0\
    );
\avm_address[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(29),
      I5 => s_axi_araddr(29),
      O => \avm_address[29]_i_2_n_0\
    );
\avm_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(2),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(2),
      I4 => \avm_address[2]_i_2_n_0\,
      O => \avm_address[2]_i_1_n_0\
    );
\avm_address[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(2),
      I5 => s_axi_araddr(2),
      O => \avm_address[2]_i_2_n_0\
    );
\avm_address[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(30),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(30),
      I4 => \avm_address[30]_i_2_n_0\,
      O => \avm_address[30]_i_1_n_0\
    );
\avm_address[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(30),
      I5 => s_axi_araddr(30),
      O => \avm_address[30]_i_2_n_0\
    );
\avm_address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEEAEEE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => current_state115_out,
      I3 => avm_waitrequest,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_address[31]_i_1_n_0\
    );
\avm_address[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(31),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(31),
      I4 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[31]_i_2_n_0\
    );
\avm_address[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_awready_i_4_n_0,
      I1 => \tout_counter_reg__0\(2),
      I2 => \tout_counter_reg__0\(3),
      I3 => \tout_counter_reg__0\(0),
      I4 => \tout_counter_reg__0\(1),
      O => current_state115_out
    );
\avm_address[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(31),
      I5 => s_axi_araddr(31),
      O => \avm_address[31]_i_4_n_0\
    );
\avm_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(3),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(3),
      I4 => \avm_address[3]_i_2_n_0\,
      O => \avm_address[3]_i_1_n_0\
    );
\avm_address[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(3),
      I5 => s_axi_araddr(3),
      O => \avm_address[3]_i_2_n_0\
    );
\avm_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(4),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(4),
      I4 => \avm_address[4]_i_2_n_0\,
      O => \avm_address[4]_i_1_n_0\
    );
\avm_address[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(4),
      I5 => s_axi_araddr(4),
      O => \avm_address[4]_i_2_n_0\
    );
\avm_address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(5),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(5),
      I4 => \avm_address[5]_i_2_n_0\,
      O => \avm_address[5]_i_1_n_0\
    );
\avm_address[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(5),
      I5 => s_axi_araddr(5),
      O => \avm_address[5]_i_2_n_0\
    );
\avm_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(6),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(6),
      I4 => \avm_address[6]_i_2_n_0\,
      O => \avm_address[6]_i_1_n_0\
    );
\avm_address[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(6),
      I5 => s_axi_araddr(6),
      O => \avm_address[6]_i_2_n_0\
    );
\avm_address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(7),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(7),
      I4 => \avm_address[7]_i_2_n_0\,
      O => \avm_address[7]_i_1_n_0\
    );
\avm_address[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(7),
      I5 => s_axi_araddr(7),
      O => \avm_address[7]_i_2_n_0\
    );
\avm_address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(8),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(8),
      I4 => \avm_address[8]_i_2_n_0\,
      O => \avm_address[8]_i_1_n_0\
    );
\avm_address[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(8),
      I5 => s_axi_araddr(8),
      O => \avm_address[8]_i_2_n_0\
    );
\avm_address[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => s_axi_araddr(9),
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => s_axi_awaddr(9),
      I4 => \avm_address[9]_i_2_n_0\,
      O => \avm_address[9]_i_1_n_0\
    );
\avm_address[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888820000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_awaddr(9),
      I5 => s_axi_araddr(9),
      O => \avm_address[9]_i_2_n_0\
    );
\avm_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[0]_i_1_n_0\,
      Q => avm_address(0),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[10]_i_1_n_0\,
      Q => avm_address(10),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[11]_i_1_n_0\,
      Q => avm_address(11),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[12]_i_1_n_0\,
      Q => avm_address(12),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[13]_i_1_n_0\,
      Q => avm_address(13),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[14]_i_1_n_0\,
      Q => avm_address(14),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[15]_i_1_n_0\,
      Q => avm_address(15),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[16]_i_1_n_0\,
      Q => avm_address(16),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[17]_i_1_n_0\,
      Q => avm_address(17),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[18]_i_1_n_0\,
      Q => avm_address(18),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[19]_i_1_n_0\,
      Q => avm_address(19),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[1]_i_1_n_0\,
      Q => avm_address(1),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[20]_i_1_n_0\,
      Q => avm_address(20),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[21]_i_1_n_0\,
      Q => avm_address(21),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[22]_i_1_n_0\,
      Q => avm_address(22),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[23]_i_1_n_0\,
      Q => avm_address(23),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[24]_i_1_n_0\,
      Q => avm_address(24),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[25]_i_1_n_0\,
      Q => avm_address(25),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[26]_i_1_n_0\,
      Q => avm_address(26),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[27]_i_1_n_0\,
      Q => avm_address(27),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[28]_i_1_n_0\,
      Q => avm_address(28),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[29]_i_1_n_0\,
      Q => avm_address(29),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[2]_i_1_n_0\,
      Q => avm_address(2),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[30]_i_1_n_0\,
      Q => avm_address(30),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[31]_i_2_n_0\,
      Q => avm_address(31),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[3]_i_1_n_0\,
      Q => avm_address(3),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[4]_i_1_n_0\,
      Q => avm_address(4),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[5]_i_1_n_0\,
      Q => avm_address(5),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[6]_i_1_n_0\,
      Q => avm_address(6),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[7]_i_1_n_0\,
      Q => avm_address(7),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[8]_i_1_n_0\,
      Q => avm_address(8),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[9]_i_1_n_0\,
      Q => avm_address(9),
      R => s_axi_awready_i_1_n_0
    );
avm_beginbursttransfer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      O => avm_beginbursttransfer_i_1_n_0
    );
avm_beginbursttransfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_beginbursttransfer_i_1_n_0,
      Q => avm_beginbursttransfer,
      R => s_axi_awready_i_1_n_0
    );
\avm_byteenable[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => s_axi_arvalid,
      I3 => avm_waitrequest,
      I4 => s_axi_wstrb(0),
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_byteenable[0]_i_1_n_0\
    );
\avm_byteenable[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => s_axi_arvalid,
      I3 => avm_waitrequest,
      I4 => s_axi_wstrb(1),
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_byteenable[1]_i_1_n_0\
    );
\avm_byteenable[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => s_axi_arvalid,
      I3 => avm_waitrequest,
      I4 => s_axi_wstrb(2),
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_byteenable[2]_i_1_n_0\
    );
\avm_byteenable[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8FFF8FFF8888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \avm_byteenable[3]_i_3_n_0\,
      I2 => current_state115_out,
      I3 => avm_waitrequest,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_byteenable[3]_i_1_n_0\
    );
\avm_byteenable[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEAEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => s_axi_arvalid,
      I3 => avm_waitrequest,
      I4 => s_axi_wstrb(3),
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \avm_byteenable[3]_i_2_n_0\
    );
\avm_byteenable[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \avm_byteenable[3]_i_3_n_0\
    );
\avm_byteenable_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[0]_i_1_n_0\,
      Q => avm_byteenable(0),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[1]_i_1_n_0\,
      Q => avm_byteenable(1),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[2]_i_1_n_0\,
      Q => avm_byteenable(2),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[3]_i_2_n_0\,
      Q => avm_byteenable(3),
      S => s_axi_awready_i_1_n_0
    );
avm_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F0FFF444F000"
    )
        port map (
      I0 => current_state115_out,
      I1 => avm_waitrequest,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \^avm_read\,
      O => avm_read_i_1_n_0
    );
avm_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_read_i_1_n_0,
      Q => \^avm_read\,
      R => s_axi_awready_i_1_n_0
    );
avm_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F0FFF444F000"
    )
        port map (
      I0 => current_state115_out,
      I1 => avm_waitrequest,
      I2 => avm_write_i_2_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \^avm_write\,
      O => avm_write_i_1_n_0
    );
avm_write_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      O => avm_write_i_2_n_0
    );
avm_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_write_i_1_n_0,
      Q => \^avm_write\,
      R => s_axi_awready_i_1_n_0
    );
\avm_writedata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(0),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[0]_i_1_n_0\
    );
\avm_writedata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(10),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[10]_i_1_n_0\
    );
\avm_writedata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(11),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[11]_i_1_n_0\
    );
\avm_writedata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(12),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[12]_i_1_n_0\
    );
\avm_writedata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(13),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[13]_i_1_n_0\
    );
\avm_writedata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(14),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[14]_i_1_n_0\
    );
\avm_writedata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(15),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[15]_i_1_n_0\
    );
\avm_writedata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(16),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[16]_i_1_n_0\
    );
\avm_writedata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(17),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[17]_i_1_n_0\
    );
\avm_writedata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(18),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[18]_i_1_n_0\
    );
\avm_writedata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(19),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[19]_i_1_n_0\
    );
\avm_writedata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(1),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[1]_i_1_n_0\
    );
\avm_writedata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(20),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[20]_i_1_n_0\
    );
\avm_writedata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(21),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[21]_i_1_n_0\
    );
\avm_writedata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(22),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[22]_i_1_n_0\
    );
\avm_writedata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(23),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[23]_i_1_n_0\
    );
\avm_writedata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(24),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[24]_i_1_n_0\
    );
\avm_writedata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(25),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[25]_i_1_n_0\
    );
\avm_writedata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(26),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[26]_i_1_n_0\
    );
\avm_writedata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(27),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[27]_i_1_n_0\
    );
\avm_writedata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(28),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[28]_i_1_n_0\
    );
\avm_writedata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(29),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[29]_i_1_n_0\
    );
\avm_writedata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(2),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[2]_i_1_n_0\
    );
\avm_writedata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(30),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[30]_i_1_n_0\
    );
\avm_writedata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080AA80AA80AA80"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => avm_write_i_2_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => avm_waitrequest,
      I5 => current_state115_out,
      O => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(31),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[31]_i_2_n_0\
    );
\avm_writedata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(3),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[3]_i_1_n_0\
    );
\avm_writedata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(4),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[4]_i_1_n_0\
    );
\avm_writedata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(5),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[5]_i_1_n_0\
    );
\avm_writedata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(6),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[6]_i_1_n_0\
    );
\avm_writedata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(7),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[7]_i_1_n_0\
    );
\avm_writedata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(8),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[8]_i_1_n_0\
    );
\avm_writedata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => s_axi_wdata(9),
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \avm_writedata[9]_i_1_n_0\
    );
\avm_writedata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[0]_i_1_n_0\,
      Q => avm_writedata(0),
      R => '0'
    );
\avm_writedata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[10]_i_1_n_0\,
      Q => avm_writedata(10),
      R => '0'
    );
\avm_writedata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[11]_i_1_n_0\,
      Q => avm_writedata(11),
      R => '0'
    );
\avm_writedata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[12]_i_1_n_0\,
      Q => avm_writedata(12),
      R => '0'
    );
\avm_writedata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[13]_i_1_n_0\,
      Q => avm_writedata(13),
      R => '0'
    );
\avm_writedata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[14]_i_1_n_0\,
      Q => avm_writedata(14),
      R => '0'
    );
\avm_writedata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[15]_i_1_n_0\,
      Q => avm_writedata(15),
      R => '0'
    );
\avm_writedata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[16]_i_1_n_0\,
      Q => avm_writedata(16),
      R => '0'
    );
\avm_writedata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[17]_i_1_n_0\,
      Q => avm_writedata(17),
      R => '0'
    );
\avm_writedata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[18]_i_1_n_0\,
      Q => avm_writedata(18),
      R => '0'
    );
\avm_writedata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[19]_i_1_n_0\,
      Q => avm_writedata(19),
      R => '0'
    );
\avm_writedata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[1]_i_1_n_0\,
      Q => avm_writedata(1),
      R => '0'
    );
\avm_writedata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[20]_i_1_n_0\,
      Q => avm_writedata(20),
      R => '0'
    );
\avm_writedata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[21]_i_1_n_0\,
      Q => avm_writedata(21),
      R => '0'
    );
\avm_writedata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[22]_i_1_n_0\,
      Q => avm_writedata(22),
      R => '0'
    );
\avm_writedata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[23]_i_1_n_0\,
      Q => avm_writedata(23),
      R => '0'
    );
\avm_writedata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[24]_i_1_n_0\,
      Q => avm_writedata(24),
      R => '0'
    );
\avm_writedata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[25]_i_1_n_0\,
      Q => avm_writedata(25),
      R => '0'
    );
\avm_writedata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[26]_i_1_n_0\,
      Q => avm_writedata(26),
      R => '0'
    );
\avm_writedata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[27]_i_1_n_0\,
      Q => avm_writedata(27),
      R => '0'
    );
\avm_writedata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[28]_i_1_n_0\,
      Q => avm_writedata(28),
      R => '0'
    );
\avm_writedata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[29]_i_1_n_0\,
      Q => avm_writedata(29),
      R => '0'
    );
\avm_writedata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[2]_i_1_n_0\,
      Q => avm_writedata(2),
      R => '0'
    );
\avm_writedata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[30]_i_1_n_0\,
      Q => avm_writedata(30),
      R => '0'
    );
\avm_writedata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[31]_i_2_n_0\,
      Q => avm_writedata(31),
      R => '0'
    );
\avm_writedata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[3]_i_1_n_0\,
      Q => avm_writedata(3),
      R => '0'
    );
\avm_writedata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[4]_i_1_n_0\,
      Q => avm_writedata(4),
      R => '0'
    );
\avm_writedata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[5]_i_1_n_0\,
      Q => avm_writedata(5),
      R => '0'
    );
\avm_writedata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[6]_i_1_n_0\,
      Q => avm_writedata(6),
      R => '0'
    );
\avm_writedata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[7]_i_1_n_0\,
      Q => avm_writedata(7),
      R => '0'
    );
\avm_writedata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[8]_i_1_n_0\,
      Q => avm_writedata(8),
      R => '0'
    );
\avm_writedata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_1_n_0\,
      D => \avm_writedata[9]_i_1_n_0\,
      Q => avm_writedata(9),
      R => '0'
    );
s_axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0003AAAA0000"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \^s_axi_arready\,
      O => s_axi_arready_i_1_n_0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA03AA00AA00"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => p_1_in9_in,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => \^s_axi_awready\,
      O => s_axi_awready_i_2_n_0
    );
s_axi_awready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \tout_counter_reg__0\(1),
      I1 => \tout_counter_reg__0\(0),
      I2 => \tout_counter_reg__0\(3),
      I3 => \tout_counter_reg__0\(2),
      I4 => s_axi_awready_i_4_n_0,
      I5 => avm_waitrequest,
      O => s_axi_awready_i_3_n_0
    );
s_axi_awready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \tout_counter_reg__0\(4),
      I1 => \tout_counter_reg__0\(5),
      I2 => \tout_counter_reg__0\(6),
      I3 => \tout_counter_reg__0\(7),
      I4 => start_reg_n_0,
      I5 => \tout_counter_reg__0\(8),
      O => s_axi_awready_i_4_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => s_axi_awready_i_1_n_0
    );
\s_axi_bresp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202000F020200000"
    )
        port map (
      I0 => avm_resp(0),
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => s_axi_aresetn,
      I3 => done_write,
      I4 => avm_writeresponsevalid_i,
      I5 => \^s_axi_bresp\(0),
      O => \s_axi_bresp[0]_i_1_n_0\
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E000F0E0E00000"
    )
        port map (
      I0 => avm_resp(1),
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => s_axi_aresetn,
      I3 => done_write,
      I4 => avm_writeresponsevalid_i,
      I5 => \^s_axi_bresp\(1),
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70FFFFFF70707070"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => avm_readdata_i,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => \s_axi_bresp[1]_i_2_n_0\
    );
\s_axi_bresp[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      O => done_write
    );
\s_axi_bresp[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0888"
    )
        port map (
      I0 => avm_writeresponsevalid,
      I1 => p_1_in9_in,
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      I4 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => avm_writeresponsevalid_i
    );
\s_axi_bresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp[0]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(1),
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EAFFEA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => p_1_in9_in,
      I2 => avm_writeresponsevalid,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(0),
      O => p_1_in(0)
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(10),
      O => p_1_in(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(11),
      O => p_1_in(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(12),
      O => p_1_in(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(13),
      O => p_1_in(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(14),
      O => p_1_in(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(15),
      O => p_1_in(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(16),
      O => p_1_in(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(17),
      O => p_1_in(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(18),
      O => p_1_in(18)
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(19),
      O => p_1_in(19)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(1),
      O => p_1_in(1)
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(20),
      O => p_1_in(20)
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(21),
      O => p_1_in(21)
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(22),
      O => p_1_in(22)
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(23),
      O => p_1_in(23)
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(24),
      O => p_1_in(24)
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(25),
      O => p_1_in(25)
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(26),
      O => p_1_in(26)
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(27),
      O => p_1_in(27)
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(28),
      O => p_1_in(28)
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(29),
      O => p_1_in(29)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(2),
      O => p_1_in(2)
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(30),
      O => p_1_in(30)
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2A2A2AFFFFFFFF"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => avm_readdatavalid,
      I4 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I5 => s_axi_aresetn,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(31),
      O => p_1_in(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(3),
      O => p_1_in(3)
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(4),
      O => p_1_in(4)
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(5),
      O => p_1_in(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(6),
      O => p_1_in(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(7),
      O => p_1_in(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(8),
      O => p_1_in(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      I5 => avm_readdata(9),
      O => p_1_in(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(10),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(11),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(12),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(13),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(14),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(15),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(16),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(17),
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(18),
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(19),
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(20),
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(21),
      Q => s_axi_rdata(21),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(22),
      Q => s_axi_rdata(22),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(23),
      Q => s_axi_rdata(23),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(24),
      Q => s_axi_rdata(24),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(25),
      Q => s_axi_rdata(25),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(26),
      Q => s_axi_rdata(26),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(27),
      Q => s_axi_rdata(27),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(28),
      Q => s_axi_rdata(28),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(29),
      Q => s_axi_rdata(29),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(30),
      Q => s_axi_rdata(30),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(31),
      Q => s_axi_rdata(31),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rresp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202000F020200000"
    )
        port map (
      I0 => avm_resp(0),
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => s_axi_aresetn,
      I3 => done_read,
      I4 => avm_readdatavalid_i,
      I5 => \^s_axi_rresp\(0),
      O => \s_axi_rresp[0]_i_1_n_0\
    );
\s_axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E000F0E0E00000"
    )
        port map (
      I0 => avm_resp(1),
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => s_axi_aresetn,
      I3 => done_read,
      I4 => avm_readdatavalid_i,
      I5 => \^s_axi_rresp\(1),
      O => \s_axi_rresp[1]_i_1_n_0\
    );
\s_axi_rresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      O => done_read
    );
\s_axi_rresp[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => avm_readdata_i,
      I3 => avm_readdatavalid,
      I4 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => avm_readdatavalid_i
    );
\s_axi_rresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rresp[0]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => '0'
    );
\s_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rresp[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(1),
      R => '0'
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8FFF8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdatavalid,
      I2 => avm_readdata_i,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => s_axi_awready_i_1_n_0
    );
s_axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA03AA00AA00"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => p_1_in9_in,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I5 => \^s_axi_wready\,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => s_axi_awready_i_1_n_0
    );
start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFCFFFFFDFC0000"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => start_i_2_n_0,
      I2 => start_i_3_n_0,
      I3 => start_i_4_n_0,
      I4 => start,
      I5 => start_reg_n_0,
      O => start_i_1_n_0
    );
start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777477700000000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_awready_i_4_n_0,
      I3 => \FSM_onehot_current_state[8]_i_4_n_0\,
      I4 => avm_writeresponsevalid_i,
      I5 => p_1_in9_in,
      O => start_i_2_n_0
    );
start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777477700000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_awready_i_4_n_0,
      I3 => \FSM_onehot_current_state[8]_i_4_n_0\,
      I4 => avm_readdatavalid_i,
      I5 => \FSM_onehot_current_state_reg_n_0_[6]\,
      O => start_i_3_n_0
    );
start_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => start_i_4_n_0
    );
start_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[6]\,
      I1 => avm_readdata_i,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_current_state[6]_i_2_n_0\,
      O => start
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_i_1_n_0,
      Q => start_reg_n_0,
      R => s_axi_awready_i_1_n_0
    );
\tout_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tout_counter_reg__0\(0),
      O => p_0_in(0)
    );
\tout_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tout_counter_reg__0\(0),
      I1 => \tout_counter_reg__0\(1),
      O => p_0_in(1)
    );
\tout_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \tout_counter_reg__0\(0),
      I1 => \tout_counter_reg__0\(1),
      I2 => \tout_counter_reg__0\(2),
      O => p_0_in(2)
    );
\tout_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \tout_counter_reg__0\(1),
      I1 => \tout_counter_reg__0\(0),
      I2 => \tout_counter_reg__0\(2),
      I3 => \tout_counter_reg__0\(3),
      O => p_0_in(3)
    );
\tout_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \tout_counter_reg__0\(3),
      I1 => \tout_counter_reg__0\(2),
      I2 => \tout_counter_reg__0\(0),
      I3 => \tout_counter_reg__0\(1),
      I4 => \tout_counter_reg__0\(4),
      O => p_0_in(4)
    );
\tout_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \tout_counter_reg__0\(1),
      I1 => \tout_counter_reg__0\(0),
      I2 => \tout_counter_reg__0\(2),
      I3 => \tout_counter_reg__0\(3),
      I4 => \tout_counter_reg__0\(4),
      I5 => \tout_counter_reg__0\(5),
      O => p_0_in(5)
    );
\tout_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tout_counter[8]_i_3_n_0\,
      I1 => \tout_counter_reg__0\(6),
      O => p_0_in(6)
    );
\tout_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \tout_counter[8]_i_3_n_0\,
      I1 => \tout_counter_reg__0\(6),
      I2 => \tout_counter_reg__0\(7),
      O => p_0_in(7)
    );
\tout_counter[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_reg_n_0,
      O => clear
    );
\tout_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \tout_counter_reg__0\(7),
      I1 => \tout_counter_reg__0\(6),
      I2 => \tout_counter[8]_i_3_n_0\,
      I3 => \tout_counter_reg__0\(8),
      O => p_0_in(8)
    );
\tout_counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \tout_counter_reg__0\(1),
      I1 => \tout_counter_reg__0\(0),
      I2 => \tout_counter_reg__0\(2),
      I3 => \tout_counter_reg__0\(3),
      I4 => \tout_counter_reg__0\(4),
      I5 => \tout_counter_reg__0\(5),
      O => \tout_counter[8]_i_3_n_0\
    );
\tout_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \tout_counter_reg__0\(0),
      S => clear
    );
\tout_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \tout_counter_reg__0\(1),
      R => clear
    );
\tout_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \tout_counter_reg__0\(2),
      R => clear
    );
\tout_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \tout_counter_reg__0\(3),
      R => clear
    );
\tout_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(4),
      Q => \tout_counter_reg__0\(4),
      R => clear
    );
\tout_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(5),
      Q => \tout_counter_reg__0\(5),
      R => clear
    );
\tout_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(6),
      Q => \tout_counter_reg__0\(6),
      R => clear
    );
\tout_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(7),
      Q => \tout_counter_reg__0\(7),
      R => clear
    );
\tout_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(8),
      Q => \tout_counter_reg__0\(8),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_byteenable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    avm_readdatavalid : in STD_LOGIC;
    avm_burstcount : out STD_LOGIC_VECTOR ( 0 to 0 );
    avm_beginbursttransfer : out STD_LOGIC;
    avm_writeresponsevalid : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC
  );
  attribute All_zero : string;
  attribute All_zero of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "1'b0";
  attribute C_ADDRESS_MODE : integer;
  attribute C_ADDRESS_MODE of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 0;
  attribute C_AVM_BURST_WIDTH : integer;
  attribute C_AVM_BURST_WIDTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_BASE1_ADDR : string;
  attribute C_BASE1_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE2_ADDR : string;
  attribute C_BASE2_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE3_ADDR : string;
  attribute C_BASE3_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE4_ADDR : string;
  attribute C_BASE4_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BURST_LENGTH : integer;
  attribute C_BURST_LENGTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 4;
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 256;
  attribute C_FAMILY : string;
  attribute C_FAMILY of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "zynq";
  attribute C_FIXED_READ_WAIT : integer;
  attribute C_FIXED_READ_WAIT of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_FIXED_WRITE_WAIT : integer;
  attribute C_FIXED_WRITE_WAIT of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_HAS_FIXED_READ_LATENCY : integer;
  attribute C_HAS_FIXED_READ_LATENCY of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 0;
  attribute C_HAS_FIXED_WAIT : integer;
  attribute C_HAS_FIXED_WAIT of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 0;
  attribute C_HAS_RESPONSE : integer;
  attribute C_HAS_RESPONSE of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_HIGH1_ADDR : string;
  attribute C_HIGH1_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH2_ADDR : string;
  attribute C_HIGH2_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH3_ADDR : string;
  attribute C_HIGH3_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH4_ADDR : string;
  attribute C_HIGH4_ADDR of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_NUM_ADDRESS_RANGES : integer;
  attribute C_NUM_ADDRESS_RANGES of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 0;
  attribute C_NUM_OUTSTANDING : integer;
  attribute C_NUM_OUTSTANDING of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 2;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 4;
  attribute C_USE_WSTRB : integer;
  attribute C_USE_WSTRB of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top : entity is "axi_amm_bridge_v1_0_1_top";
end zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top;

architecture STRUCTURE of zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  avm_burstcount(0) <= \<const1>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
\AXI_LITE.I_AVA_MASTER_LITE\: entity work.zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_lite
     port map (
      avm_address(31 downto 0) => avm_address(31 downto 0),
      avm_beginbursttransfer => avm_beginbursttransfer,
      avm_byteenable(3 downto 0) => avm_byteenable(3 downto 0),
      avm_read => avm_read,
      avm_readdata(31 downto 0) => avm_readdata(31 downto 0),
      avm_readdatavalid => avm_readdatavalid,
      avm_resp(1 downto 0) => avm_resp(1 downto 0),
      avm_waitrequest => avm_waitrequest,
      avm_write => avm_write,
      avm_writedata(31 downto 0) => avm_writedata(31 downto 0),
      avm_writeresponsevalid => avm_writeresponsevalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_top_axi_amm_bridge_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_byteenable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    avm_readdatavalid : in STD_LOGIC;
    avm_writeresponsevalid : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_top_axi_amm_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_top_axi_amm_bridge_0_0 : entity is "zynq_top_axi_amm_bridge_0_0,axi_amm_bridge_v1_0_1_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_top_axi_amm_bridge_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zynq_top_axi_amm_bridge_0_0 : entity is "axi_amm_bridge_v1_0_1_top,Vivado 2016.4";
end zynq_top_axi_amm_bridge_0_0;

architecture STRUCTURE of zynq_top_axi_amm_bridge_0_0 is
  signal NLW_inst_avm_beginbursttransfer_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avm_burstcount_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute All_zero : string;
  attribute All_zero of inst : label is "1'b0";
  attribute C_ADDRESS_MODE : integer;
  attribute C_ADDRESS_MODE of inst : label is 0;
  attribute C_AVM_BURST_WIDTH : integer;
  attribute C_AVM_BURST_WIDTH of inst : label is 1;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of inst : label is 1;
  attribute C_BASE1_ADDR : string;
  attribute C_BASE1_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE2_ADDR : string;
  attribute C_BASE2_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE3_ADDR : string;
  attribute C_BASE3_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE4_ADDR : string;
  attribute C_BASE4_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BURST_LENGTH : integer;
  attribute C_BURST_LENGTH of inst : label is 4;
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of inst : label is 256;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_FIXED_READ_WAIT : integer;
  attribute C_FIXED_READ_WAIT of inst : label is 1;
  attribute C_FIXED_WRITE_WAIT : integer;
  attribute C_FIXED_WRITE_WAIT of inst : label is 1;
  attribute C_HAS_FIXED_READ_LATENCY : integer;
  attribute C_HAS_FIXED_READ_LATENCY of inst : label is 0;
  attribute C_HAS_FIXED_WAIT : integer;
  attribute C_HAS_FIXED_WAIT of inst : label is 0;
  attribute C_HAS_RESPONSE : integer;
  attribute C_HAS_RESPONSE of inst : label is 1;
  attribute C_HIGH1_ADDR : string;
  attribute C_HIGH1_ADDR of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH2_ADDR : string;
  attribute C_HIGH2_ADDR of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH3_ADDR : string;
  attribute C_HIGH3_ADDR of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_HIGH4_ADDR : string;
  attribute C_HIGH4_ADDR of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_NUM_ADDRESS_RANGES : integer;
  attribute C_NUM_ADDRESS_RANGES of inst : label is 0;
  attribute C_NUM_OUTSTANDING : integer;
  attribute C_NUM_OUTSTANDING of inst : label is 2;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of inst : label is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of inst : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 4;
  attribute C_USE_WSTRB : integer;
  attribute C_USE_WSTRB of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
begin
inst: entity work.zynq_top_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_1_top
     port map (
      avm_address(31 downto 0) => avm_address(31 downto 0),
      avm_beginbursttransfer => NLW_inst_avm_beginbursttransfer_UNCONNECTED,
      avm_burstcount(0) => NLW_inst_avm_burstcount_UNCONNECTED(0),
      avm_byteenable(3 downto 0) => avm_byteenable(3 downto 0),
      avm_read => avm_read,
      avm_readdata(31 downto 0) => avm_readdata(31 downto 0),
      avm_readdatavalid => avm_readdatavalid,
      avm_resp(1 downto 0) => avm_resp(1 downto 0),
      avm_waitrequest => avm_waitrequest,
      avm_write => avm_write,
      avm_writedata(31 downto 0) => avm_writedata(31 downto 0),
      avm_writeresponsevalid => avm_writeresponsevalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => NLW_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
