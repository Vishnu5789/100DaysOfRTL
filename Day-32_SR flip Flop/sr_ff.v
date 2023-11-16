`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 16:51:33
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s,
    input r,
    input clk,
    output reg q,
    output q_bar
    );
    always @(posedge clk) 
    begin 
    case({s,r}) 
    2'b00:q=q;
    2'b01:q=0;
    2'b10:q=1;
    2'b11:q=2'bXX;
    default:q=q;
    endcase
    
    end
    assign q_bar=~q;
endmodule
