`include "ripple_adder.v"

module tb();

    reg [3:0] a;
    reg [3:0] b;
    
    wire [3:0] c;
    wire [3:0] s;

    ripple r0(a,b,c,s);

    initial begin
      
      a = 4'b0011;
      b = 4'b1011;

      $dumpfile("tb.vcd");
      $dumpvars(0, tb);

      $monitor("sum =%0b%4b",c[3],s);

      $finish();

    end

endmodule