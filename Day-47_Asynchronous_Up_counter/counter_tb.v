`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 19:55:47
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
reg rst,clk;wire [3:0] count; 
Up_Counter dut(.rst(rst),.clk(clk),.count(count));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; rst=1; 
end
endmodule
