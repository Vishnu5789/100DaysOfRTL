`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 21:31:47
// Design Name: 
// Module Name: HA_gatelevel
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


module HA_gatelevel(
    input a,
    input b,
    output sum,
    output carry
    );
    xor s(sum,a,b);
    and c(carry,a,b);
endmodule
