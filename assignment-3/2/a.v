module shift_register_8bit(output reg [7:0]Q,input in,Clk,right,reset);
initial
begin
Q=8'b0;
end
always@(posedge Clk)
begin
if(reset==1)
Q=8'b0;
else if(right==1)//right shift
begin
Q=Q>>1;
Q[7]=in;
end
else if(right==0)//left shift
begin
Q=Q<<1;
Q[0]=in;
end
end
endmodule