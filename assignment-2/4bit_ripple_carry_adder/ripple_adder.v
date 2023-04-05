`include "full_adder.v"

module ripple(input [3:0] a, input [3:0] b, output [3:0] c, output [3:0] s);

    full_adder f0(.a(a[0]), .b(b[0]), .c(1'b0), .cout(c[0]), .s(s[0]));
    full_adder f1(.a(a[1]), .b(b[1]), .c(c[0]), .cout(c[1]), .s(s[1]));
    full_adder f2(.a(a[2]), .b(b[2]), .c(c[1]), .cout(c[2]), .s(s[2]));
    full_adder f3(.a(a[3]), .b(b[3]), .c(c[2]), .cout(c[3]), .s(s[3]));

endmodule