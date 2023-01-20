
module aoi(input [4:0] xin, output y);

wire out1, out2;

and(out1,xin[0],xin[1]);
and(out2,xin[2],xin[3],xin[4]);

or(y,out1,out2);

endmodule