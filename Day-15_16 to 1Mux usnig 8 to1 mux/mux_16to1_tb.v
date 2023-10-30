`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 18:31:04
// Design Name: 
// Module Name: mux_16to1_tb
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


module mux_16to1_tb();
reg [15:0]d;
reg [3:0]s;
wire y;integer i;
mux_16to1_using_8to1 dut(.d(d),.s(s),.y(y)); 
initial 
begin 
for(i=0;i<10;i=i+1) 
begin 
d=$random;
s=$random;#10;
end 
$finish();
end
endmodule
