`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 19:49:45
// Design Name: 
// Module Name: SR_flopflop_using_t
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


module SR_flopflop_using_t(
    input s,
    input r,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
    wire w1;
    assign w1=r&qn | s&qn_bar; 
    T_flipflop TFF(.t(w1),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
    
endmodule
