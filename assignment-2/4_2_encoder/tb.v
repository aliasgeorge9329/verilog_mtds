`include "4x2_encoder.v"

module tb;

    reg y3;
    reg y2;
    reg y1;

    wire a0;
    wire a1;

    encoder e0(.a0(a0), .a1(a1), .y3(y3), .y2(y2), .y1(y1));

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);

        $monitor("%0t, a1=%0b,a0=%0b, y3=%0b,y2=%0b,y1=%0b",$time,a1,a0,y3,y2,y1);

        {y3,y2,y1} = 3'd0; #10
        {y3,y2,y1} = 3'd1; #10
        {y3,y2,y1} = 3'd2; #10
        {y3,y2,y1} = 3'd3; #10
        {y3,y2,y1} = 3'd4; #10
        {y3,y2,y1} = 3'd5; #10
        {y3,y2,y1} = 3'd6; #10
        {y3,y2,y1} = 3'd7; #10

        $finish;

    end

endmodule