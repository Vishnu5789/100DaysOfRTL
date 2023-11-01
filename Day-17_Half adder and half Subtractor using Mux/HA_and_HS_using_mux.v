`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 14:36:05
// Design Name: 
// Module Name: HA_and_HS_using_mux
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


module HA_and_HS_using_mux(
input a,
    input b,
    output differ,
    output barrow,
    output sum,
    output carry
);
    mux_2to1 Sum(.s(a),.y(sum),.a(b),.b(~b));
    mux_2to1 Carry(.s(a),.y(carry),.a(0),.b(~sum));
    mux_2to1 difference(.s(a),.y(differ),.a(b),.b(~b));
    mux_2to1 Barrow(.s(a),.y(barrow),.a(b),.b(0));
endmodule
