module johnson(output reg [3:0] out, input  rst, input  right, input data, input clk);
    reg temp;

    initial
        out = 4'b1111;

    always @(posedge clk) begin

        if(rst) begin
            {out} = 0;
        end 

        else begin
           temp = out[0];
           out = out>>1;
           out[3] = ~temp;
        end 
        
    end
endmodule