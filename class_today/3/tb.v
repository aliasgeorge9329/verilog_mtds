`include "a.v"

module tb;
reg data_start;
reg [15:0] data;
reg clk;

data_store d0(data_start,data,clk);

initial
clk = 0;

initial
forever #5 clk= ~clk;

initial begin

data_start = 1; data = 16'd10; 
#9;
data = 16'd9; 
#9;
data = 16'd8; 
#9;
data = 16'd7; 
#9;
data = 16'd6; 
#9;
data = 16'd5; 
#9;
data = 16'd4; 
#9;
data = 16'd3; 
#9;
data = 16'd2; 
#9;
data = 16'd1; 
#9;
data = 16'd1; 
#9;
data = 16'd1; 
#9;
data = 16'd13; 
#9;
data = 16'd12; 
#9;
data = 16'd1; 
#9;
data = 16'd2; 
#9;
data = 16'd2; 
#9;
data = 16'd1; 
#9;

end

initial
#100 $finish();

initial begin
  $dumpfile("a.vcd");
  $dumpvars(0,tb);
end

endmodule