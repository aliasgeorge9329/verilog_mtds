`include "multi_gate.v"

module tb;

    reg a;
    reg b;
    reg s0;
    reg s1;
    wire out;

    multigate m0(.out(out), .a(a), .b(b), .s0(s0), .s1(s1));

    initial begin
      
      $dumpfile("tb.vcd");
      $dumpvars(0, tb);
      $monitor("T=%0t, a=%0b, b=%0b, s0=%0b, s1=%0b, out=%0b",$time,a,b,s0,s1,out);

      a =1'b0; b =1'b1;

      {s1,s0} = 2'd0; #10;
      {s1,s0} = 2'd1; #10;
      {s1,s0} = 2'd2; #10;
      {s1,s0} = 2'd3; #10;

      $finish;

    end

endmodule