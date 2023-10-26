`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 19:48:15
// Design Name: 
// Module Name: Binary_2bitMultiplier
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


module Binary_2bitMultiplier(input [1:0]a,b,output [3:0]product

    );
    wire w1,w2,w3,w4,w5;
    and a1(product[0],a[0],b[0]);
    and a2(w1,a[0],b[1]);
    and a3(w2,a[1],b[0]);
    and a4(w3,a[1],b[1]);
    HA ha1(.a(w1),.b(w2),.sum(product[1]),.carry(w4));
    HA ha2(.a(w4),.b(w3),.sum(product[2]),.carry(product[3]));
    
endmodule
