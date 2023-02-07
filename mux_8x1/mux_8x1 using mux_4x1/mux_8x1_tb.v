`include "mux_4x1.v"
`include "mux_2x1.v"

module mux_8x1_tb;

    reg [7:0] i;
    reg [2:0] sel;
    wire out1, out2, y;

    mux_4x1 m1 (i[3:0], sel[1:0], out1);
    mux_4x1 m2 (i[7:4], sel[1:0], out2);
    mux_2x1 m3 (y, out1, out2, sel[2]);

    initial begin

        $monitor("T=%0t, i=%4b, sel=%1b, y=%0b", $time, i, sel, y);
        
        i = 8'b10001110;

        sel = 3'd0; #10;
        sel = 3'd1; #10;
        sel = 3'd2; #10;
        sel = 3'd3; #10;
        sel = 3'd4; #10;
        sel = 3'd5; #10;
        sel = 3'd6; #10;
        sel = 3'd7; #10;

    end

endmodule