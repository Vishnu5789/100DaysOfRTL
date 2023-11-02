`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 15:05:52
// Design Name: 
// Module Name: FA_using_mux
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


module FA_using_mux(input a,b,cin,output sum,carry);
wire [1:0]s;
assign s[0]=a;
assign s[1]=b;
mux_4to1 SUM(.y(sum),.s(s),.a(cin),.b(~cin),.c(~cin),.d(cin));
mux_4to1 CARRY(.y(carry),.s(s),.a(0),.b(cin),.c(cin),.d(1));
endmodule
