`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 21:01:08
// Design Name: 
// Module Name: mux_4to1_tb2
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


module mux_4to1_tb2();
reg [3:0]d;reg [1:0]s;
wire y;integer i;
mux_2 dut(.d(d),.s(s),.y(y));
initial
begin
for(i=0;i<10;i=i+1)
begin
d=$random;
s=$random;
#10;
end
$finish();
end
endmodule
