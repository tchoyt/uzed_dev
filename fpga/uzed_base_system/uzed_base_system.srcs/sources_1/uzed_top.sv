/* Microzed Top Level */
module uzed_top (
    // Zynq DDR I/O
    inout [14:0]    zynq_ddr_addr,
    inout [2:0]     zynq_ddr_ba,
    inout           zynq_ddr_cas_n,
    inout           zynq_ddr_ck_n,
    inout           zynq_ddr_ck_p,
    inout           zynq_ddr_cke,
    inout           zynq_ddr_cs_n,
    inout [3:0]     zynq_ddr_dm,
    inout [31:0]    zynq_ddr_dq,
    inout [3:0]     zynq_ddr_dqs_n,
    inout [3:0]     zynq_ddr_dqs_p,
    inout           zynq_ddr_odt,
    inout           zynq_ddr_ras_n,
    inout           zynq_ddr_reset_n,
    inout           zynq_ddr_we_n,

    // Zynq Fixed I/O
    inout           zynq_fixed_io_ddr_vrn,
    inout           zynq_fixed_io_ddr_vrp,
    inout [53:0]    zynq_fixed_io_mio,
    inout           zynq_fixed_io_ps_clk,
    inout           zynq_fixed_io_ps_porb,
    inout           zynq_fixed_io_ps_srstb,

    // Pulse Generator Output
    output          pulse_gen_out           
);      

/* Interfaces */
axi4_lite #(.A_WIDTH(32),.D_WIDTH(32)) pulse_gen_axi ();    // AXI Register block

/* REG/WIRE declarations */
wire axi_ref_clk, axi_rst_n;

/* Continuous Assignments */

/* Zynq Top Level - Zynq PS + AXI/AMM Address Decode */                                                
zynq_top_wrapper zynq_ps_axi_decode(
    // AXI-Lite Interface
    .axi_ref_clk                  ( axi_ref_clk                 ),
    .axi_rst_n                    ( axi_rst_n                   ),
    .m_axi_reg_araddr             ( pulse_gen_axi.araddr        ),
    .m_axi_reg_arprot             ( pulse_gen_axi.arprot        ),
    .m_axi_reg_arready            ( pulse_gen_axi.arready       ),
    .m_axi_reg_arvalid            ( pulse_gen_axi.arvalid       ),
    .m_axi_reg_awaddr             ( pulse_gen_axi.awaddr        ),
    .m_axi_reg_awprot             ( pulse_gen_axi.awprot        ),
    .m_axi_reg_awready            ( pulse_gen_axi.awready       ),
    .m_axi_reg_awvalid            ( pulse_gen_axi.awvalid       ),
    .m_axi_reg_bready             ( pulse_gen_axi.bready        ),
    .m_axi_reg_bresp              ( pulse_gen_axi.bresp         ),
    .m_axi_reg_bvalid             ( pulse_gen_axi.bvalid        ),
    .m_axi_reg_rdata              ( pulse_gen_axi.rdata         ),
    .m_axi_reg_rready             ( pulse_gen_axi.rready        ),
    .m_axi_reg_rresp              ( pulse_gen_axi.rresp         ),
    .m_axi_reg_rvalid             ( pulse_gen_axi.rvalid        ),
    .m_axi_reg_wdata              ( pulse_gen_axi.wdata         ),
    .m_axi_reg_wready             ( pulse_gen_axi.wready        ),
    .m_axi_reg_wstrb              ( pulse_gen_axi.wstrb         ),
    .m_axi_reg_wvalid             ( pulse_gen_axi.wvalid        ),    
    // PS Hard Interfaces
    .zynq_ddr_addr                ( zynq_ddr_addr               ),
    .zynq_ddr_ba                  ( zynq_ddr_ba                 ),
    .zynq_ddr_cas_n               ( zynq_ddr_cas_n              ),
    .zynq_ddr_ck_n                ( zynq_ddr_ck_n               ),
    .zynq_ddr_ck_p                ( zynq_ddr_ck_p               ),
    .zynq_ddr_cke                 ( zynq_ddr_cke                ),
    .zynq_ddr_cs_n                ( zynq_ddr_cs_n               ),
    .zynq_ddr_dm                  ( zynq_ddr_dm                 ),
    .zynq_ddr_dq                  ( zynq_ddr_dq                 ),
    .zynq_ddr_dqs_n               ( zynq_ddr_dqs_n              ),
    .zynq_ddr_dqs_p               ( zynq_ddr_dqs_p              ),
    .zynq_ddr_odt                 ( zynq_ddr_odt                ),
    .zynq_ddr_ras_n               ( zynq_ddr_ras_n              ),
    .zynq_ddr_reset_n             ( zynq_ddr_reset_n            ),
    .zynq_ddr_we_n                ( zynq_ddr_we_n               ),
    .zynq_fixed_io_ddr_vrn        ( zynq_fixed_io_ddr_vrn       ),
    .zynq_fixed_io_ddr_vrp        ( zynq_fixed_io_ddr_vrp       ),
    .zynq_fixed_io_mio            ( zynq_fixed_io_mio           ),
    .zynq_fixed_io_ps_clk         ( zynq_fixed_io_ps_clk        ),
    .zynq_fixed_io_ps_porb        ( zynq_fixed_io_ps_porb       ),
    .zynq_fixed_io_ps_srstb       ( zynq_fixed_io_ps_srstb      )
);

/* Pulse Generator Module */
pulse_gen pulse_gen_vcc (
   .clk        ( axi_ref_clk            ), //
   .rst_n      ( axi_rst_n              ), //
   .reg_axi    ( pulse_gen_axi.Slave    ), // Bxx - Register interface
   .ext_trig   ( 1'b0                   ), // I1  - External Pulse Generator Trigger 
   .pulse_out  ( pulse_gen_out          )  // O1  - Output of the pulse generator
);

endmodule
