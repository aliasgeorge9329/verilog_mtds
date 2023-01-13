`include "and.v"

module and_tb();

    reg a, b;
    wire out;


    andGate and1 (.a(a), .b(b), .out(out));

    initial begin
    
        $dumpfile("and.vcd");
        $dumpvars(0, and_tb);

        $monitor("T =%0t, a =%0b , b = %0b , out = %0b", $time, a, b, out);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;

    end
    
endmodule

