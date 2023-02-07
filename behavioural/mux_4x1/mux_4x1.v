module mux_4x1(output reg out, input [3:0] i,input [1:0] s);

    always @(i or s) begin
    case(s)
        2'b00 : out = i[0];
        2'b01 : out = i[1];
        2'b10 : out = i[2];
        2'b11 : out = i[3];
        default: out = 1'b0;
    endcase
    end

endmodule
