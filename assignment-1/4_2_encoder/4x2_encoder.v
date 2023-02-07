module encoder(output a0,a1, input y3,y2,y1);

    or(a1,y3,y2);
    or(a0,y3,y1);

endmodule