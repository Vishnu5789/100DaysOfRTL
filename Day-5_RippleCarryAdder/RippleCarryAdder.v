`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 21:28:30
// Design Name: 
// Module Name: RippleCarryAdder
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


module RippleCarryAdder(a,b,cin,s,c);
input [3:0]a,b;
input cin;
output [3:0]s;
output c; 
wire c1,c2,c3;
FA fa1(.a(a[0]),.b(b[0]),.c(cin),.sum(s[0]),.carry(c1));
FA fa2(.a(a[1]),.b(b[1]),.c(c1),.sum(s[1]),.carry(c2));
FA fa3(.a(a[2]),.b(b[2]),.c(c2),.sum(s[2]),.carry(c3));
FA fa4(.a(a[3]),.b(b[3]),.c(c3),.sum(s[3]),.carry(c));
endmodule
