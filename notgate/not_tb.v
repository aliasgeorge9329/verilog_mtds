`include "not.v"

module not_tb();

    reg a;
    wire out;

    notGate n0 (.a(a), .out(out));

    initial 
    
    begin
      
      $monitor("T =%0t, a =%0b, out =%0b", $time, a, out);

      a = 0; #10;
      a = 1; #10;

    end

endmodule