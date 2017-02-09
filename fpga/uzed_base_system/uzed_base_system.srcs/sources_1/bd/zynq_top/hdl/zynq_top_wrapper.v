//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
//Date        : Thu Feb  9 10:07:45 2017
//Host        : thoyt-dell7510 running 64-bit Ubuntu 16.04.1 LTS
//Command     : generate_target zynq_top_wrapper.bd
//Design      : zynq_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zynq_top_wrapper
   (avm_pls_gen_address,
    avm_pls_gen_byteenable,
    avm_pls_gen_read,
    avm_pls_gen_readdata,
    avm_pls_gen_readdatavalid,
    avm_pls_gen_response,
    avm_pls_gen_waitrequest,
    avm_pls_gen_write,
    avm_pls_gen_writedata,
    avm_pls_gen_writeresponsevalid,
    axi_ref_clk,
    axi_rst_n,
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
  output [31:0]avm_pls_gen_address;
  output [3:0]avm_pls_gen_byteenable;
  output avm_pls_gen_read;
  input [31:0]avm_pls_gen_readdata;
  input avm_pls_gen_readdatavalid;
  input [1:0]avm_pls_gen_response;
  input avm_pls_gen_waitrequest;
  output avm_pls_gen_write;
  output [31:0]avm_pls_gen_writedata;
  input avm_pls_gen_writeresponsevalid;
  output axi_ref_clk;
  output [0:0]axi_rst_n;
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

  wire [31:0]avm_pls_gen_address;
  wire [3:0]avm_pls_gen_byteenable;
  wire avm_pls_gen_read;
  wire [31:0]avm_pls_gen_readdata;
  wire avm_pls_gen_readdatavalid;
  wire [1:0]avm_pls_gen_response;
  wire avm_pls_gen_waitrequest;
  wire avm_pls_gen_write;
  wire [31:0]avm_pls_gen_writedata;
  wire avm_pls_gen_writeresponsevalid;
  wire axi_ref_clk;
  wire [0:0]axi_rst_n;
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
       (.avm_pls_gen_address(avm_pls_gen_address),
        .avm_pls_gen_byteenable(avm_pls_gen_byteenable),
        .avm_pls_gen_read(avm_pls_gen_read),
        .avm_pls_gen_readdata(avm_pls_gen_readdata),
        .avm_pls_gen_readdatavalid(avm_pls_gen_readdatavalid),
        .avm_pls_gen_response(avm_pls_gen_response),
        .avm_pls_gen_waitrequest(avm_pls_gen_waitrequest),
        .avm_pls_gen_write(avm_pls_gen_write),
        .avm_pls_gen_writedata(avm_pls_gen_writedata),
        .avm_pls_gen_writeresponsevalid(avm_pls_gen_writeresponsevalid),
        .axi_ref_clk(axi_ref_clk),
        .axi_rst_n(axi_rst_n),
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
