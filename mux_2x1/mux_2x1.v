
module mux_2x1(output y,input a,b,sel);

    wire out1, out2, selb;

    not(selb,sel);
    and(out1,a,selb);
    and(out2,b,sel);
    or(y,out1,out2);

endmodule