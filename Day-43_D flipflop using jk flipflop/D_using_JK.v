`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 20:50:52
// Design Name: 
// Module Name: D_using_JK
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


module D_using_JK(
    input d,
    input rst,
    input clk,
    output qn,
    output qn_bar
    );
    JK_FF JKFF(.j(d),.k(~d),.clk(clk),.rst(rst),.q(qn),.qn_bar(qn_bar));
endmodule
