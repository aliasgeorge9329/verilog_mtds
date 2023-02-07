`include "2x4_decoder.v"

module tb;

    reg a0;
    reg a1;

    wire y3;
    wire y2;
    wire y1;
    wire y0;

    decoder d0(.y3(y3), .y2(y2), .y1(y1), .y0(y0), .a1(a1), .a0(a0));

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);

        $monitor("%0t, a1=%0b,a0=%0b, y3=%0b,y2=%0b,y1=%0b,y0=%0b",$time,a1,a0,y3,y2,y1,y0);

        {a1,a0} = 3'd0; #10
        {a1,a0} = 3'd1; #10
        {a1,a0} = 3'd2; #10
        {a1,a0} = 3'd3; #10

        $finish;

    end

endmodule