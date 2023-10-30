`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 18:23:52
// Design Name: 
// Module Name: mux_16to1_using_8to1
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


module mux_16to1_using_8to1(
    input [15:0] d,
    input [3:0] s,
    output y
    );
    wire [3:0]y1;
    mux_4to1 mux1(.d(d[7:0]),.s(s[2:0]),.y(y1[0]));
    mux_4to1 mux2(.d(d[15:7]),.s(s[2:0]),.y(y1[1]));
    mux_2to1 mux3(.d(y1[1:0]),.s(s[3]),.y(y));
endmodule
