`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 14:36:41
// Design Name: 
// Module Name: CLA
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


module CLA(input [3:0]a,b,input cin,output [3:0]sum,output cout
    
    );
    wire [3:0]carry;
    CarryGenerator dut(.a(a),.b(b),.cin(cin),.c(carry));
    FA fa1(.a(a[0]),.b(b[0]),.c(cin),.s(sum[0]));
    FA fa2(.a(a[1]),.b(b[1]),.c(carry[0]),.s(sum[1]));
    FA fa3(.a(a[2]),.b(b[2]),.c(carry[1]),.s(sum[2]));
    FA fa4(.a(a[3]),.b(b[3]),.c(carry[2]),.s(sum[3]));
    assign cout=carry[3];
endmodule
