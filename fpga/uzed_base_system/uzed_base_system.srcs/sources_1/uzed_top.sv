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
avalon_mm #(.A_WIDTH(32),.D_WIDTH(32)) pulse_gen_av ();     // Pulse Generator Avalon MM
axi_lite  #(.A_WIDTH(32),.D_WIDTH(32)) reg_test_axi ();     // AXI Register block

/* REG/WIRE declarations */
wire axi_ref_clk, axi_rst_n;

/* Continuous Assignments */

/* Zynq Top Level - Zynq PS + AXI/AMM Address Decode */                                                
zynq_top_wrapper zynq_ps_axi_decode(
    // AXI-Avalon Interface
    .m_avl_reg_address            ( pulse_gen_av.address        ),
    .m_avl_reg_byteenable         ( pulse_gen_av.byteenable     ),
    .m_avl_reg_read               ( pulse_gen_av.read           ),
    .m_avl_reg_readdata           ( pulse_gen_av.readdata       ),
    .m_avl_reg_readdatavalid      ( pulse_gen_av.readdatavalid  ),
    .m_avl_reg_waitrequest        ( pulse_gen_av.waitrequest    ),
    .m_avl_reg_write              ( pulse_gen_av.write          ),
    .m_avl_reg_writedata          ( pulse_gen_av.writedata      ),
    // AXI-Lite Interface
    .axi_ref_clk                  ( axi_ref_clk                 ),
    .axi_rst_n                    ( axi_rst_n                   ),
    .m_axi_reg_araddr             ( reg_test_axi.araddr         ),
    .m_axi_reg_arprot             ( reg_test_axi.arprot         ),
    .m_axi_reg_arready            ( reg_test_axi.arready        ),
    .m_axi_reg_arvalid            ( reg_test_axi.arvalid        ),
    .m_axi_reg_awaddr             ( reg_test_axi.awaddr         ),
    .m_axi_reg_awprot             ( reg_test_axi.awprot         ),
    .m_axi_reg_awready            ( reg_test_axi.awready        ),
    .m_axi_reg_awvalid            ( reg_test_axi.awvalid        ),
    .m_axi_reg_bready             ( reg_test_axi.bready         ),
    .m_axi_reg_bresp              ( reg_test_axi.bresp          ),
    .m_axi_reg_bvalid             ( reg_test_axi.bvalid         ),
    .m_axi_reg_rdata              ( reg_test_axi.rvalid         ),
    .m_axi_reg_rready             ( reg_test_axi.rready         ),
    .m_axi_reg_rresp              ( reg_test_axi.rresp          ),
    .m_axi_reg_rvalid             ( reg_test_axi.rvalid         ),
    .m_axi_reg_wdata              ( reg_test_axi.wdata          ),
    .m_axi_reg_wready             ( reg_test_axi.wready         ),
    .m_axi_reg_wstrb              ( reg_test_axi.wstrb          ),
    .m_axi_reg_wvalid             ( reg_test_axi.wvalid         ),    
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
   .reg_av     ( pulse_gen_av.Slave     ), // Bxx - Register/Control Avalon bus (A=6, D=32,  BC=1)  
   .ext_trig   ( 1'b0                   ), // I1  - External Pulse Generator Trigger 
   .pulse_out  ( pulse_gen_out          )  // O1  - Output of the pulse generator
);

endmodule
