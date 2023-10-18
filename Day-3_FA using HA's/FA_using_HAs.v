`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 18:34:47
// Design Name: 
// Module Name: FA_using_HAs
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


module FA_using_HAs(input a,b,cin,output sum,carry);
wire w1,w2,w3;
HA HA1(.a(a),.b(b),.sum(w1),.carry(w2));
HA HA2(.a(w1),.b(cin),.sum(sum),.carry(w3));
HA HA3(.a(w3),.b(w2),.sum(carry));
endmodule
