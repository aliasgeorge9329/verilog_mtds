module half_adder(output cout,output s, input a, input b);

    and(cout,a,b);
    xor(s,a,b);

endmodule
