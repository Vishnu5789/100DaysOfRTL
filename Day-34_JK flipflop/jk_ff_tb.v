`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 19:41:09
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
reg j,k,clk;
wire q,q_bar;integer i;
jk_ff dut(.j(j),.k(k),.clk(clk),.q(q),.q_bar(q_bar));
initial clk=0;
always #2 clk=~clk;
initial 
begin 
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish();
end
endmodule
