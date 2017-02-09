/*

   Description
   ===========
      Register            Offset    Default
      ----------------    ------    ----------
      version             0x0000    0x00050005
      ctrl                0x0001    0x00000000
      pulse               0x0002    0x00000108
      mult                0x0003    0x00000000
      status              0x0004    0x00000000
      debug               0x000F    0x12345678

*/

module pulse_gen_regs (
   input  wire            clk,                                  // I1   - System clock
   input  wire            reset_n,                              // I1   - Active-low system clock synchronized reset
   input  wire            read,                                 // I1   - 
   input  wire            write,                                // I1   - 
   input  wire    [  3:0] address,                              // I4   - 
   input  wire    [  3:0] byteenable,                           // I4   - 
   input  wire    [ 31:0] writedata,                            // I32  - 
   output reg     [ 31:0] readdata,                             // O32  - 
   output reg             readdatavalid,                        // O1   - 
   output wire            waitrequest,                          // O1   - 
   input  wire    [ 15:0] version_major,                        // I16  - Version Major
   input  wire    [ 15:0] version_minor,                        // I16  - Version Minor
   output wire            ctrl_enable,                          // O1   - Enable Pulse Gen Output - One-Shot or Continuous
   output reg             ctrl_enable_pls,                      // O1   - Enable Pulse Gen Output - One-Shot or Continuous
   output wire            ctrl_rst,                             // O1   - Pulse Gen PLL Reset - Active high
   output wire    [  7:0] pulse_pos_width,                      // O8   - Pulse Positive Width
   output wire    [  7:0] pulse_neg_width,                      // O8   - Pulse Negative Width
   output wire    [  7:0] pulse_delay_width,                    // O8   - Pulse Initial Delay
   output wire    [  7:0] pulse_repeat,                         // O8   - Number of Pulse interations
   output wire    [  3:0] mult_init,                            // O4   - Multiply factor for Pulse Initial Delay
   output wire    [  3:0] mult_pos,                             // O4   - Multiply factor for Pulse Positive PW
   output wire    [  3:0] mult_neg,                             // O4   - Multiply factor for Pulse Negative PW
   input  wire            status_pll_lock,                      // I1   - PLL Lock status
   input  wire    [  3:0] status_pll_unlock_cnt,                // I4   - PLL unlock counter
   output wire    [ 31:0] debug_test_reg                        // O32  - 
);

/* REG/WIRE declarations */
wire [ 31:0] version;                              // Version
wire [ 31:0] status;                               // Pulse Generator Status

reg      [ 31:0] ctrl_reg;                             // 
reg      [ 31:0] pulse_reg;                            // 
reg      [ 31:0] mult_reg;                             // 
reg      [ 31:0] debug_reg;                            // 

/* Continuous Assignments */
assign ctrl_enable       = ctrl_reg[0];
assign ctrl_rst          = ctrl_reg[4];
assign pulse_pos_width   = pulse_reg[7:0];
assign pulse_neg_width   = pulse_reg[15:8];
assign pulse_delay_width = pulse_reg[23:16];
assign pulse_repeat      = pulse_reg[31:24];
assign mult_init         = mult_reg[3:0];
assign mult_pos          = mult_reg[11:8];
assign mult_neg          = mult_reg[19:16];
assign debug_test_reg    = debug_reg[31:0];
assign waitrequest       = 1'b0;

/* Address Decoding */
always @( posedge clk or negedge reset_n )
begin : Register_Write
   if ( !reset_n )
   begin
      ctrl_reg[31:0]  <= 32'h00000000;
      pulse_reg[31:0] <= 32'h00000108;
      mult_reg[31:0]  <= 32'h00000000;
      debug_reg[31:0] <= 32'h12345678;
   end

   else
   begin
      if ( write )
      begin
         case ( address[3:0] )
            4'd1:
            begin
               ctrl_reg[31:24] <= byteenable[3] ? writedata[31:24] : ctrl_reg[31:24];
               ctrl_reg[23:16] <= byteenable[2] ? writedata[23:16] : ctrl_reg[23:16];
               ctrl_reg[15: 8] <= byteenable[1] ? writedata[15: 8] : ctrl_reg[15: 8];
               ctrl_reg[ 7: 0] <= byteenable[0] ? writedata[ 7: 0] : ctrl_reg[ 7: 0];
            end
            4'd2:
            begin
               pulse_reg[31:24] <= byteenable[3] ? writedata[31:24] : pulse_reg[31:24];
               pulse_reg[23:16] <= byteenable[2] ? writedata[23:16] : pulse_reg[23:16];
               pulse_reg[15: 8] <= byteenable[1] ? writedata[15: 8] : pulse_reg[15: 8];
               pulse_reg[ 7: 0] <= byteenable[0] ? writedata[ 7: 0] : pulse_reg[ 7: 0];
            end
            4'd3:
            begin
               mult_reg[31:24] <= byteenable[3] ? writedata[31:24] : mult_reg[31:24];
               mult_reg[23:16] <= byteenable[2] ? writedata[23:16] : mult_reg[23:16];
               mult_reg[15: 8] <= byteenable[1] ? writedata[15: 8] : mult_reg[15: 8];
               mult_reg[ 7: 0] <= byteenable[0] ? writedata[ 7: 0] : mult_reg[ 7: 0];
            end
            4'd15:
            begin
               debug_reg[31:24] <= byteenable[3] ? writedata[31:24] : debug_reg[31:24];
               debug_reg[23:16] <= byteenable[2] ? writedata[23:16] : debug_reg[23:16];
               debug_reg[15: 8] <= byteenable[1] ? writedata[15: 8] : debug_reg[15: 8];
               debug_reg[ 7: 0] <= byteenable[0] ? writedata[ 7: 0] : debug_reg[ 7: 0];
            end
            default:
            begin
            end
         endcase

      end

   end

end

always @( posedge clk or negedge reset_n )
begin : Register_Read
   if ( !reset_n )
   begin
      readdata[31:0] <= 32'h01beef01;
   end

   else
   begin
      if ( read )
      begin
         case ( address[3:0] )
            4'd0:
            begin
               readdata <= {version_major[15:0], version_minor[15:0]};
            end
            4'd1:
            begin
               readdata <= {27'd0, ctrl_rst, 3'd0, ctrl_enable};
            end
            4'd2:
            begin
               readdata <= {pulse_repeat[7:0], pulse_delay_width[7:0], pulse_neg_width[7:0], pulse_pos_width[7:0]};
            end
            4'd3:
            begin
               readdata <= {12'd0, mult_neg[3:0], 4'd0, mult_pos[3:0], 4'd0, mult_init[3:0]};
            end
            4'd4:
            begin
               readdata <= {24'd0, status_pll_unlock_cnt[3:0], 3'd0, status_pll_lock};
            end
            4'd15:
            begin
               readdata <= {debug_test_reg[31:0]};
            end
            default:
            begin
               readdata <= 32'h01cafe01;
            end
         endcase

      end

   end

end

always @( posedge clk or negedge reset_n )
begin : ReadDataValid_Generator
   if ( !reset_n )
   begin
      readdatavalid <= 1'b0;
   end

   else
   begin
      readdatavalid <= 1'b0;
      if ( read )
      begin
         readdatavalid <= 1'b1;
      end

   end

end

always @( posedge clk or negedge reset_n )
begin : Pulse_Generator
   if ( !reset_n )
   begin
      ctrl_enable_pls <= 1'b0;
   end

   else
   begin
      ctrl_enable_pls <= 1'b0;
      if ( write )
      begin
         case ( address[3:0] )
            4'd1:
            begin
               ctrl_enable_pls <= byteenable[0] & writedata[0];
            end
            default:
            begin
            end
         endcase

      end

   end

end

endmodule

