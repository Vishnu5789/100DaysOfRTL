`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 21:34:42
// Design Name: 
// Module Name: HS_dataflow
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


module HS_dataflow(
    input a,
    input b,
    output differ,
    output barrow
    );
    assign differ=a ^b; 
    assign barrow=~a&b; 
endmodule
