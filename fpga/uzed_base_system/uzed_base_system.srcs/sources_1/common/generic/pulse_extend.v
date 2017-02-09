/* Generic Pulse extender - Same clock domain */

module pulse_extend # ( parameter EXTLEN = 1 )
(                           
   input  wire  clk,
   input  wire  rst_n,
   input  wire  pls_in,
   output wire  pls_out
);

/* REG/WIRE declarations */
integer i;
reg [EXTLEN-1:0]  extend_reg;

/* Continuous Assignments */
assign pls_out = |extend_reg;

/* Cascade registers to specified extend length */
always @( posedge clk or negedge rst_n ) begin
  if ( !rst_n ) begin
      extend_reg <= 'd0;
  end else begin
    for ( i = 0; i < EXTLEN; i = i+1 ) begin
      if ( i == 0 ) begin
        extend_reg[i] <= pls_in;
      end else begin
        extend_reg[i] <= extend_reg[i-1];
      end
    end
  end
end

endmodule
