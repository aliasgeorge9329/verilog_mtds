module decoder(output y3,y2,y1,y0, input a1,a0);


    assign y3 = ~a1 ? ~a0 ? 1'b1 : 1'b0 : ~a0 ? 1'b0 : 1'b0;
    assign y2 = ~a1 ? a0 ? 1'b1 : 1'b0 : a0 ? 1'b0 : 1'b0;
    assign y1 = a1 ? ~a0 ? 1'b1 : 1'b0 : ~a0 ? 1'b0 : 1'b0;
    assign y0 = a1 ? a0 ? 1'b1 : 1'b0 : a0 ? 1'b0 : 1'b0;

endmodule