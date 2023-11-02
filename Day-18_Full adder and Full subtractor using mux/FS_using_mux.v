`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 18:43:24
// Design Name: 
// Module Name: FS_using_mux
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


module FS_using_mux(
    input a,
    input b,
    input bin,
    output differ,barrow
    );
    wire [1:0]s;
    assign s[0]=b;
    assign s[1]=a;
    mux_4to1 DIFFER(.y(differ),.s(s),.a(bin),.b(~bin),.c(~bin),.d(bin));
    mux_4to1 BARROW(.y(barrow),.s(s),.a(bin),.b(1),.c(0),.d(bin));
endmodule
