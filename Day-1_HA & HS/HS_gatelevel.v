`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 21:47:42
// Design Name: 
// Module Name: HS_gatelevel
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


module HS_gatelevel(
    input a,
    input b,
    output differ,
    output barrow
    );
    wire w1;
    not n(w1,a);
    xor di(differ,a,b); 
    and ba(barrow,w1,b);
    
endmodule
