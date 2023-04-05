`include "c.v"

module tb;  

  reg clk;                     
  reg rst;
  reg right;
  reg data;                    
  wire [7:0] out;             

  shifter  s0 (.out (out), .rst(rst), .right(right), .data(data), .clk(clk));   
   
  always #5 clk = ~clk;  
  

  initial
    $monitor("T=%0t, data=%0b, right=%0b, out=%8b",$time,data,right,out);
  
  initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
  end 

  initial begin  
    clk <= 0;
    data <=0;
    right <=0;
   
  
    #20    right <=0; data <=1; 
    #20    right <=0; data <=0;  
    #20    right <=0; data <=1; 
    #20    right <=0; data <=1;  

    #20    right <=1; data <=0; 
    #20    right <=1; data <=0;  
    #20    right <=1; data <=1; 
    #20    right <=1; data <=1;  


    #20 $finish;  
  end  
endmodule  