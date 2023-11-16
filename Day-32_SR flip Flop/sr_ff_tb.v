`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 17:02:30
// Design Name: 
// Module Name: sr_ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_ff_tb();
reg s,r,clk; 
wire q,q_bar;integer i;
sr_ff dut(.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar));
initial clk=0;
always #10 clk=~clk; 
initial 
begin 
for(i=0;i<10;i=i+1) 
begin
s=$urandom();
r=$urandom();
#10;
end
$finish();
end
endmodule
