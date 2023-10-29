`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 19:01:11
// Design Name: 
// Module Name: mux_8to1_using_4to1
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


module mux_8to1_using_4to1(
    input [7:0] d,
    input [2:0] s,
    output y
    );
    wire [3:0]y1;
    mux_4to1 mux1(.d(d[3:0]),.s(s[1:0]),.y(y1[0]));
    mux_4to1 mux2(.d(d[7:4]),.s(s[1:0]),.y(y1[1]));
    mux_2to1 mux3(.d(y1[1:0]),.s(s[2]),.y(y));
    
    
endmodule
