
module aoi(input [4:0] xin, output y);

assign y = (xin[0] & xin[1]) | (xin[2] & xin[3] & xin[4]);

endmodule