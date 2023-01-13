module pic1(input [3:0] m, output out1);

    wire s0, s1;
    
    and(s0, m[0], m[1]);
    and(s1, m[2], m[3]);
    or(out1, s0, s1);

endmodule