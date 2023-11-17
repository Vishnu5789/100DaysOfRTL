`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 20:05:40
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d,
    input clk,
    output reg q,
    output q_bar
    );
    always@(posedge clk) 
    begin 
    if(d) 
    begin 
    q=1'b1;
    end
    else 
    begin 
    q=1'b0;
    end
    
    end
    assign q_bar=~q;
endmodule
