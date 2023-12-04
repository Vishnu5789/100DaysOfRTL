`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 20:31:54
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
reg clk,rst;wire [2:0]count; 
Sync_Up_Counter dut(rst,clk,count);
initial clk=0; always #2 clk=~clk;
initial 
begin 
rst=0; #10; rst=1;
end
endmodule
