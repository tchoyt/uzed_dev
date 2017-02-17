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

module pulse_gen_axiregs #(   
   parameter REG_WIDTH     = 32,
   parameter W_ADDR_WIDTH  = 32,
   parameter R_ADDR_WIDTH  = 32,
   parameter REG_ADDR_MSB  = 11,
   parameter REG_ADDR_LSB  = 2
) (
   input  logic                     clk,                    // I1   - System clock
   input  logic                     rst_n,                  // I1   - Active-low system clock synchronized reset            
   input  logic [R_ADDR_WIDTH-1:0]  reg_axi_araddr,         // Read Address
   input  logic [ 2:0]              reg_axi_arprot,         // Normal, secure data attributes
   output logic                     reg_axi_arready,        // Read address channel ready
   input  logic                     reg_axi_arvalid,        // Read address valid              
   input  logic [W_ADDR_WIDTH-1:0]  reg_axi_awaddr,         // Write Address
   input  logic [ 2:0]              reg_axi_awprot,         // Normal, secure data attributes
   output logic                     reg_axi_awready,        // Write address channel ready
   input  logic                     reg_axi_awvalid,        // Write address valid
   input  logic                     reg_axi_bready,         // Write response channel ready
   output logic [ 1:0]              reg_axi_bresp,          // Write response
   output logic                     reg_axi_bvalid,         // Write response valid
   output logic [REG_WIDTH-1:0]     reg_axi_rdata,          // Read data
   input  logic                     reg_axi_rready,         // Read data channel ready
   output logic [ 1:0]              reg_axi_rresp,          // Read response
   output logic                     reg_axi_rvalid,         // Read data valid
   input  logic [REG_WIDTH-1:0]     reg_axi_wdata,          // Write data
   output logic                     reg_axi_wready,         // Write data channel ready
   input  logic [ 3:0]              reg_axi_wstrb,          // Write strobe
   input  logic                     reg_axi_wvalid,         // Write data valid         
   input  logic [15:0]              version_major,          // I16  - Version Major
   input  logic [15:0]              version_minor,          // I16  - Version Minor
   output logic                     ctrl_enable,            // O1   - Enable Pulse Gen Output - One-Shot or Continuous
   output logic                     ctrl_enable_pls,        // O1   - Enable Pulse Gen Output - One-Shot or Continuous
   output logic                     ctrl_rst,               // O1   - Pulse Gen PLL Reset - Active high
   output logic [ 7:0]              pulse_pos_width,        // O8   - Pulse Positive Width
   output logic [ 7:0]              pulse_neg_width,        // O8   - Pulse Negative Width
   output logic [ 7:0]              pulse_delay_width,      // O8   - Pulse Initial Delay
   output logic [ 7:0]              pulse_repeat,           // O8   - Number of Pulse interations
   output logic [ 3:0]              mult_init,              // O4   - Multiply factor for Pulse Initial Delay
   output logic [ 3:0]              mult_pos,               // O4   - Multiply factor for Pulse Positive PW
   output logic [ 3:0]              mult_neg,               // O4   - Multiply factor for Pulse Negative PW
   input  logic                     status_pll_lock,        // I1   - PLL Lock status
   input  logic [ 3:0]              status_pll_unlock_cnt,  // I4   - PLL unlock counter
   output logic [REG_WIDTH-1:0]     debug_test_reg          
);      

/* Constants */

/* REG/WIRE declarations */ 
typedef enum reg [2:0] {IDLE           = 3'h0,
                        WR_ADDR_CH     = 3'h1,
                        WR_DATA_CH1    = 3'h2,
                        WR_DATA_CH2    = 3'h3,
                        RD_ADDR_CH     = 3'h4,
                        RD_DATA_CH     = 3'h5                        
                        } fsm_state;
typedef struct {
   fsm_state           state; 
   // AXI
   reg [W_ADDR_WIDTH-1:0 ] axi_awaddr;
   reg [R_ADDR_WIDTH-1:0 ] axi_araddr;
   reg [REG_WIDTH-1:0]     axi_rdata;
   reg axi_awready;
   reg axi_wready;
   reg axi_arready;
   reg axi_rvalid;
   reg axi_bvalid;
   // Registers
   reg [REG_WIDTH-1:0] ctrl_reg;       
   reg ctrl_reg_pls; 
   reg [REG_WIDTH-1:0] pulse_reg;       
   reg [REG_WIDTH-1:0] mult_reg;        
   reg [REG_WIDTH-1:0] debug_reg;            
} fsm_struct;

fsm_struct D, Q;

/* Continuous Assignments */
// AXI
assign reg_axi_rdata       = Q.axi_rdata;
assign reg_axi_awready     = Q.axi_awready;
assign reg_axi_wready      = Q.axi_wready;
assign reg_axi_arready     = Q.axi_arready;
assign reg_axi_rvalid      = Q.axi_rvalid;
assign reg_axi_bvalid      = Q.axi_bvalid;
assign reg_axi_bresp       = 'd0;
assign reg_axi_rresp       = 'd0;
// Registers
assign ctrl_enable         = Q.ctrl_reg[0];
assign ctrl_enable_pls     = Q.ctrl_reg_pls;
assign ctrl_rst            = Q.ctrl_reg[4];
assign pulse_pos_width     = Q.pulse_reg[7:0];
assign pulse_neg_width     = Q.pulse_reg[15:8];
assign pulse_delay_width   = Q.pulse_reg[23:16];
assign pulse_repeat        = Q.pulse_reg[31:24];
assign mult_init           = Q.mult_reg[3:0];
assign mult_pos            = Q.mult_reg[11:8];
assign mult_neg            = Q.mult_reg[19:16];
assign debug_test_reg      = Q.debug_reg;

/* AXI R/W FSM */
always @ ( posedge clk or negedge rst_n ) begin
   if ( !rst_n ) begin
      Q  <= '{ state     : IDLE,
               pulse_reg : 32'h00000108,
               debug_reg : 32'h12345678, 
               default   :'d0 };
   end else begin
      Q  <= D;
   end
end

always @ ( * ) begin
   // Defaults
   D = Q;
   // Write
   D.axi_awready = 1'b0;
   D.axi_wready = 1'b0;
   D.axi_bvalid = 1'b0;
   // Read
   D.axi_arready = 1'b0;
   D.axi_rvalid = 1'b0;

   // State Transitions
   case ( Q.state )
      IDLE:   
      begin
         // Write operation
         // indicate the write address channel is ready
         if ( reg_axi_awvalid ) begin
            D.axi_awready = 1'b1;
            D.state = WR_ADDR_CH;
         end
         // Ready operation
         // indicate the read address channel is ready
         if ( reg_axi_arvalid ) begin
            D.axi_arready = 1'b1;
            D.state = RD_ADDR_CH;
         end
      end
      // If write address is valid latch the write address
      WR_ADDR_CH:
      begin
         if ( reg_axi_awvalid ) begin
            D.axi_awaddr = reg_axi_awaddr;
            D.state = WR_DATA_CH1;
         end
      end
      // If write data is valid and write response channel is ready 
      // indicate the write data channel is ready
      WR_DATA_CH1:
      begin
         if ( reg_axi_wvalid & reg_axi_bready ) begin
            D.axi_wready = 1'b1;
            D.state = WR_DATA_CH2;
         end
      end
      // If write data is still valid and write response channel is still ready 
      // write the registers and write response channel, then return to idle
      WR_DATA_CH2:
      begin
         if ( reg_axi_wvalid & reg_axi_bready ) begin
            D.axi_bvalid = 1'b1;
            D.state = IDLE;
            // Write address decoding
            case ( Q.axi_awaddr[REG_ADDR_MSB:REG_ADDR_LSB] )
               'd1:
               begin
                  D.ctrl_reg = reg_axi_wdata;
                  D.ctrl_reg_pls = 1'b1;
               end
               'd2:
               begin
                  D.pulse_reg = reg_axi_wdata;
               end
               'd3:
               begin
                  D.mult_reg = reg_axi_wdata;
               end
               'd15:
               begin
                  D.debug_reg = reg_axi_wdata;
               end
               default:
               begin
               end
            endcase
         end
      end
      // If read address is valid latch the read address
      RD_ADDR_CH:
      begin
         if ( reg_axi_arvalid ) begin
            D.axi_araddr = reg_axi_araddr;
            D.state = RD_DATA_CH;
         end
      end
      // If the read data channel is ready indicated read data is valid, read the registers, then return to idle
      RD_DATA_CH:
      begin
         if ( reg_axi_rready ) begin
            D.axi_rvalid = 1'b1;
            D.state = IDLE;
            // Read address decoding
            case ( Q.axi_araddr[REG_ADDR_MSB:REG_ADDR_LSB] )
               'd0:
               begin
                  D.axi_rdata = {version_major[15:0], version_minor[15:0]};
               end
               'd1:
               begin
                  D.axi_rdata = Q.ctrl_reg;
               end
               'd2:
               begin
                  D.axi_rdata = Q.pulse_reg;
               end
               'd3:
               begin
                  D.axi_rdata = Q.mult_reg;
               end
               'd4:
               begin
                  D.axi_rdata = {24'd0, status_pll_unlock_cnt[3:0], 3'd0, status_pll_lock};
               end
               'd15:
               begin
                  D.axi_rdata = Q.debug_reg;
               end
               default:
               begin
                  D.axi_rdata = 32'hDEADBEEF;
               end
            endcase
         end
      end   
   endcase
end 

/* ILA Attributes */
(* mark_debug = "true" *) logic [R_ADDR_WIDTH-1:0] reg_axi_araddr;
(* mark_debug = "true" *) logic                    reg_axi_arvalid;
(* mark_debug = "true" *) logic [W_ADDR_WIDTH-1:0] reg_axi_awaddr;
(* mark_debug = "true" *) logic                    reg_axi_awvalid;
(* mark_debug = "true" *) logic                    reg_axi_bready;
(* mark_debug = "true" *) logic                    reg_axi_rready; 
(* mark_debug = "true" *) logic [REG_WIDTH-1:0]    reg_axi_wdata;
(* mark_debug = "true" *) logic                    reg_axi_wvalid;
(* mark_debug = "true" *) fsm_struct               Q;

endmodule

