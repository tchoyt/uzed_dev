/* Generic Avalon Memory Mapped Interface */

interface avalon_mm 
   #(
      A_WIDTH     = 32, // Width of the address bus
      D_WIDTH     = 32, // Width of the data bus
      BC_WIDTH    = 1   // Width of the burstcount signal
   );

   /* Constants */ 
   localparam BE_WIDTH = num_bytes(D_WIDTH);

   /* REG/WIRE declarations */
   logic                      waitrequest;
   logic [BC_WIDTH-1:0]       burstcount;
   logic [A_WIDTH-1 :0]       address;
   logic                      read;
   logic [D_WIDTH-1 :0]       readdata;
   logic                      readdatavalid;
   logic                      write;
   logic [D_WIDTH-1 :0]       writedata;
   logic [BE_WIDTH-1:0]       byteenable;
   
   /* Avalon Master interface */
   modport Master (                   
      input  waitrequest,
      output burstcount,
      output address,
      output read,
      input  readdata,
      input  readdatavalid,
      output write,
      output writedata,
      output byteenable
      );
 
   /* Avalon Slave interface */
   modport Slave (
      output waitrequest,
      input  burstcount,
      input  address,
      input  read,
      output readdata,
      output readdatavalid,
      input  write,
      input  writedata,
      input  byteenable
      );

   /* Calculate the size of the avalone byte enable */
   function integer num_bytes;
      input integer value;

      num_bytes = value / 8;
      if( (num_bytes * 8) < value )
         begin
            num_bytes = num_bytes + 1;
         end
      if( num_bytes == 0 )
         begin
            num_bytes = 1;
         end
   endfunction
   
endinterface

