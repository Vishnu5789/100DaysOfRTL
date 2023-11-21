`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:56:32
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(
input s,
    input r,clk,rst,
    output reg qn,
    output qn_bar
    );
    always@(posedge clk)
    begin 
    if(!rst) 
    begin 
    qn=0;
    end
    else 
    begin
    case({s,r}) 
    2'b00:qn=qn;
    2'b01:qn=1'b0;
    2'b10:qn=1'b1;
    2'b11:qn=1'bX;
    endcase
    end
    end
    assign qn_bar=~qn;
    
endmodule
