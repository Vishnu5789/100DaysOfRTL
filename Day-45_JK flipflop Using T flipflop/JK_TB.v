`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 20:25:21
// Design Name: 
// Module Name: JK_TB
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


module JK_TB();
reg j,k,clk,rst;wire qn,qn_bar;
JK_FF_using_T_FF dut(.j(j),.k(k),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar)); 
initial clk=0; always #2 clk=~clk; 
initial 
begin
rst=0;#10; 
rst=1;j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#20; 
$finish();
end
endmodule
