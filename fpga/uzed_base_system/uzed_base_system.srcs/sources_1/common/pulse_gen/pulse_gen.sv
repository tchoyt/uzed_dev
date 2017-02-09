/* Generic Pulse Generator */
module pulse_gen (
   input  wire       clk,        // I1  - System Clock
   input  wire       rst_n,      // I1  - Active-low system clock synchronized reset
   avalon_mm.Slave   reg_av,     // Register/Control Avalon bus (A=6, D=32,  BC=1)
   input  wire       ext_trig,   // I1  - External Pulse Generator Trigger
   output wire       pulse_out   
);      

/* Constants */
localparam CNTR_WIDTH = 8; // Pulse Generator counter width
localparam MULT_WIDTH = 4; // Pulse Generator multiplier width
                   
/* REG/WIRE declarations */
wire        pulse_gen_en, pulse_gen_en_pls, pulse_gen_clk, pulse_gen_rst_n, pulse_gen_reg_rst, pll_lock;
wire        pulse_gen_en_pls_sync, pulse_gen_en_sync;
reg  [3:0]  pll_unlock_cnt, pll_lock_reg;
wire [CNTR_WIDTH-1:0] pulse_gen_pos, pulse_gen_neg, pulse_gen_delay, pulse_gen_repeat_count;
wire [MULT_WIDTH-1:0] pulse_gen_delay_mult, pulse_gen_pos_mult, pulse_gen_neg_mult;

/* Continuous Assignments */

/* Pulse Generator Register Block */                                                
pulse_gen_regs pulse_gen_registers (
   .clk                    ( clk                      ), // I1  - System clock
   .reset_n                ( rst_n                    ), // I1  - Active-low system clock synchronized reset
   .read                   ( reg_av.read              ), // I1  -
   .write                  ( reg_av.write             ), // I1  -
   .address                ( reg_av.address[5:2]      ), // I4  -
   .byteenable             ( reg_av.byteenable        ), // I4  -
   .writedata              ( reg_av.writedata         ), // I32 -
   .readdata               ( reg_av.readdata          ), // O32 -
   .readdatavalid          ( reg_av.readdatavalid     ), // O1  -
   .waitrequest            ( reg_av.waitrequest       ), // O1  - 
   .version_major          ( 16'h1234                 ), // I16 - 
   .version_minor          ( 16'h5678                 ), // I16 -
   .ctrl_enable            ( pulse_gen_en             ), // O1  - Enable Pulse Gen Output - One-Shot or Continuous
   .ctrl_enable_pls        ( pulse_gen_en_pls         ), // O1  - 
   .ctrl_rst               ( pulse_gen_reg_rst        ), // O1  - Pulse Gen PLL Reset - Active high
   .pulse_pos_width        ( pulse_gen_pos            ), // Ox  - Pulse Positive Width
   .pulse_neg_width        ( pulse_gen_neg            ), // Ox  - Pulse Negative Width
   .pulse_delay_width      ( pulse_gen_delay          ), // Ox  - Pulse Initial Delay
   .pulse_repeat           ( pulse_gen_repeat_count   ), // Ox  - Number of Pulse interations
   .mult_init              ( pulse_gen_delay_mult     ), // Ox  - Multiply factor for Pulse Initial Delay
   .mult_pos               ( pulse_gen_pos_mult       ), // Ox  - Multiply factor for Pulse Positive PW
   .mult_neg               ( pulse_gen_neg_mult       ), // Ox  - Multiply factor for Pulse Negative PW
   .status_pll_lock        ( pll_lock                 ), // I1  - PLL lock status
   .status_pll_unlock_cnt  ( pll_unlock_cnt           ), // I4  - PLL unlock counter
   .debug_test_reg         (                          )  // O32 - 
);

/* Pulse Generator PLL */
pulse_gen_pll pulse_gen_pll_inst (
   .clk_in1    ( clk                ), // Reference clock
   .reset      ( pulse_gen_reg_rst  ), // Reset
   .locked     ( pll_lock           ), // PLL locked
   .clk_out1   ( pulse_gen_clk      )  // Clock out
);

/* Synchronize rst_n to pulse_gen_clk */
rst_sync pulse_gen_clk_reset_sync (
   .rst_n         ( pulse_gen_rst_n             ),
   .clk           ( pulse_gen_clk               ),
   .async_rst_n   ( rst_n & ~pulse_gen_reg_rst  )
);

/* Synchronize Enable pulse for FSM */
reg_delay #(.D_WIDTH( 1 ), .DLY_LEN ( 2 )) pulse_gen_en_pls_synch (
   .clk     ( pulse_gen_clk         ),
   .rst_n   ( pulse_gen_rst_n       ),
   .dataIn  ( pulse_gen_en_pls      ),
   .dataOut ( pulse_gen_en_pls_sync ));

/* Synchronize Enable for FSM */
reg_delay #(.D_WIDTH( 1 ), .DLY_LEN ( 2 )) pulse_gen_en_synch (
   .clk     ( pulse_gen_clk      ),
   .rst_n   ( pulse_gen_rst_n    ),
   .dataIn  ( pulse_gen_en       ),
   .dataOut ( pulse_gen_en_sync  )
);

/* Synchronize and falling edge detect counter for pll unlock events */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      pll_unlock_cnt <= 4'd0;
      pll_lock_reg   <= 4'h0;
   end else begin
      pll_lock_reg[0] <= pll_lock;
      pll_lock_reg[1] <= pll_lock_reg[0];
      pll_lock_reg[2] <= pll_lock_reg[1];
      pll_lock_reg[3] <= pll_lock_reg[2];
      if ( pll_lock_reg[2] == 1'b0 && pll_lock_reg[3] == 1'b1 ) begin
         pll_unlock_cnt <= pll_unlock_cnt + 1'd1;
      end
   end
end

/* Pulse Generator Core */
pulse_gen_core #( .CNTR_WIDTH ( CNTR_WIDTH ), .MULT_WIDTH ( MULT_WIDTH ) ) pulse_gen_core_inst (
   .clk              ( pulse_gen_clk            ), // I1  - System clock
   .rst_n            ( pulse_gen_rst_n          ), // I1  - Active-low system clock synchronized reset
   .en               ( pulse_gen_en_sync        ), // I1  - Enable Pulse Gen Output - One-Shot or Continuous
   .en_pls           ( pulse_gen_en_pls_sync    ), // I1  - 
   .ext_trig         ( ext_trig                 ), // I1  - External Pulse Generator Trigger
   .pos_width_reg    ( pulse_gen_pos            ), // Ix  - Pulse Positive Width
   .pos_mult_reg     ( pulse_gen_pos_mult       ), // Ix  - Pulse Positive width multiply factor
   .neg_width_reg    ( pulse_gen_neg            ), // Ix  - Pulse Negative Width
   .neg_mult_reg     ( pulse_gen_neg_mult       ), // Ix  - Pulse Negative width multiply factor
   .init_delay_reg   ( pulse_gen_delay          ), // Ix  - Initial Delay
   .init_mult_reg    ( pulse_gen_delay_mult     ), // Ix  - Initial Delay multiply factor
   .repeat_reg       ( pulse_gen_repeat_count   ), // Ix  - Number of Pulse interations
   .pls_out          ( pulse_out                )  // O1  - Pulse Generator Output
   );

endmodule
