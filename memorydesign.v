module Dualport_RAM(clk,cs,wr,rd,addr,data_in,data_out);
input clk,cs,wr,rd;
input[3:0] data_in;  
input [7:0] addr; 
output reg[3:0]data_out;  
reg [3:0] mem[255:0]; 

always@(posedge clk)
begin
if(~cs)
data_out <= 4'b0000;
else
begin 
if(wr)
mem[addr] <= data_in;
if(rd)
data_out <= mem[addr];
end
end
endmodule


