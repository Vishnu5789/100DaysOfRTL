`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 19:29:32
// Design Name: 
// Module Name: mux_8to1_using_2t01
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


module mux_8to1_using_2t01(
    input [7:0] d,
    input [2:0] s,
    output y
    );
    wire [6:0]y1;
    mux_2to1 mux1(.d(d[1:0]),.s(s[0]),.y(y1[0]));
    mux_2to1 mux2(.d(d[3:2]),.s(s[0]),.y(y1[1]));
    mux_2to1 mux3(.d(d[5:4]),.s(s[0]),.y(y1[2]));
    mux_2to1 mux4(.d(d[7:6]),.s(s[0]),.y(y1[3]));
    mux_2to1 mux5(.d(y1[1:0]),.s(s[1]),.y(y1[5]));
    mux_2to1 mux6(.d(y1[3:2]),.s(s[1]),.y(y1[6]));
    mux_2to1 mux7(.d(y1[6:5]),.s(s[2]),.y(y));
endmodule
