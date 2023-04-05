`include "d.v"

module tb;  

  reg clk;                     
  reg rst;                    
  wire [3:0] out;             

  johnson j0 (.out (out), .rst(rst), .clk(clk));   
   
  always #5 clk = ~clk;  
  
  initial
    $monitor("T=%0t, out=%4b",$time,out);
  
  initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
  end
   
  initial begin  
    clk <= 0;
    rst <= 0;

    #80 $finish;  
  end  
endmodule  