`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:58:29
// Design Name: 
// Module Name: T_using_SR
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


module T_using_SR(
    input t,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
wire w1,w2;
//always @(posedge clk) begin
assign w1=t & qn_bar;
assign w2=t & qn;
//end
SR_FF SR_FF(.s(w1),.r(w2),.clk(clk),.qn(qn),.qn_bar(qn_bar),.rst(rst));
endmodule
