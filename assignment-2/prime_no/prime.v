module prime(output out, input a,b,c,d);

    wire out1,out2,out3,out4;
    wire nota, notb, notc, notd;

    not(nota,a);
    not(notb,b);
    not(notc,c);
    not(notd,d);
    and(out1,nota,notb,c);
    and(out2,notb,c,d);
    and(out3,b,notc,d);
    and(out4,nota,c,d);
    or(out,out1,out2,out3,out4);


endmodule