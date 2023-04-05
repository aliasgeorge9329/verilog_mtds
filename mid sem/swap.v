module test;

integer a;
integer b;

initial begin
  a=2;
  b=7;
end

initial begin
#10;
 a<=b;
 b<=a;
end


initial begin
  $monitor("T=%0t, a=%0d, b=%0d",$time,a,b);
end

endmodule