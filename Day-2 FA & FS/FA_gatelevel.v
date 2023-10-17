`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 19:22:59
// Design Name: 
// Module Name: FA_gatelevel
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


module FA_gatelevel(
    input a,
    input b,
    input c,
    output SUM,
    output CARRY
    );
    wire w1,w2,w3;
    xor temp(w1,a,b); 
    xor s(SUM,w1,c); 
    and t(w2,w1,c); 
    and t2(w3,a,b); 
    or ca(CARRY,w2,w3);
endmodule
