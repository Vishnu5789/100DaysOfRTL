`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:32:52
// Design Name: 
// Module Name: encoder_8to3
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


module encoder_8to3(
    input [7:0] a,
    output  y0,y1,y2
    );
    assign y0=a[1]|a[3]|a[5]|a[7];
    assign y1=a[2]|a[3]|a[6]|a[7];
    assign y2=a[4]|a[5]|a[6]|a[7];
endmodule
