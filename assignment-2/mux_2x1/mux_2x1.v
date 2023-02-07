
module mux_2x1(output y,input a,b,sel);

    assign y = sel ? a : b;

endmodule
