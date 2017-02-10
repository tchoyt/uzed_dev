//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
//Date        : Fri Feb 10 14:37:02 2017
//Host        : thoyt-dell7510 running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target zynq_top_wrapper.bd
//Design      : zynq_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zynq_top_wrapper
   (axi_ref_clk,
    axi_rst_n,
    m_avl_reg_address,
    m_avl_reg_byteenable,
    m_avl_reg_read,
    m_avl_reg_readdata,
    m_avl_reg_readdatavalid,
    m_avl_reg_waitrequest,
    m_avl_reg_write,
    m_avl_reg_writedata,
    m_axi_reg_araddr,
    m_axi_reg_arprot,
    m_axi_reg_arready,
    m_axi_reg_arvalid,
    m_axi_reg_awaddr,
    m_axi_reg_awprot,
    m_axi_reg_awready,
    m_axi_reg_awvalid,
    m_axi_reg_bready,
    m_axi_reg_bresp,
    m_axi_reg_bvalid,
    m_axi_reg_rdata,
    m_axi_reg_rready,
    m_axi_reg_rresp,
    m_axi_reg_rvalid,
    m_axi_reg_wdata,
    m_axi_reg_wready,
    m_axi_reg_wstrb,
    m_axi_reg_wvalid,
    zynq_ddr_addr,
    zynq_ddr_ba,
    zynq_ddr_cas_n,
    zynq_ddr_ck_n,
    zynq_ddr_ck_p,
    zynq_ddr_cke,
    zynq_ddr_cs_n,
    zynq_ddr_dm,
    zynq_ddr_dq,
    zynq_ddr_dqs_n,
    zynq_ddr_dqs_p,
    zynq_ddr_odt,
    zynq_ddr_ras_n,
    zynq_ddr_reset_n,
    zynq_ddr_we_n,
    zynq_fixed_io_ddr_vrn,
    zynq_fixed_io_ddr_vrp,
    zynq_fixed_io_mio,
    zynq_fixed_io_ps_clk,
    zynq_fixed_io_ps_porb,
    zynq_fixed_io_ps_srstb);
  output axi_ref_clk;
  output [0:0]axi_rst_n;
  output [31:0]m_avl_reg_address;
  output [3:0]m_avl_reg_byteenable;
  output m_avl_reg_read;
  input [31:0]m_avl_reg_readdata;
  input m_avl_reg_readdatavalid;
  input m_avl_reg_waitrequest;
  output m_avl_reg_write;
  output [31:0]m_avl_reg_writedata;
  output [31:0]m_axi_reg_araddr;
  output [2:0]m_axi_reg_arprot;
  input m_axi_reg_arready;
  output m_axi_reg_arvalid;
  output [31:0]m_axi_reg_awaddr;
  output [2:0]m_axi_reg_awprot;
  input m_axi_reg_awready;
  output m_axi_reg_awvalid;
  output m_axi_reg_bready;
  input [1:0]m_axi_reg_bresp;
  input m_axi_reg_bvalid;
  input [31:0]m_axi_reg_rdata;
  output m_axi_reg_rready;
  input [1:0]m_axi_reg_rresp;
  input m_axi_reg_rvalid;
  output [31:0]m_axi_reg_wdata;
  input m_axi_reg_wready;
  output [3:0]m_axi_reg_wstrb;
  output m_axi_reg_wvalid;
  inout [14:0]zynq_ddr_addr;
  inout [2:0]zynq_ddr_ba;
  inout zynq_ddr_cas_n;
  inout zynq_ddr_ck_n;
  inout zynq_ddr_ck_p;
  inout zynq_ddr_cke;
  inout zynq_ddr_cs_n;
  inout [3:0]zynq_ddr_dm;
  inout [31:0]zynq_ddr_dq;
  inout [3:0]zynq_ddr_dqs_n;
  inout [3:0]zynq_ddr_dqs_p;
  inout zynq_ddr_odt;
  inout zynq_ddr_ras_n;
  inout zynq_ddr_reset_n;
  inout zynq_ddr_we_n;
  inout zynq_fixed_io_ddr_vrn;
  inout zynq_fixed_io_ddr_vrp;
  inout [53:0]zynq_fixed_io_mio;
  inout zynq_fixed_io_ps_clk;
  inout zynq_fixed_io_ps_porb;
  inout zynq_fixed_io_ps_srstb;

  wire axi_ref_clk;
  wire [0:0]axi_rst_n;
  wire [31:0]m_avl_reg_address;
  wire [3:0]m_avl_reg_byteenable;
  wire m_avl_reg_read;
  wire [31:0]m_avl_reg_readdata;
  wire m_avl_reg_readdatavalid;
  wire m_avl_reg_waitrequest;
  wire m_avl_reg_write;
  wire [31:0]m_avl_reg_writedata;
  wire [31:0]m_axi_reg_araddr;
  wire [2:0]m_axi_reg_arprot;
  wire m_axi_reg_arready;
  wire m_axi_reg_arvalid;
  wire [31:0]m_axi_reg_awaddr;
  wire [2:0]m_axi_reg_awprot;
  wire m_axi_reg_awready;
  wire m_axi_reg_awvalid;
  wire m_axi_reg_bready;
  wire [1:0]m_axi_reg_bresp;
  wire m_axi_reg_bvalid;
  wire [31:0]m_axi_reg_rdata;
  wire m_axi_reg_rready;
  wire [1:0]m_axi_reg_rresp;
  wire m_axi_reg_rvalid;
  wire [31:0]m_axi_reg_wdata;
  wire m_axi_reg_wready;
  wire [3:0]m_axi_reg_wstrb;
  wire m_axi_reg_wvalid;
  wire [14:0]zynq_ddr_addr;
  wire [2:0]zynq_ddr_ba;
  wire zynq_ddr_cas_n;
  wire zynq_ddr_ck_n;
  wire zynq_ddr_ck_p;
  wire zynq_ddr_cke;
  wire zynq_ddr_cs_n;
  wire [3:0]zynq_ddr_dm;
  wire [31:0]zynq_ddr_dq;
  wire [3:0]zynq_ddr_dqs_n;
  wire [3:0]zynq_ddr_dqs_p;
  wire zynq_ddr_odt;
  wire zynq_ddr_ras_n;
  wire zynq_ddr_reset_n;
  wire zynq_ddr_we_n;
  wire zynq_fixed_io_ddr_vrn;
  wire zynq_fixed_io_ddr_vrp;
  wire [53:0]zynq_fixed_io_mio;
  wire zynq_fixed_io_ps_clk;
  wire zynq_fixed_io_ps_porb;
  wire zynq_fixed_io_ps_srstb;

  zynq_top zynq_top_i
       (.axi_ref_clk(axi_ref_clk),
        .axi_rst_n(axi_rst_n),
        .m_avl_reg_address(m_avl_reg_address),
        .m_avl_reg_byteenable(m_avl_reg_byteenable),
        .m_avl_reg_read(m_avl_reg_read),
        .m_avl_reg_readdata(m_avl_reg_readdata),
        .m_avl_reg_readdatavalid(m_avl_reg_readdatavalid),
        .m_avl_reg_waitrequest(m_avl_reg_waitrequest),
        .m_avl_reg_write(m_avl_reg_write),
        .m_avl_reg_writedata(m_avl_reg_writedata),
        .m_axi_reg_araddr(m_axi_reg_araddr),
        .m_axi_reg_arprot(m_axi_reg_arprot),
        .m_axi_reg_arready(m_axi_reg_arready),
        .m_axi_reg_arvalid(m_axi_reg_arvalid),
        .m_axi_reg_awaddr(m_axi_reg_awaddr),
        .m_axi_reg_awprot(m_axi_reg_awprot),
        .m_axi_reg_awready(m_axi_reg_awready),
        .m_axi_reg_awvalid(m_axi_reg_awvalid),
        .m_axi_reg_bready(m_axi_reg_bready),
        .m_axi_reg_bresp(m_axi_reg_bresp),
        .m_axi_reg_bvalid(m_axi_reg_bvalid),
        .m_axi_reg_rdata(m_axi_reg_rdata),
        .m_axi_reg_rready(m_axi_reg_rready),
        .m_axi_reg_rresp(m_axi_reg_rresp),
        .m_axi_reg_rvalid(m_axi_reg_rvalid),
        .m_axi_reg_wdata(m_axi_reg_wdata),
        .m_axi_reg_wready(m_axi_reg_wready),
        .m_axi_reg_wstrb(m_axi_reg_wstrb),
        .m_axi_reg_wvalid(m_axi_reg_wvalid),
        .zynq_ddr_addr(zynq_ddr_addr),
        .zynq_ddr_ba(zynq_ddr_ba),
        .zynq_ddr_cas_n(zynq_ddr_cas_n),
        .zynq_ddr_ck_n(zynq_ddr_ck_n),
        .zynq_ddr_ck_p(zynq_ddr_ck_p),
        .zynq_ddr_cke(zynq_ddr_cke),
        .zynq_ddr_cs_n(zynq_ddr_cs_n),
        .zynq_ddr_dm(zynq_ddr_dm),
        .zynq_ddr_dq(zynq_ddr_dq),
        .zynq_ddr_dqs_n(zynq_ddr_dqs_n),
        .zynq_ddr_dqs_p(zynq_ddr_dqs_p),
        .zynq_ddr_odt(zynq_ddr_odt),
        .zynq_ddr_ras_n(zynq_ddr_ras_n),
        .zynq_ddr_reset_n(zynq_ddr_reset_n),
        .zynq_ddr_we_n(zynq_ddr_we_n),
        .zynq_fixed_io_ddr_vrn(zynq_fixed_io_ddr_vrn),
        .zynq_fixed_io_ddr_vrp(zynq_fixed_io_ddr_vrp),
        .zynq_fixed_io_mio(zynq_fixed_io_mio),
        .zynq_fixed_io_ps_clk(zynq_fixed_io_ps_clk),
        .zynq_fixed_io_ps_porb(zynq_fixed_io_ps_porb),
        .zynq_fixed_io_ps_srstb(zynq_fixed_io_ps_srstb));
endmodule
