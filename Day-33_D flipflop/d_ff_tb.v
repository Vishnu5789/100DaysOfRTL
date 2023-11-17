`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 20:10:22
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg d,clk;wire q,q_bar;
integer i; 
d_ff dut(.d(d),.clk(clk),.q(q),.q_bar(q_bar));
initial clk=0; 
always #10 clk=~clk;
initial 
begin 
for(i=0;i<10;i=i+1) 
begin 
d=$urandom();
#10;
end 
$finish();
end
endmodule
