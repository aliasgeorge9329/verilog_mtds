module tff (input t, input clk, output reg q);  
    
    initial
      q<=0;
    
    always @ (posedge clk)  begin
         case ({t})
            1'b0: q <= q;
            1'b1: q <= ~q;
         endcase   
    end 
endmodule