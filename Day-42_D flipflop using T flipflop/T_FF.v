`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 20:31:29
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
    begin 
    case(t) 
    0:qn=qn;
    1:qn=~qn;
    endcase
    end
    end
    assign qn_bar=~qn;
endmodule
