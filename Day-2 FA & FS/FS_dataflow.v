`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:10:30
// Design Name: 
// Module Name: FS_dataflow
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


module FS_dataflow(
    input a,
    input b,
    input c,
    output differ,
    output barrow
    );
    assign differ = (a^b)^c; 
    assign barrow = ~(a^b)&c | ~a&b;
endmodule
