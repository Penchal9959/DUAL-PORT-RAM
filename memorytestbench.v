module dualport_RAM_tb;
reg clk;
reg cs;
reg wr;
reg rd;
reg[7:0] addr;
reg[3:0] data_in;

wire[3:0] data_out;

Dualport_RAM uut(
.clk(clk),
.cs(cs),
.wr(wr),
.rd(rd),
.addr(addr),
.data_in(data_in),
.data_out(data_out)
);

initial 
begin
clk=0;
cs=0;
wr=0;
rd=0;
addr=0;
data_in=0;

#100;
cs=1;

wr=1;
rd=0;
data_in=4'b0001;
addr=8'd01;
#10;
data_in = 4'b0010;
addr =8'd02;
#10;


rd=1;
wr=0;
addr=8'd01;
#10;
addr=8'd02;

end
always clk=#5 ~clk;
endmodule

