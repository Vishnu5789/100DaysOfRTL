`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 07:45:03
// Design Name: 
// Module Name: ODD_PARITY_GEN
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


module ODD_PARITY_GEN(
    input a,
    input b,
    input c,
    output op
    );
 wire w1; 
 xnor a1(w1,b,c); 
 xor a2(op,a,w1);
endmodule
