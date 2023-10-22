`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 22:47:14
// Design Name: 
// Module Name: CarrySaveAdder
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


module CarrySaveAdder(input [3:0]a,b,c, output [3:0]sum,output [1:0]cout,output [5:0]result

    );
    wire [3:0]su,ca;
    wire [3:0] carry;
    FA fa1(.a(a[0]),.b(b[0]),.c(c[0]),.sum(su[0]),.carry(ca[0]));
    FA fa2(.a(a[1]),.b(b[1]),.c(c[1]),.sum(su[1]),.carry(ca[1]));
    FA fa3(.a(a[2]),.b(b[2]),.c(c[2]),.sum(su[2]),.carry(ca[2]));
    FA fa4(.a(a[3]),.b(b[3]),.c(c[3]),.sum(su[3]),.carry(ca[3]));
    assign sum[0]=su[0];
    FA fa5(.a(su[1]),.b(ca[0]),.c(0),.sum(sum[1]),.carry(carry[0]));
    FA fa6(.a(su[2]),.b(ca[1]),.c(carry[0]),.sum(sum[2]),.carry(carry[1]));
    FA fa7(.a(su[3]),.b(ca[2]),.c(carry[1]),.sum(sum[3]),.carry(carry[2]));
    FA fa8(.a(ca[3]),.b(carry[2]),.c(0),.sum(cout[0]),.carry(cout[1]));
    assign result = {cout,sum};
    
    
endmodule
