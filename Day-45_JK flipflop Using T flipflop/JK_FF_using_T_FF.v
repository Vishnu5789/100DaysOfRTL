`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 20:22:02
// Design Name: 
// Module Name: JK_FF_using_T_FF
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


module JK_FF_using_T_FF(
    input j,
    input k,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
    wire w; 
    assign w=j & qn_bar | k & qn; 
    T_FF TFF(.t(w),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
endmodule
