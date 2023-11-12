`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 18:22:58
// Design Name: 
// Module Name: FA_using_decoder
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


module FA_using_decoder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
    );
wire [7:0]y;wire [2:0]d;
assign d[0]=A;assign d[1]=B; assign d[2]=Cin;
Decoder decoder(.D(d),.Y(y));
or or1(Sum,y[1],y[2],y[4],y[7]);
or or2(Carry,y[3],y[5],y[6],y[7]);
endmodule
