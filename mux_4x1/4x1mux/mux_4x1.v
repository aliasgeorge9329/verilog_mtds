module mux_4x1(input [3:0] i, input [1:0] s, output out);

    wire s0, s1, s3, s4;

    assign s0 = i[0] & ~(s[0]) & ~(s[1]);
    assign s1 = i[1] & (s[0]) & ~(s[1]);
    assign s2 = i[2] & ~(s[0]) & (s[1]);
    assign s3 = i[3] & (s[0]) & (s[1]);

    or(out, s0, s1, s2, s3);

endmodule