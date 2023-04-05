`include "a.v"
module shift_register_8bit_tb();
wire [7:0]Q;
reg reset,right,in;
reg Clk=0;
shift_register_8bit DUT(.Q(Q),.in(in),.Clk(Clk),.right(right),.reset(reset));
always
begin
#5 Clk=~Clk;
end 
  initial begin
      $dumpfile("tb.vcd");
      $dumpvars(0, shift_register_8bit_tb);
  end
initial
begin
right=0;in=1;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#10;right=0;in=0;
#100 $finish;
end
endmodule