`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 20:28:04
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
    input [3:0] d,
    input [1:0] s,
    output reg y
    );
    always@(*)
    begin
    case(s)
   2'b00:y=d[0];
   2'b01:y=d[1];
   2'b10:y=d[2];
   2'b11:y=d[3];
    endcase
    end
endmodule
