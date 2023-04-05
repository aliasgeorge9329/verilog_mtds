module tb();

reg [7:0] num;
integer count;
reg found;

initial begin
num = 8'd100;
count = 0;
found = 0;
end

initial begin

while(num > 0 && found != 1) begin
  if(num[0] == 1) begin
    $display(count+1);
    found = 1;
  end
  num = num >> 1;
  count = count + 1;
end

end


initial begin
  $dumpfile("a.vcd");
  $dumpvars(0,tb);
end

endmodule