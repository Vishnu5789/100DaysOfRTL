`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 20:16:38
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input t,
    input clk,
    input rst,
    output reg qn,
    output qn_bar
    );
    always@(posedge clk) 
    begin 
    if(!rst) 
    qn=0;
    else 
    case(t) 
    0:qn=qn;
    1:qn=~qn;
    endcase
    end
    assign qn_bar=~qn;
endmodule
