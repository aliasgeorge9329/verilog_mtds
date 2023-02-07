module decoder(output y3,y2,y1,y0, input a1,a0);

    wire nota0;
    wire nota1;

    not(nota0,a0);
    not(nota1,a1);

    and(y3,nota1,nota0);
    and(y2,nota1,a0);
    and(y1,a1,nota0);
    and(y0,a1,a0);

endmodule