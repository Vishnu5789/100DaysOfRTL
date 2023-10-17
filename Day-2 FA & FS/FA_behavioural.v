`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 19:18:20
// Design Name: 
// Module Name: FA_behavioural
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


module FA_behavioural(input a,
    input b,
    input c,
    output reg sum,
    output reg carry
    );
    always @(*)
    begin 
    sum = (a^b)^c; 
    carry = (a^b)&c | a&b;
    end
endmodule
