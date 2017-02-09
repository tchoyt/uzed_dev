/* Generic Register delay */

module reg_delay # ( parameter D_WIDTH = 1, DLY_LEN  = 1 )
(                           
   input  wire              clk,
   input  wire              rst_n,
   input  wire [D_WIDTH-1:0] dataIn,
   output wire [D_WIDTH-1:0] dataOut
);

/* REG/WIRE declarations */
integer i;
reg [D_WIDTH-1:0] delay_reg[DLY_LEN-1:0];

/* Continuous Assignments */
assign dataOut = delay_reg[DLY_LEN-1];

/* Cascade registers to specified delay length */
always @( posedge clk or negedge rst_n ) begin
  if ( !rst_n ) begin
    for ( i = 0; i < DLY_LEN; i = i+1 ) begin
      delay_reg[i] <= {{D_WIDTH{1'b0}}};
    end 
  end else begin
    for ( i = 0; i < DLY_LEN; i = i+1 ) begin
      if ( i == 0 ) begin
        delay_reg[i] <= dataIn;
      end else begin
        delay_reg[i] <= delay_reg[i-1];
      end
    end
  end
end

endmodule
