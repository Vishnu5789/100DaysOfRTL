`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 07:42:58
// Design Name: 
// Module Name: EVEN_PARITY_GEN
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


module EVEN_PARITY_GEN(
    input a,
    input b,
    input c,
    output ep
    );
    assign ep = (a^b)^c;;
endmodule
