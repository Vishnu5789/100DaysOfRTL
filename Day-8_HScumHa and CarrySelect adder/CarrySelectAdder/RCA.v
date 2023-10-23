`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 15:00:26
// Design Name: 
// Module Name: RCA
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


module RCA(input [3:0]a,b,input cin,output [3:0]sum,output [1:0]cout);
wire [1:0]c0,c1,c2;
FA fa1(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c0));
FA fa2(.a(a[1]),.b(b[1]),.c(c0),.sum(sum[1]),.carry(c1));
FA fa3(.a(a[2]),.b(b[2]),.c(c1),.sum(sum[2]),.carry(c2));
FA fa4(.a(a[3]),.b(b[3]),.c(c2),.sum(sum[3]),.carry(cout));

endmodule
