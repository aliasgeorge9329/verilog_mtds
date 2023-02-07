
module mux_2x1(output y,input a,b,sel);

// assign y = sel? a:b;
assign y = (sel&a)|(~(sel)&b);

endmodule