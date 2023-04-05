`include "b.v"

module tb;  

  reg clk;                     
  reg rst;                    
  wire [3:0] out; 
  reg up;            

  counter  c0 ( .clk (clk), .rst(rst), .up(up), .out (out));  
   
  always #5 clk = ~clk;  
  
  initial
    $monitor("out=%4b",out);
     
  initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
  end 

  initial begin  
    clk <= 0;  
    rst <= 0;
    up<=1;  
  
  
    #150   rst <= 1;  

    $display("Down");

    up<=0;  
  
    #10   rst <= 0;  
    #150   rst <= 1;
    #20 $finish;  
  end  
endmodule  