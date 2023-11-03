`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 16:00:31
// Design Name: 
// Module Name: demux_1to4_tb
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


module demux_1to4_tb(); 
reg a; reg [1:0]s;wire [3:0]y;integer i; 
demux_1to4_1 dut(.a(a),.s(s),.y(y)); 
initial 
begin 
for(i=0;i<10;i=i+1 )
begin 
a=$random;
s=$random;
#10;
end 
$finish();
end
endmodule
