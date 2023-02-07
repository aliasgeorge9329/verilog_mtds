`include "aoi.v"

module aoi_tb;

reg [4:0] xin;
wire y;

aoi DUT(.xin(xin),.y(y));

initial begin

  $monitor("T=%0t, xin=%5b, y=%0b",$time,xin,y);  
  
   xin = 5'b00000; #10
   xin = 5'b11100; #10
   xin = 5'b11111; #10   
   xin = 5'b11101; #10 
   xin = 5'b00101; #10 
   xin = 5'b10100; #10

  $finish();

end

endmodule