`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 19:38:51
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
reg j,k,clk,rst;
wire qn,qn_bar;
JK_using_SR dut(j,k,clk,qn,qn_bar,rst);
initial clk=0;
always #2 clk=~clk;
initial 
begin 
rst=0;#10;
rst=1;
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish();
end
endmodule
