`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:01:02
// Design Name: 
// Module Name: FS_behavioral
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


module FS_behavioral(
    input a,
    input b,
    input c,
    output reg differ,
    output reg barrow
    );
    always @(*)
    begin 
    differ = (a^b)^c; 
    barrow = ~(a^b)&c | ~a&b;
    end
endmodule
