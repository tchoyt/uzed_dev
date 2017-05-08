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
    inout           zynq_fixed_io_ps_srstb           
);      

/* Interfaces */

/* REG/WIRE declarations */

/* Continuous Assignments */

/* Zynq Top Level - Zynq PS + AXI/AMM Address Decode */                                                
zynq_top_wrapper zynq_ps_axi_decode(    
    // PS Hard Interfaces
    .DDR_addr                ( zynq_ddr_addr               ),
    .DDR_ba                  ( zynq_ddr_ba                 ),
    .DDR_cas_n               ( zynq_ddr_cas_n              ),
    .DDR_ck_n                ( zynq_ddr_ck_n               ),
    .DDR_ck_p                ( zynq_ddr_ck_p               ),
    .DDR_cke                 ( zynq_ddr_cke                ),
    .DDR_cs_n                ( zynq_ddr_cs_n               ),
    .DDR_dm                  ( zynq_ddr_dm                 ),
    .DDR_dq                  ( zynq_ddr_dq                 ),
    .DDR_dqs_n               ( zynq_ddr_dqs_n              ),
    .DDR_dqs_p               ( zynq_ddr_dqs_p              ),
    .DDR_odt                 ( zynq_ddr_odt                ),
    .DDR_ras_n               ( zynq_ddr_ras_n              ),
    .DDR_reset_n             ( zynq_ddr_reset_n            ),
    .DDR_we_n                ( zynq_ddr_we_n               ),
    .FIXED_IO_ddr_vrn        ( zynq_fixed_io_ddr_vrn       ),
    .FIXED_IO_ddr_vrp        ( zynq_fixed_io_ddr_vrp       ),
    .FIXED_IO_mio            ( zynq_fixed_io_mio           ),
    .FIXED_IO_ps_clk         ( zynq_fixed_io_ps_clk        ),
    .FIXED_IO_ps_porb        ( zynq_fixed_io_ps_porb       ),
    .FIXED_IO_ps_srstb       ( zynq_fixed_io_ps_srstb      )
);

endmodule
