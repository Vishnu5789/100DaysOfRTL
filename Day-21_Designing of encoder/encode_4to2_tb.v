`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:39:04
// Design Name: 
// Module Name: encode_4to2_tb
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


module encode_4to2_tb();
reg [3:0]a;
wire [1:0]y;integer i;
encoder_4to2 dut(.a(a),.y(y));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin 
a=$random;
#10;
end
$finish();
end
endmodule
