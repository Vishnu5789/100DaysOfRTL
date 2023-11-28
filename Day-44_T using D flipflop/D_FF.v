`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 19:28:09
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input d,
    input rst,
    input clk,
    output reg qn,
    output qn_bar
    );
    always@(posedge clk) 
    begin 
    if(!rst) 
    qn=0;
    else 
    begin 
    case(d) 
    0:qn=0;
    1:qn=1;
    endcase
    end
    end
    assign qn_bar=~qn;
endmodule
