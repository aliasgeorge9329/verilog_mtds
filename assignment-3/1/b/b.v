module counter (input clk, input rst, input up, output reg[3:0] out);  
  initial
    out<= 0;

  always @ (posedge clk) begin  
    if (rst)  
      out <= 0;
    else if (out < 0) 
      out = 4'd15;    
    else if(up) 
      out <= out + 1;
    else
      out <= out -1 ;    
  end  
  
endmodule  