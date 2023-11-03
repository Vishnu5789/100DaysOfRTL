`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 09:38:40
// Design Name: 
// Module Name: demux_1to2_tb
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


module demux_1to2_tb();
reg a,s; 
wire [1:0]y;integer i;
demux_1to2 dut(.a(a),.s(s),.y(y));
initial
begin
for(i=0;i<10;i=i+1) 
begin
a=$random; 
s=$random;
#10;
end
$finish();
end
endmodule
