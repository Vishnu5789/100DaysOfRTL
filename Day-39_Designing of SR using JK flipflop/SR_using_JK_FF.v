`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 20:27:23
// Design Name: 
// Module Name: SR_using_JK_FF
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


module SR_using_JK_FF(S,R,clk,q,qn_bar);
input S,R,clk; 
output q,qn_bar; 
JK_flipflop SR(.j(S),.k(R),.clk(clk),.q(q),.qn_bar(qn_bar));
endmodule
