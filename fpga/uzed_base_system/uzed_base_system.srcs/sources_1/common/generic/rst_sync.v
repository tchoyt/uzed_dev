/* Create Synchronus reset from an asynchronous source
See design paper:
http://www.sunburst-design.com/papers/CummingsSNUG2002SJ_Resets.pdf 
*/

module rst_sync (
   input  wire clk,			// System Clock
   output reg  rst_n,		// Synchronized reset output
   input  wire async_rst_n	// Async reset input
   );

/* REG/WIRE declarations */
reg rff1;

/* Syncrhonize the Asynchronous reset */
always @(posedge clk or negedge async_rst_n) begin
   if (!async_rst_n)
      {rst_n, rff1} <= 2'b0;
   else
      {rst_n, rff1} <= {rff1, 1'b1};
end

endmodule
