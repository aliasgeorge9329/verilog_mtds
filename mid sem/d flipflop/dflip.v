module dff (input d,  input rst,  input clk,  output reg q);  
  
    always @ (posedge clk)  
       if (!rst)  
          q <= 1'b0;  
       else  
          q <= d;  
endmodule