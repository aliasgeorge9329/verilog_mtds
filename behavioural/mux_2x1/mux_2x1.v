module mux_2x1(output reg out, input a,b,sel);

    always @(a or b or sel) begin

        if(sel)
            out = a;
        else
            out = b;    

    end

endmodule