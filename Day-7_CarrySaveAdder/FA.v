`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 22:44:23
// Design Name: 
// Module Name: FA
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


module FA(
    input a,
    input b,
    input c,
    output reg sum,carry
    );
    always @(*)
    begin 
    sum = (a^b)^c;
    carry = (a^b)& c | a&b;
    end
endmodule
