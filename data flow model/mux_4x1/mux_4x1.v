module mux_4x1(input [3:0] i, input [1:0] s, output out);

   // assign out = (i[0] & ~(s[0]) & ~(s[1])) | (i[1] & (s[0]) & ~(s[1])) | (i[2] & ~(s[0]) & (s[1])) | (i[3] & (s[0]) & (s[1]));

   assign out = s[0] ? (~s[0] ? i[0]: i[1]) : ((~s[0] ? i[2]: i[3]));

endmodule