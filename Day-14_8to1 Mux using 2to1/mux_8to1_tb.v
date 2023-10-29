`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 19:10:12
// Design Name: 
// Module Name: mux_8to1_tb
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


module mux_8to1_tb();
reg [7:0]d;
reg [2:0]s;
wire y;integer i;
mux_8to1_using_2t01 dut1(.d(d),.s(s),.y(y));
//mux_8to1 dut2(.d(d1),.s(s1),.y(y1));
initial 
begin
for(i=0;i<20;i=i+1)
begin
d=$random;s=$random;
#10;
end
$finish();
end
endmodule
