`include "half_adder.v"

module full_adder(output cout,output s, input a, input b, input c);

    wire cout1;
    wire cout2;
    wire sum1;


    half_adder h0(.cout(cout1), .s(sum1), .a(a), .b(b));
    half_adder h1(.cout(cout2), .s(s), .a(sum1), .b(c));
    or(cout,cout1,cout2);

endmodule
