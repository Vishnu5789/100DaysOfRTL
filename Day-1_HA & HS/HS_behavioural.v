`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 21:42:00
// Design Name: 
// Module Name: HS_behavioural
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


module HS_behavioural(
    input a,
    input b,
    output reg difference,
    output reg barrow
    );
    always @(*) 
    begin 
    difference = a ^ b; 
    barrow = ~a & b;
    end
endmodule
