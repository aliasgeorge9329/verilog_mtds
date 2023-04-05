`include "a.v"

module tb;  
   reg t;
   reg clk;

   initial
      clk <= 0;
  
   always #5 clk = ~clk;  
  
   tff jk0(.t(t), .clk(clk), .q(q));  
  
   initial begin  
          t <= 0; 
      #10  t <= 1;
      #10 $finish; 

   end

   initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
   end 
  
   initial  

      $monitor ("T=%0t, t=%0b q=%0b",$time, t, q); 

endmodule  