// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sat Aug  3 13:21:50 2019
// Host        : DESKTOP-47LU6A1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub MemoryTestBlock_stub.v -force
// Design      : MemoryTestBlock
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MemoryTestBlock(clk, rstn, s_axi_control_AWVALID, 
  s_axi_control_AWREADY, s_axi_control_AWADDR, s_axi_control_WVALID, 
  s_axi_control_WREADY, s_axi_control_WDATA, s_axi_control_WSTRB, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_BRESP, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_ARADDR, s_axi_control_RVALID, 
  s_axi_control_RREADY, s_axi_control_RDATA, s_axi_control_RRESP, m_ddr_axi_AWVALID, 
  m_ddr_axi_AWREADY, m_ddr_axi_AWADDR, m_ddr_axi_AWLEN, m_ddr_axi_AWSIZE, 
  m_ddr_axi_AWBURST, m_ddr_axi_AWLOCK, m_ddr_axi_AWCACHE, m_ddr_axi_AWPROT, 
  m_ddr_axi_AWQOS, m_ddr_axi_AWREGION, m_ddr_axi_AWID, m_ddr_axi_AWUSER, m_ddr_axi_WVALID, 
  m_ddr_axi_WREADY, m_ddr_axi_WDATA, m_ddr_axi_WSTRB, m_ddr_axi_WLAST, m_ddr_axi_WID, 
  m_ddr_axi_WUSER, m_ddr_axi_BVALID, m_ddr_axi_BREADY, m_ddr_axi_BRESP, m_ddr_axi_BID, 
  m_ddr_axi_BUSER, m_ddr_axi_ARVALID, m_ddr_axi_ARREADY, m_ddr_axi_ARADDR, m_ddr_axi_ARLEN, 
  m_ddr_axi_ARSIZE, m_ddr_axi_ARBURST, m_ddr_axi_ARLOCK, m_ddr_axi_ARCACHE, 
  m_ddr_axi_ARPROT, m_ddr_axi_ARQOS, m_ddr_axi_ARREGION, m_ddr_axi_ARID, m_ddr_axi_ARUSER, 
  m_ddr_axi_RVALID, m_ddr_axi_RREADY, m_ddr_axi_RDATA, m_ddr_axi_RLAST, m_ddr_axi_RRESP, 
  m_ddr_axi_RID, m_ddr_axi_RUSER)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_AWADDR[6:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_ARADDR[6:0],s_axi_control_RVALID,s_axi_control_RREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],m_ddr_axi_AWVALID,m_ddr_axi_AWREADY,m_ddr_axi_AWADDR[63:0],m_ddr_axi_AWLEN[7:0],m_ddr_axi_AWSIZE[2:0],m_ddr_axi_AWBURST[1:0],m_ddr_axi_AWLOCK[1:0],m_ddr_axi_AWCACHE[3:0],m_ddr_axi_AWPROT[2:0],m_ddr_axi_AWQOS[3:0],m_ddr_axi_AWREGION[3:0],m_ddr_axi_AWID[0:0],m_ddr_axi_AWUSER[0:0],m_ddr_axi_WVALID,m_ddr_axi_WREADY,m_ddr_axi_WDATA[127:0],m_ddr_axi_WSTRB[15:0],m_ddr_axi_WLAST,m_ddr_axi_WID[0:0],m_ddr_axi_WUSER[0:0],m_ddr_axi_BVALID,m_ddr_axi_BREADY,m_ddr_axi_BRESP[1:0],m_ddr_axi_BID[0:0],m_ddr_axi_BUSER[0:0],m_ddr_axi_ARVALID,m_ddr_axi_ARREADY,m_ddr_axi_ARADDR[63:0],m_ddr_axi_ARLEN[7:0],m_ddr_axi_ARSIZE[2:0],m_ddr_axi_ARBURST[1:0],m_ddr_axi_ARLOCK[1:0],m_ddr_axi_ARCACHE[3:0],m_ddr_axi_ARPROT[2:0],m_ddr_axi_ARQOS[3:0],m_ddr_axi_ARREGION[3:0],m_ddr_axi_ARID[0:0],m_ddr_axi_ARUSER[0:0],m_ddr_axi_RVALID,m_ddr_axi_RREADY,m_ddr_axi_RDATA[127:0],m_ddr_axi_RLAST,m_ddr_axi_RRESP[1:0],m_ddr_axi_RID[0:0],m_ddr_axi_RUSER[0:0]" */;
  input clk;
  input rstn;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [6:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output m_ddr_axi_AWVALID;
  input m_ddr_axi_AWREADY;
  output [63:0]m_ddr_axi_AWADDR;
  output [7:0]m_ddr_axi_AWLEN;
  output [2:0]m_ddr_axi_AWSIZE;
  output [1:0]m_ddr_axi_AWBURST;
  output [1:0]m_ddr_axi_AWLOCK;
  output [3:0]m_ddr_axi_AWCACHE;
  output [2:0]m_ddr_axi_AWPROT;
  output [3:0]m_ddr_axi_AWQOS;
  output [3:0]m_ddr_axi_AWREGION;
  output [0:0]m_ddr_axi_AWID;
  output [0:0]m_ddr_axi_AWUSER;
  output m_ddr_axi_WVALID;
  input m_ddr_axi_WREADY;
  output [127:0]m_ddr_axi_WDATA;
  output [15:0]m_ddr_axi_WSTRB;
  output m_ddr_axi_WLAST;
  output [0:0]m_ddr_axi_WID;
  output [0:0]m_ddr_axi_WUSER;
  input m_ddr_axi_BVALID;
  output m_ddr_axi_BREADY;
  input [1:0]m_ddr_axi_BRESP;
  input [0:0]m_ddr_axi_BID;
  input [0:0]m_ddr_axi_BUSER;
  output m_ddr_axi_ARVALID;
  input m_ddr_axi_ARREADY;
  output [63:0]m_ddr_axi_ARADDR;
  output [7:0]m_ddr_axi_ARLEN;
  output [2:0]m_ddr_axi_ARSIZE;
  output [1:0]m_ddr_axi_ARBURST;
  output [1:0]m_ddr_axi_ARLOCK;
  output [3:0]m_ddr_axi_ARCACHE;
  output [2:0]m_ddr_axi_ARPROT;
  output [3:0]m_ddr_axi_ARQOS;
  output [3:0]m_ddr_axi_ARREGION;
  output [0:0]m_ddr_axi_ARID;
  output [0:0]m_ddr_axi_ARUSER;
  input m_ddr_axi_RVALID;
  output m_ddr_axi_RREADY;
  input [127:0]m_ddr_axi_RDATA;
  input m_ddr_axi_RLAST;
  input [1:0]m_ddr_axi_RRESP;
  input [0:0]m_ddr_axi_RID;
  input [0:0]m_ddr_axi_RUSER;
endmodule
