module data_store(input data_start, input [15:0] data, input clk);

reg reg [15:0] buffer [0:7];
integer i;
integer count;

always @(posedge clk) begin

if(data_start) begin
i = 0;

repeat(8) begin
@(posedge clk) buffer[i] = data; 


for(count=0; count<15; count = count +1) begin
$display(buffer[count]);
end

i = i + 1;
end

end
end

endmodule
