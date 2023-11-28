`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 19:30:58
// Design Name: 
// Module Name: T_using_D_FF
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


module T_using_D_FF(
    input t,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
    wire w1;
    assign w1=t ^ qn;
    D_FF DFF(.d(w1),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
    
endmodule
