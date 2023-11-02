`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 14:55:07
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input a,
    input b,
    input c,
    input d,
    input [1:0]s,
    output reg y
    );
    always@(*) 
    begin 
    case(s) 
    2'b00:y=a;
    2'b01:y=b;
    2'b10:y=c;
    2'b11:y=d;
    endcase
    end
endmodule
