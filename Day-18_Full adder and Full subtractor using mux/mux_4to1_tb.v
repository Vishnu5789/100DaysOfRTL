`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 18:17:27
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb(); 
reg a,b,c,d;
reg [1:0]s;
wire y;integer i;
mux_4to1 dut1(.a(a),.b(b),.c(c),.d(d),.s(s),.y(y));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin
a=$random;
b=$random;
c=$random;
d=$random;
s=$random;

#10;
end
$finish();
end
endmodule
