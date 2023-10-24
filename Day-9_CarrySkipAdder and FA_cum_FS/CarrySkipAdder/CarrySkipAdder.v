`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 10:07:02
// Design Name: 
// Module Name: CarrySkipAdder
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


module CarrySkipAdder(input [3:0]a,b,input cin,output [3:0]sum,output cout,output [4:0] result

    );
    wire [3:0]p;
    wire c0,c1,c2,c3,s1;
 FA fa1(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.propagate(p[0]),.carry(c0));
 FA fa2(.a(a[1]),.b(b[1]),.c(c0),.sum(sum[1]),.propagate(p[1]),.carry(c1));
 FA fa3(.a(a[2]),.b(b[2]),.c(c1),.sum(sum[2]),.propagate(p[2]),.carry(c2));
 FA fa4(.a(a[3]),.b(b[3]),.c(c2),.sum(sum[3]),.propagate(p[3]),.carry(c3));
 and a1(s1,p[0],p[1],p[2],p[3]);
 MUX_2to1 mux(.d1(c3),.d2(cin),.s(s1),.y(cout));
 assign result={cout,sum};
endmodule
