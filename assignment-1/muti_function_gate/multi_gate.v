module multigate(output out, input a,b,s0,s1);

    wire andw;
    wire orw;
    wire norw;
    wire nandw;
    wire nots0;
    wire nots1;
    wire [3:0] w;

    and(andw,a,b);
    or(orw,a,b);
    nor(norw,a,b);
    nand(nandw,a,b);
    not(nots0,s0);
    not(nots1,s1);

    and(w[0], andw, nots1, nots0);
    and(w[1], orw, nots1, s0);
    and(w[2], norw, s1, nots0);
    and(w[3], nandw, s1, s0);

    or(out,w[0],w[1],w[2],w[3]);

endmodule