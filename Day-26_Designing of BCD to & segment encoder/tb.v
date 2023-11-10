`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 19:47:06
// Design Name: 
// Module Name: tb
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


module tb();
reg [3:0]bcd;wire [6:0]segment;
integer i;
BDC_to_7Segment dut(.bcd(bcd),.segment(segment));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin 
bcd=$random;
#10;
end
$finish();
end
endmodule
