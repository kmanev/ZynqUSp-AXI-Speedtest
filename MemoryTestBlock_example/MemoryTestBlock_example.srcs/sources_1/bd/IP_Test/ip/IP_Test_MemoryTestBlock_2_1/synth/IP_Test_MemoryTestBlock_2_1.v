// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: manchester.ac.uk:user:MemoryTestBlock:1.0
// IP Revision: 1

(* X_CORE_INFO = "MemoryTestBlock,Vivado 2018.2.1" *)
(* CHECK_LICENSE_TYPE = "IP_Test_MemoryTestBlock_2_1,MemoryTestBlock,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module IP_Test_MemoryTestBlock_2_1 (
  clk,
  m_ddr_axi_ARREADY,
  m_ddr_axi_ARVALID,
  m_ddr_axi_AWREADY,
  m_ddr_axi_AWVALID,
  m_ddr_axi_BREADY,
  m_ddr_axi_BVALID,
  m_ddr_axi_RLAST,
  m_ddr_axi_RREADY,
  m_ddr_axi_RVALID,
  m_ddr_axi_WLAST,
  m_ddr_axi_WREADY,
  m_ddr_axi_WVALID,
  rstn,
  s_axi_control_ARREADY,
  s_axi_control_ARVALID,
  s_axi_control_AWREADY,
  s_axi_control_AWVALID,
  s_axi_control_BREADY,
  s_axi_control_BVALID,
  s_axi_control_RREADY,
  s_axi_control_RVALID,
  s_axi_control_WREADY,
  s_axi_control_WVALID,
  m_ddr_axi_ARADDR,
  m_ddr_axi_ARBURST,
  m_ddr_axi_ARCACHE,
  m_ddr_axi_ARID,
  m_ddr_axi_ARLEN,
  m_ddr_axi_ARLOCK,
  m_ddr_axi_ARPROT,
  m_ddr_axi_ARQOS,
  m_ddr_axi_ARREGION,
  m_ddr_axi_ARSIZE,
  m_ddr_axi_ARUSER,
  m_ddr_axi_AWADDR,
  m_ddr_axi_AWBURST,
  m_ddr_axi_AWCACHE,
  m_ddr_axi_AWID,
  m_ddr_axi_AWLEN,
  m_ddr_axi_AWLOCK,
  m_ddr_axi_AWPROT,
  m_ddr_axi_AWQOS,
  m_ddr_axi_AWREGION,
  m_ddr_axi_AWSIZE,
  m_ddr_axi_AWUSER,
  m_ddr_axi_BID,
  m_ddr_axi_BRESP,
  m_ddr_axi_BUSER,
  m_ddr_axi_RDATA,
  m_ddr_axi_RID,
  m_ddr_axi_RRESP,
  m_ddr_axi_RUSER,
  m_ddr_axi_WDATA,
  m_ddr_axi_WID,
  m_ddr_axi_WSTRB,
  m_ddr_axi_WUSER,
  s_axi_control_ARADDR,
  s_axi_control_AWADDR,
  s_axi_control_BRESP,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_WDATA,
  s_axi_control_WSTRB
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_ddr_axi:s_axi_control, ASSOCIATED_RESET rstn, FREQ_HZ 99999999, PHASE 0.000, CLK_DOMAIN IP_Test_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARREADY" *)
input wire m_ddr_axi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARVALID" *)
output wire m_ddr_axi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWREADY" *)
input wire m_ddr_axi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWVALID" *)
output wire m_ddr_axi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi BREADY" *)
output wire m_ddr_axi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi BVALID" *)
input wire m_ddr_axi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RLAST" *)
input wire m_ddr_axi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RREADY" *)
output wire m_ddr_axi_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RVALID" *)
input wire m_ddr_axi_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WLAST" *)
output wire m_ddr_axi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WREADY" *)
input wire m_ddr_axi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WVALID" *)
output wire m_ddr_axi_WVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARADDR" *)
output wire [63 : 0] m_ddr_axi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARBURST" *)
output wire [1 : 0] m_ddr_axi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARCACHE" *)
output wire [3 : 0] m_ddr_axi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARID" *)
output wire [0 : 0] m_ddr_axi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARLEN" *)
output wire [7 : 0] m_ddr_axi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARLOCK" *)
output wire [1 : 0] m_ddr_axi_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARPROT" *)
output wire [2 : 0] m_ddr_axi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARQOS" *)
output wire [3 : 0] m_ddr_axi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARREGION" *)
output wire [3 : 0] m_ddr_axi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARSIZE" *)
output wire [2 : 0] m_ddr_axi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi ARUSER" *)
output wire [0 : 0] m_ddr_axi_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWADDR" *)
output wire [63 : 0] m_ddr_axi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWBURST" *)
output wire [1 : 0] m_ddr_axi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWCACHE" *)
output wire [3 : 0] m_ddr_axi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWID" *)
output wire [0 : 0] m_ddr_axi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWLEN" *)
output wire [7 : 0] m_ddr_axi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWLOCK" *)
output wire [1 : 0] m_ddr_axi_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWPROT" *)
output wire [2 : 0] m_ddr_axi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWQOS" *)
output wire [3 : 0] m_ddr_axi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWREGION" *)
output wire [3 : 0] m_ddr_axi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWSIZE" *)
output wire [2 : 0] m_ddr_axi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi AWUSER" *)
output wire [0 : 0] m_ddr_axi_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi BID" *)
input wire [0 : 0] m_ddr_axi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi BRESP" *)
input wire [1 : 0] m_ddr_axi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi BUSER" *)
input wire [0 : 0] m_ddr_axi_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RDATA" *)
input wire [127 : 0] m_ddr_axi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RID" *)
input wire [0 : 0] m_ddr_axi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RRESP" *)
input wire [1 : 0] m_ddr_axi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi RUSER" *)
input wire [0 : 0] m_ddr_axi_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WDATA" *)
output wire [127 : 0] m_ddr_axi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WID" *)
output wire [0 : 0] m_ddr_axi_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WSTRB" *)
output wire [15 : 0] m_ddr_axi_WSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_ddr_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999999, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN IP_Test_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1,\
 NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_ddr_axi WUSER" *)
output wire [0 : 0] m_ddr_axi_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [6 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [6 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999999, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN IP_Test_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;

  MemoryTestBlock inst (
    .clk(clk),
    .m_ddr_axi_ARREADY(m_ddr_axi_ARREADY),
    .m_ddr_axi_ARVALID(m_ddr_axi_ARVALID),
    .m_ddr_axi_AWREADY(m_ddr_axi_AWREADY),
    .m_ddr_axi_AWVALID(m_ddr_axi_AWVALID),
    .m_ddr_axi_BREADY(m_ddr_axi_BREADY),
    .m_ddr_axi_BVALID(m_ddr_axi_BVALID),
    .m_ddr_axi_RLAST(m_ddr_axi_RLAST),
    .m_ddr_axi_RREADY(m_ddr_axi_RREADY),
    .m_ddr_axi_RVALID(m_ddr_axi_RVALID),
    .m_ddr_axi_WLAST(m_ddr_axi_WLAST),
    .m_ddr_axi_WREADY(m_ddr_axi_WREADY),
    .m_ddr_axi_WVALID(m_ddr_axi_WVALID),
    .rstn(rstn),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .m_ddr_axi_ARADDR(m_ddr_axi_ARADDR),
    .m_ddr_axi_ARBURST(m_ddr_axi_ARBURST),
    .m_ddr_axi_ARCACHE(m_ddr_axi_ARCACHE),
    .m_ddr_axi_ARID(m_ddr_axi_ARID),
    .m_ddr_axi_ARLEN(m_ddr_axi_ARLEN),
    .m_ddr_axi_ARLOCK(m_ddr_axi_ARLOCK),
    .m_ddr_axi_ARPROT(m_ddr_axi_ARPROT),
    .m_ddr_axi_ARQOS(m_ddr_axi_ARQOS),
    .m_ddr_axi_ARREGION(m_ddr_axi_ARREGION),
    .m_ddr_axi_ARSIZE(m_ddr_axi_ARSIZE),
    .m_ddr_axi_ARUSER(m_ddr_axi_ARUSER),
    .m_ddr_axi_AWADDR(m_ddr_axi_AWADDR),
    .m_ddr_axi_AWBURST(m_ddr_axi_AWBURST),
    .m_ddr_axi_AWCACHE(m_ddr_axi_AWCACHE),
    .m_ddr_axi_AWID(m_ddr_axi_AWID),
    .m_ddr_axi_AWLEN(m_ddr_axi_AWLEN),
    .m_ddr_axi_AWLOCK(m_ddr_axi_AWLOCK),
    .m_ddr_axi_AWPROT(m_ddr_axi_AWPROT),
    .m_ddr_axi_AWQOS(m_ddr_axi_AWQOS),
    .m_ddr_axi_AWREGION(m_ddr_axi_AWREGION),
    .m_ddr_axi_AWSIZE(m_ddr_axi_AWSIZE),
    .m_ddr_axi_AWUSER(m_ddr_axi_AWUSER),
    .m_ddr_axi_BID(m_ddr_axi_BID),
    .m_ddr_axi_BRESP(m_ddr_axi_BRESP),
    .m_ddr_axi_BUSER(m_ddr_axi_BUSER),
    .m_ddr_axi_RDATA(m_ddr_axi_RDATA),
    .m_ddr_axi_RID(m_ddr_axi_RID),
    .m_ddr_axi_RRESP(m_ddr_axi_RRESP),
    .m_ddr_axi_RUSER(m_ddr_axi_RUSER),
    .m_ddr_axi_WDATA(m_ddr_axi_WDATA),
    .m_ddr_axi_WID(m_ddr_axi_WID),
    .m_ddr_axi_WSTRB(m_ddr_axi_WSTRB),
    .m_ddr_axi_WUSER(m_ddr_axi_WUSER),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB)
  );
endmodule
