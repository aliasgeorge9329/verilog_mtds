`include "half_adder.v"
module tb;

    reg a, b;
    wire sum, carry;

    half_adder h0(.cout(carry), .s(sum), .a(a), .b(b));

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        $monitor("T= %00t, a=%b,b=%b, sum=%b,carry=%b",$time,a,b,sum,carry);

        {a,b} = 3'd0; #10
        {a,b} = 3'd1; #10
        {a,b} = 3'd2; #10
        {a,b} = 3'd3; #10

        $finish;

    end

endmodule

