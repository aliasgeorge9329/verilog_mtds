`include "half_adder.v"
module tb;

    reg  a;
    reg  b;

    wire  s;
    wire  carr;

    half_adder h0(.cout(carr), .s(s), .a(a), .b(b));

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        $monitor("T= %0t, a=%b,b=%b s=%0b,carr=%0b",$time,a,b,s,carr);

        {a,b} = 3'd0; #10
        {a,b} = 3'd1; #10
        {a,b} = 3'd2; #10
        {a,b} = 3'd3; #10

        $finish;

    end

endmodule

