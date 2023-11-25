`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 19:53:59
// Design Name: 
// Module Name: SR_tb
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


module SR_tb();
reg s,r,clk,rst;wire qn,qn_bar;
SR_flopflop_using_t dut(.s(s),.r(r),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
initial clk=0;
always #2 clk=~clk;
initial begin 
rst=0;#10;
rst=1;s=0;r=0;#10; 
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
$finish();
end
endmodule
