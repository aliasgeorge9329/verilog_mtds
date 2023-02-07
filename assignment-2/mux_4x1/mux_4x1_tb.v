`include "mux_4x1.v"

module mux_4x1_tb();

    reg [3:0] i;
    reg [1:0] s;

    wire out;

    mux_4x1 m0 (.i(i), .s(s), .out(out));

    initial begin
      
      i = 4'b1101;

      $monitor("T =%0t, i =%4b, s=%2b, out = %0b", $time, i, s, out);

        s = 2'b00; #10
        s = 2'b01; #10
        s = 2'b10; #10
        s = 2'b11; #10
      
      $dumpfile("mux_4x1.vcd");
      $dumpvars(0, mux_4x1_tb);
      $finish;

    end

endmodule