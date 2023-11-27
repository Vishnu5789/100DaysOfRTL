`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 20:44:55
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input j,
    input k,
    input rst,
    input clk,
    output reg q,
    output qn_bar
    );
    always @(posedge clk)
    begin
    if(!rst) 
    q=0;
    else begin
    case({j,k}) 
    2'b00:q=q;
    2'b01:q=0;
    2'b10:q=1;
    2'b11:q=~q;
    endcase
    end
    
    end
    assign qn_bar=~q;
endmodule
