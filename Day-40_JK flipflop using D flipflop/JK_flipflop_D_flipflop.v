`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 20:38:07
// Design Name: 
// Module Name: JK_flipflop_D_flipflop
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


module JK_flipflop_D_flipflop(
input J,K,clk,rst,
    output q,qbar
    );
    wire w1,w2,w3;
    and a1(w1,qbar,J);
    and a2(w2,q,~K);
    or a4(w3,w1,w2);
    d_flipflop D_FF(w3,clk,rst,q,qbar);
endmodule
module d_flipflop(
input d,clk,rst,
output reg q,qbar);
always@(posedge clk)
begin
if(rst)
begin
q=0;
qbar=1;
end
else
begin
q=d;
qbar=~q; 
end
end
endmodule
