-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Oct 14 15:24:02 2019
-- Host        : DESKTOP-UAK7KP3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ IP_Test_MemoryTestBlock_0_0_stub.vhdl
-- Design      : IP_Test_MemoryTestBlock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    m_ddr_axi_ARREADY : in STD_LOGIC;
    m_ddr_axi_ARVALID : out STD_LOGIC;
    m_ddr_axi_AWREADY : in STD_LOGIC;
    m_ddr_axi_AWVALID : out STD_LOGIC;
    m_ddr_axi_BREADY : out STD_LOGIC;
    m_ddr_axi_BVALID : in STD_LOGIC;
    m_ddr_axi_RLAST : in STD_LOGIC;
    m_ddr_axi_RREADY : out STD_LOGIC;
    m_ddr_axi_RVALID : in STD_LOGIC;
    m_ddr_axi_WLAST : out STD_LOGIC;
    m_ddr_axi_WREADY : in STD_LOGIC;
    m_ddr_axi_WVALID : out STD_LOGIC;
    rstn : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    m_ddr_axi_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_ddr_axi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_ddr_axi_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ddr_axi_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ddr_axi_ARUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_ddr_axi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_ddr_axi_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ddr_axi_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_ddr_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_ddr_axi_AWUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_BUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_ddr_axi_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ddr_axi_RUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_ddr_axi_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_ddr_axi_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_ddr_axi_WUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,m_ddr_axi_ARREADY,m_ddr_axi_ARVALID,m_ddr_axi_AWREADY,m_ddr_axi_AWVALID,m_ddr_axi_BREADY,m_ddr_axi_BVALID,m_ddr_axi_RLAST,m_ddr_axi_RREADY,m_ddr_axi_RVALID,m_ddr_axi_WLAST,m_ddr_axi_WREADY,m_ddr_axi_WVALID,rstn,s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BVALID,s_axi_control_RREADY,s_axi_control_RVALID,s_axi_control_WREADY,s_axi_control_WVALID,m_ddr_axi_ARADDR[63:0],m_ddr_axi_ARBURST[1:0],m_ddr_axi_ARCACHE[3:0],m_ddr_axi_ARID[0:0],m_ddr_axi_ARLEN[7:0],m_ddr_axi_ARLOCK[1:0],m_ddr_axi_ARPROT[2:0],m_ddr_axi_ARQOS[3:0],m_ddr_axi_ARREGION[3:0],m_ddr_axi_ARSIZE[2:0],m_ddr_axi_ARUSER[0:0],m_ddr_axi_AWADDR[63:0],m_ddr_axi_AWBURST[1:0],m_ddr_axi_AWCACHE[3:0],m_ddr_axi_AWID[0:0],m_ddr_axi_AWLEN[7:0],m_ddr_axi_AWLOCK[1:0],m_ddr_axi_AWPROT[2:0],m_ddr_axi_AWQOS[3:0],m_ddr_axi_AWREGION[3:0],m_ddr_axi_AWSIZE[2:0],m_ddr_axi_AWUSER[0:0],m_ddr_axi_BID[0:0],m_ddr_axi_BRESP[1:0],m_ddr_axi_BUSER[0:0],m_ddr_axi_RDATA[127:0],m_ddr_axi_RID[0:0],m_ddr_axi_RRESP[1:0],m_ddr_axi_RUSER[0:0],m_ddr_axi_WDATA[127:0],m_ddr_axi_WID[0:0],m_ddr_axi_WSTRB[15:0],m_ddr_axi_WUSER[0:0],s_axi_control_ARADDR[6:0],s_axi_control_AWADDR[6:0],s_axi_control_BRESP[1:0],s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MemoryTestBlock,Vivado 2018.2.1";
begin
end;
