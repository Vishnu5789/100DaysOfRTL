`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 19:32:03
// Design Name: 
// Module Name: D_using_SR_flipflop
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


module D_using_SR_flipflop(
    input d,
    input clk,
    input rst,
    output qn,
    output qn_bar
    );
    
    SR_FF SRFF(d,~d,clk,rst,qn,qn_bar); 
endmodule
module SR_FF(s,r,clk,rst,qn,qn_bar); 
input s,r,clk,rst; 
output reg qn;output qn_bar;
always@(posedge clk) 
begin 
if(!rst) 
qn=0;
else 
begin
case({s,r}) 
2'b00:qn=0;

2'b01:qn=0;
2'b10:qn=1;
2'b11:qn=2'bXX;
endcase
end
end
assign qn_bar=~qn;
endmodule
