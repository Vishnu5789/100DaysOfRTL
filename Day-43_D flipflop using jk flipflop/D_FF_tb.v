`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 20:54:12
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb();
reg d,clk,rst;wire qn,qn_bar; 
D_using_JK dut(.d(d),.rst(rst),.clk(clk),.qn_bar(qn_bar),.qn(qn));
initial clk=0; 
always #2 clk=~clk; 
initial begin 
rst=0;#10; 
rst=1;d=0; #10;
d=1; #10; $finish();
end
endmodule
