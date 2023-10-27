`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2023 12:51:55
// Design Name: 
// Module Name: testbench
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


module testbench();
reg [3:0]a,b; 
wire [7:0]p;
integer i;
Binary_Multiplier4Bit dut1(.a(a),.b(b),.p(p)); 
initial 
begin
for(i=0;i<10;i=i+1)
begin
a=$random;
b=$random;
#10;
end
$finish();
end
endmodule
