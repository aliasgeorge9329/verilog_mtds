module tb();

reg [7:0] num;
integer i;

initial begin
for(i=0; i<8; i = i+1) begin
if(i%2 == 0)
num[i] = 0;
else
num[i] = 1;
end
end

initial
$monitor("num=%8b",num);

initial begin
  $dumpfile("a.vcd");
  $dumpvars(0,tb);
end

endmodule