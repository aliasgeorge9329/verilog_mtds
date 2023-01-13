`include "pic1.v"

module pic1_tb();

    reg [3:0] m;
    wire out;

    pic1 p0 (.m(m), .out1(out));

    initial begin
      
      m = 4'b0000;

      $monitor("T =%0t, m =%4b, out = %0b", $time, m, out);

        m = 4'b1111; #10;
        m = 4'b0010; #10;
        m = 4'b0100; #10;
        m = 4'b1000; #10;

      $finish;

    end

endmodule