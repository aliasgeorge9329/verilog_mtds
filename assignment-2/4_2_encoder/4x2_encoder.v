module encoder(output a0,a1, input y3,y2,y1);

    assign a1 = y3 ? y2 ? 1'b1 : 1'b1 : y2 ? 1'b1 : 1'b0;
    assign a0 = y3 ? y1 ? 1'b1 : 1'b1 : y1 ? 1'b1 : 1'b0;

endmodule