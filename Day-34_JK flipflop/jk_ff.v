`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 19:32:35
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
    input clk,
    output reg q,
    output q_bar
    );
    always @(posedge clk)
    begin
    case({j,k}) 
    2'b00:q=q;
    2'b01:q=0;
    2'b10:q=1;
    2'b11:q=~q;
    endcase
    
    end
    assign q_bar=~q;
endmodule
