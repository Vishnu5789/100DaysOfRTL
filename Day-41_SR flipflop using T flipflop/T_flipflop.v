`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 19:34:19
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
    input t,
    input clk,
    input rst,
    output reg qn,
    output qn_bar
    );
    always @(posedge clk) 
    begin 
    if(!rst) 
    begin 
        qn=0;
    end
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
