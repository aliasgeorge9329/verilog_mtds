`include "dflip.v"
module test;

reg d;
reg rst;
reg clk;
wire q;

dff  d0 ( .d(d),  
                .rst (rst),  
                .clk (clk),  
                .q (q));  
    
always #10 clk = ~clk;  

initial begin
  $dumpfile("test1.vcd");
  $dumpvars(0,test);
end


initial begin
  $monitor("T=%0t, q=%0b, d=%0b, rst=%0b",$time,q,d,rst);
end


initial begin  
clk <= 0;  
d <= 0;  
rst <= 0;  
end

initial begin
#15 d <= 1;  
#10 rst <= 1;  
d <= 0;
#10 rst <= 0;  
d <= 1;   
end

initial begin
#100 $finish; 
end  


endmodule  
