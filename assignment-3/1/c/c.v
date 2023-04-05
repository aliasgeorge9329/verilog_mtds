module shifter(output reg [7:0] out, input  rst, input  right, input data, input clk);
    initial
        out <= 8'd230;

    always @(posedge clk) begin

        if(rst) begin
            {out} = 0;
        end 

        else begin
            if(right) begin
             out = out>>1;
             out[7] = data;
            end
            else begin 
             out = out<<1;
             out[0] = data;
            end
        
        end 
        
    end
endmodule