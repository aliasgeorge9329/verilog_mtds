module full_adder(input a, input b, input c, output cout, output s);

    assign {cout,s} = a+b+c;

endmodule