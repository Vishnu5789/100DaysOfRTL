`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 12:13:31
// Design Name: 
// Module Name: Binary_Multiplier4Bit
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


module Binary_Multiplier4Bit(
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
    );
    wire [3:0]p1,p2,p3,p4;
    wire [10:0]c;
    wire [5:0]s;
    Bit_multiplier cb1(.a(a[0]),.b(b),.p(p1));
    Bit_multiplier cb2(.a(a[1]),.b(b),.p(p2));
    Bit_multiplier cb3(.a(a[2]),.b(b),.p(p3));
    Bit_multiplier cb4(.a(a[3]),.b(b),.p(p4));
    assign p[0]=p1[0];
    HA ha1(.a(p1[1]),.b(p2[0]),.sum(p[1]),.cout(c[0]));
    FA fa1(.a(c[0]),.b(p1[2]),.cin(p2[1]),.sum(s[0]),.cout(c[1]));
    HA ha2(.a(s[0]),.b(p3[0]),.sum(p[2]),.cout(c[2]));
    FA fa2(.a(c[2]),.b(c[1]),.cin(p1[3]),.sum(s[1]),.cout(c[3]));
    FA fa3(.a(s[1]),.b(p2[2]),.cin(p3[1]),.sum(s[2]),.cout(c[4]));
    HA ha3(.a(s[2]),.b(p4[0]),.sum(p[3]),.cout(c[5]));
    FA fa4(.a(c[5]),.b(c[4]),.cin(c[3]),.sum(s[3]),.cout(c[6]));
    FA fa5(.a(s[3]),.b(p2[3]),.cin(p3[2]),.sum(s[4]),.cout(c[7]));
    HA ha4(.a(s[4]),.b(p4[1]),.sum(p[4]),.cout(c[8]));
    FA fa6(.a(c[8]),.b(c[7]),.cin(c[6]),.sum(s[5]),.cout(c[9]));
    FA fa7(.a(s[5]),.b(p3[3]),.cin(p4[2]),.sum(p[5]),.cout(c[10]));
    FA fa8(.a(c[10]),.b(c[9]),.cin(p4[3]),.sum(p[6]),.cout(p[7]));
endmodule
