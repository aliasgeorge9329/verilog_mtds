`include "mux_2x1.v"

module mux_2x1_tb;

    reg a,b,sel;
    wire y;

    mux_2x1 DUT(.a(a), .b(b), .sel(sel), .y(y));

    initial begin
      
      $monitor("T=%0t, a=%0b, b=%0b, sel=%0b, y=%0b",$time,a,b,sel,y);

          a=0; b=0; sel=0;
      #10 a=0; b=0; sel=1;
      #10 a=0; b=1; sel=0;
      #10 a=0; b=1; sel=1;
      #10 a=1; b=0; sel=0;
      #10 a=1; b=0; sel=1;
      #10 a=1; b=1; sel=0;
      #10 a=1; b=1; sel=1;

    end

endmodule