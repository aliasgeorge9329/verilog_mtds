`include "prime.v"
module tb;

    reg [3:0] i;

    wire  out;

    prime p0(.out(out), .a(i[3]), .b(i[2]), .c(i[1]), .d(i[0]));

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        $monitor("T= %0t, i=%b : out=%b",$time,i,out);

        i = 4'd0; #10
        i = 4'd1; #10
        i = 4'd2; #10
        i = 4'd3; #10
        i = 4'd4; #10
        i = 4'd5; #10
        i = 4'd6; #10
        i = 4'd7; #10
        i = 4'd8; #10
        i = 4'd9; #10
        i = 4'd10; #10
        i = 4'd11; #10
        i = 4'd12; #10
        i = 4'd13; #10
        i = 4'd14; #10
        i = 4'd15; #10

        $finish;

    end

endmodule

