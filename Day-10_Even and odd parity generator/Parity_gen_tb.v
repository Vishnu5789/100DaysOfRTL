`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 07:51:09
// Design Name: 
// Module Name: Parity_gen_tb
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


module Parity_gen_tb();
reg a,b,c;
wire ep,op;
integer i;
EVEN_PARITY_GEN dut1(.a(a),.b(b),.c(c),.ep(ep)); 
ODD_PARITY_GEN dut2(.a(a),.b(b),.c(c),.op(op));
initial 
begin 
for(i=0;i<10;i=i+1)
begin 
a=$random;
b=$random;
c=$random;
#10;
end
$finish();
end
endmodule
