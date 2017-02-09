/* Generic Pulse Generator Core */
module pulse_gen_core #(   
   parameter CNTR_WIDTH  = 8,
   parameter MULT_WIDTH  = 4
) (
   input  wire                   clk,              // I1  - System Clock
   input  wire                   rst_n,            // I1  - Active-low system clock synchronized reset
   input  wire                   en,               // I1  - Enable Pulse Gen Output - One-Shot or Continuous
   input  wire                   en_pls,
   input  wire                   ext_trig,         // I1  - External Pulse Generator Trigger
   input  wire [CNTR_WIDTH-1:0]  pos_width_reg,    // Ix  - Pulse Positive Width
   input  wire [MULT_WIDTH-1:0]  pos_mult_reg,     // Ix  - Pulse Positive width multiply factor
   input  wire [CNTR_WIDTH-1:0]  neg_width_reg,    // Ix  - Pulse Negative Width
   input  wire [MULT_WIDTH-1:0]  neg_mult_reg,     // Ix  - Pulse Negative width multiply factor
   input  wire [CNTR_WIDTH-1:0]  init_delay_reg,   // Ix  - Initial Delay
   input  wire [MULT_WIDTH-1:0]  init_mult_reg,    // Ix  - Initial Delay multiply factor
   input  wire [CNTR_WIDTH-1:0]  repeat_reg,       // Ix  - Number of Pulse interations
   output reg                    pls_out           // O1  - Pulse Generator Output
);      

/* Constants */

                   
/* REG/WIRE declarations */
reg  [CNTR_WIDTH-1:0]  pos_pw_cnt, neg_pw_cnt, init_delay_cnt;
reg  [MULT_WIDTH-1:0]  init_mult_cnt, pos_mult_cnt, neg_mult_cnt;
reg         init_delay_ce, pos_pw_ce, neg_pw_ce;
reg         ext_trig_re;
reg  [3:0]  ext_trig_d;

// FSM Struct
typedef enum reg [2:0] {IDLE              = 3'h0,
                        INIT_CNT_WAIT     = 3'h1,
                        INIT_WAIT         = 3'h2,
                        POS_PW_CNT_WAIT   = 3'h3,
                        POS_PW_CNT        = 3'h4,
                        NEG_PW_CNT_WAIT   = 3'h5,
                        NEG_PW_CNT        = 3'h6}
                        fsm_state;
typedef struct {
   fsm_state            state;            // FSM states
   reg                  pls_gen_output;   // Pulse Generator output
   reg [CNTR_WIDTH-1:0] pos_width;        // Latched + width from register bank
   reg [MULT_WIDTH-1:0] pos_mult;         // Latched + width multiplier from register bank
   reg [CNTR_WIDTH-1:0] neg_width;        // Latched - width from register bank
   reg [MULT_WIDTH-1:0] neg_mult;         // Latched - width multiplier from register bank
   reg [CNTR_WIDTH-1:0] init_delay;       // Latched initial delay from register bank
   reg [MULT_WIDTH-1:0] init_mult;        // Latched initial delay multiplier from register bank
   reg [CNTR_WIDTH-1:0] pulse_repeat;     // Latched CW repetition count from register bank
   reg                  pos_pw_cntr_en;   // Enable the pulse width counters
   reg                  neg_pw_cntr_en;
   reg                  init_cntr_en;     // Enable the initial delay counter
} fsm_struct;

fsm_struct     D, Q; // FSM registers

/* Continuous Assignments */
assign pls_out = Q.pls_gen_output;  

/* Synchronize then rising edge detect on ext_trig */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      ext_trig_d  <= 4'd0;
      ext_trig_re <= 1'b0;
   end else begin
      ext_trig_d[0] <= ext_trig;
      ext_trig_d[1] <= ext_trig_d[0];
      ext_trig_d[2] <= ext_trig_d[1];
      ext_trig_d[3] <= ext_trig_d[2];
      if ( ext_trig_d[2] == 1'b1 && ext_trig_d[3] == 1'b0 ) begin
         ext_trig_re <= 1'b1;
      end else begin
         ext_trig_re <= 1'b0;
      end
   end
end

/* + width counter */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      pos_pw_cnt <= 'd0;
   end else begin
      if ( Q.pos_pw_cntr_en ) begin
         if ( pos_pw_ce ) begin
            if ( pos_pw_cnt == ( Q.pos_width - 1 ) ) begin
               pos_pw_cnt <= 'd0;
            end else begin
               pos_pw_cnt <= pos_pw_cnt + 1'd1;
            end
         end
      end else begin
         pos_pw_cnt <= 'd0;
      end
   end
end

/* + width clock enable generation 
   Slow + width counter using pos_mult_reg */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      pos_mult_cnt <= 'd0;
      pos_pw_ce <= 1'b1;
   end else begin
      if ( Q.init_cntr_en ) begin
         if ( pos_mult_cnt == Q.pos_mult ) begin
            pos_mult_cnt <= 'd0;
            pos_pw_ce <= 1'b1;
         end else begin
            pos_mult_cnt <= pos_mult_cnt + 1'd1;
            pos_pw_ce <= 1'b0;
         end
      end else begin
         pos_mult_cnt <= 'd0;
         pos_pw_ce <= 1'b1;
      end
   end
end 

/* - width counter */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      neg_pw_cnt <= 'd0;
   end else begin
      if ( Q.neg_pw_cntr_en ) begin
         if ( neg_pw_ce ) begin
            if ( neg_pw_cnt == ( Q.neg_width - 1 ) ) begin
               neg_pw_cnt <= 'd0;
            end else begin
               neg_pw_cnt <= neg_pw_cnt + 1'd1;
            end
         end
      end else begin
         neg_pw_cnt <= 'd0;
      end
   end
end  

/* - width clock enable generation 
   Slow - width counter using neg_mult_reg */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      neg_mult_cnt <= 'd0;
      neg_pw_ce <= 1'b1;
   end else begin
      if ( Q.init_cntr_en ) begin
         if ( neg_mult_cnt == Q.neg_mult ) begin
            neg_mult_cnt <= 'd0;
            neg_pw_ce <= 1'b1;
         end else begin
            neg_mult_cnt <= neg_mult_cnt + 1'd1;
            neg_pw_ce <= 1'b0;
         end
      end else begin
         neg_mult_cnt <= 'd0;
         neg_pw_ce <= 1'b1;
      end
   end
end          

/* Initial Delay counter */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      init_delay_cnt <= 'd0;
   end else begin
      if ( Q.init_cntr_en ) begin
         if ( init_delay_ce ) begin
            if ( init_delay_cnt == ( Q.init_delay - 1 ) ) begin
               init_delay_cnt <= 'd0;
            end else begin
               init_delay_cnt <= init_delay_cnt + 1'd1;
            end
         end
      end else begin
         init_delay_cnt <= 'd0;
      end
   end
end   

/* Init Delay clock enable generation 
   Slow Initial delay counter using init_mult_reg */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      init_mult_cnt <= 'd0;
      init_delay_ce <= 1'b1;
   end else begin
      if ( Q.init_cntr_en ) begin
         if ( init_mult_cnt == Q.init_mult ) begin
            init_mult_cnt <= 'd0;
            init_delay_ce <= 1'b1;
         end else begin
            init_mult_cnt <= init_mult_cnt + 1'd1;
            init_delay_ce <= 1'b0;
         end
      end else begin
         init_mult_cnt <= 'd0;
         init_delay_ce <= 1'b1;
      end
   end
end                                  

/* Pulse Generator FSM */
always @ ( posedge clk or negedge rst_n ) begin
   if ( ~rst_n ) begin
      Q  <= '{state :IDLE, default :'0};
   end else begin
      if ( ~en ) begin
         Q  <= '{state :IDLE, default :'0};
      end else begin
         Q  <= D;
      end
   end
end

always @ ( * ) begin
   // Defaults
   D = Q;

   // State Transitions
   case ( Q.state )
      IDLE :   
      begin
         // Wait for enable or external trigger
         if ( en_pls || ext_trig_re ) begin
            // Latch values for counters
            D.init_delay = init_delay_reg;
            D.init_mult = init_mult_reg;
            D.pos_width = pos_width_reg;
            D.pos_mult = pos_mult_reg;
            D.neg_width = neg_width_reg;
            D.neg_mult = neg_mult_reg;
            D.pulse_repeat = repeat_reg;  
            // If inital delay = 0, state = POS_PW_CNT_WAIT - save 2 clocks
            if ( init_delay_reg ) begin
               D.state = INIT_CNT_WAIT;
               D.init_cntr_en = 1'b1;
            end else begin
               D.state = POS_PW_CNT_WAIT;
               D.pos_pw_cntr_en = 1'b1;               
            end
         end
      end
      // Wait 1 clk for counter to start
      INIT_CNT_WAIT:  
      begin
         D.state = INIT_WAIT;
      end  
      // Wait for the initial delay
      INIT_WAIT :   
      begin
         if ( init_delay_cnt ) begin
            D.state = INIT_WAIT;
         end else begin
            D.state = POS_PW_CNT_WAIT;
            D.pos_pw_cntr_en = 1'b1;
            D.init_cntr_en = 1'b0;
         end
      end
      // Wait 1 clk for counter to start, drive pulse output now
      POS_PW_CNT_WAIT:  
      begin
         D.state = POS_PW_CNT;
         D.pls_gen_output = 1'b1;
      end             
      // Drive pulse for + width
      POS_PW_CNT:    
      begin
         if ( pos_pw_cnt ) begin
            D.state = POS_PW_CNT;
         end else begin
            D.pls_gen_output = 1'b0;
            D.pos_pw_cntr_en = 1'b0;
            D.neg_pw_cntr_en = 1'b1;
            D.state = NEG_PW_CNT_WAIT;
         end
      end 
      // Wait 1 clk for counter to start
      NEG_PW_CNT_WAIT:  
      begin
         D.state = NEG_PW_CNT;
      end             
      // Keep pulse low for - width. Repeat pulse or go to IDLE
      NEG_PW_CNT:    
      begin
         if ( neg_pw_cnt ) begin
            D.state = NEG_PW_CNT;
         end else begin
            D.neg_pw_cntr_en = 1'b0;
            if ( Q.pulse_repeat ) begin
               D.pos_pw_cntr_en = 1'b1;
               D.pulse_repeat = Q.pulse_repeat - 1'd1;
               D.state = POS_PW_CNT_WAIT;
            end else begin
               D.state = IDLE;
            end
         end
      end 

      default :
      begin
         D.state  = IDLE;
         D.pls_gen_output = 1'b0;
      end

      endcase
   end

endmodule
