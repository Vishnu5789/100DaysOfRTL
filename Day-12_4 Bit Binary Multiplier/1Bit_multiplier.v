`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 12:01:04
// Design Name: 
// Module Name: 1Bit_multiplier
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


module Bit_multiplier(
    input a,
    input [3:0] b,
    output [3:0] p
    );
    assign p[0]=a& b[0];
    assign p[1]=a& b[1];
    assign p[2]=a& b[2];
    assign p[3]=a& b[3];
    
endmodule
