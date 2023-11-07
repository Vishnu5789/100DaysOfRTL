`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2023 20:01:28
// Design Name: 
// Module Name: binary_to_gray_tb
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


module binary_to_gray_tb();
reg [3:0]binary;wire [3:0]gray;
binary_to_gray_encoder dut1(.binary(binary),.gray(gray));
initial 
begin 
binary=4'b0000;#10;
binary=4'b0001;#10;
binary=4'b0010;#10;
binary=4'b0011;#10;
binary=4'b0100;#10;
binary=4'b0101;#10;
binary=4'b0110;#10;
binary=4'b0111;#10;
binary=4'b1000;#10;
binary=4'b1001;#10;
binary=4'b1010;#10;
binary=4'b1011;#10;
binary=4'b1100;#10;
binary=4'b1101;#10;
binary=4'b1110;#10;
binary=4'b1111;#10;
$finish();
end
endmodule
