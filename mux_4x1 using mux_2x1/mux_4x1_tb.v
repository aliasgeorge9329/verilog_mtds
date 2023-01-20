`include "mux_2x1.v"

module mux_4x1_tb;

    reg [3:0] i;
    reg [1:0] sel;
    wire out1, out2, y;

    mux_2x1 m1 (out1, i[0], i[1], sel[0]);
    mux_2x1 m2 (out2, i[2], i[3], sel[0]);
    mux_2x1 m3 (y, out1, out2, sel[1]);

    initial begin

        $monitor("T=%0t, i=%4b, sel=%1b, y=%0b", $time, i, sel, y);
        
        i = 4'b1010;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

    end

endmodule