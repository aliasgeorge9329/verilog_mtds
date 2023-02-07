`include "full_adder.v"
module tb;

    reg  a;
    reg  b;
    reg  c;

    wire  s;
    wire  carr;

    full_adder f0(.cout(carr), .s(s), .a(a), .b(b), .c(c));

    initial begin

        $monitor("%0t, a=%0b,b=%0b,c=%0b, s=%0b,c=%0b",$time,a,b,c,s,carr);

        {a,b,c} = 3'd0; #10
        {a,b,c} = 3'd1; #10
        {a,b,c} = 3'd2; #10
        {a,b,c} = 3'd3; #10
        {a,b,c} = 3'd4; #10
        {a,b,c} = 3'd5; #10
        {a,b,c} = 3'd6; #10
        {a,b,c} = 3'd7; #10

        $finish;

    end

endmodule

