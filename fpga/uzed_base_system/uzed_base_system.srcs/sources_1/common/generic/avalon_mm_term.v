/* Avalon-MM Termination 
   All interfaces originating from the HPS must be receive a read data valid or the HPS will hang
   Also used for terminating unused Avalon interfaces
*/

module avalon_mm_term #(
   parameter TERM_INTFC = 0
   ) (
      input  wire       clk,             // I1   - System clock (100MHz)
      input  wire       rst_n,           // I1   - Async reset with release synchronized to clk
      avalon_mm.Slave   av_term,         // In   - Avalon Interface to terminate
      input  wire       read,            // I1   - Avalon read
      output wire       readdatavalid,   // O1   - Avalon read data valid
      output wire       waitrequest      // O1   - Avalon wait request
);

/* Parameters */

/* REG/WIRE declarations */

/* Terminate the entire Avalon-MM bus or just read data valid and waitrequest */
generate 
   // Terminate the entire interface
   if (TERM_INTFC) begin

      /* Continuous assignments */ 
      assign readdatavalid        = 1'b0;
      assign waitrequest          = 1'b0;
      assign av_term.waitrequest  = 1'b0;
      assign av_term.readdata     = av_term.readdatavalid ? 32'hDEADBEEF : 32'd0; 
      
      // Generate read data valid
      always @(posedge clk or negedge rst_n)
      begin
         if( !rst_n )
         begin
            av_term.readdatavalid <= 1'b0;
         end else begin
            av_term.readdatavalid <= av_term.read;
         end
      end
   
   // Terminate read data valid and wait request only
   end else begin
      
      /* Continuous assignments */
      assign av_term.readdatavalid  = 1'b0;
      assign av_term.readdata       = 32'd0;
      assign av_term.waitrequest    = 1'b0;
      assign waitrequest            = 1'b0; 
      
      // Generate read data valid
      always @(posedge clk or negedge rst_n)
      begin
         if( !rst_n )
         begin
            readdatavalid <= 1'b0;
         end else begin
            readdatavalid <= read;
         end
      end 
   end
endgenerate 

endmodule
