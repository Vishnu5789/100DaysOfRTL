`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 20:32:14
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
reg S,R,clk; wire q,qn_bar;
SR_using_JK_FF dut(S,R,clk,q,qn_bar);
initial clk=0; 
always #2 clk=~clk;
initial 
begin 
S=0;R=0; #10;
S=0;R=1; #10;
S=1;R=0; #10;
S=1;R=1; #10;
$finish();
end
endmodule
