`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 19:31:36
// Design Name: 
// Module Name: JK_using_SR
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


module JK_using_SR(j,k,clk,qn,qn_bar,rst);
input j,k,clk,rst;
output qn,qn_bar;
wire w1,w2;
//always @(posedge clk) begin
assign w1=j & qn_bar;
assign w2=k & qn;
//end
SR_fliflop SR_FF(.s(w1),.r(w2),.clk(clk),.qn(qn),.qn_bar(qn_bar),.rst(rst));
endmodule
