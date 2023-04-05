module tb();
output reg clock;

initial
clock = 1'b0;

initial begin
forever
#10 clock = ~clock;
end

initial
#30 $finish;

initial begin
  $dumpfile("a.vcd");
  $dumpvars(0,tb);
end

endmodule