`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 19:41:50
// Design Name: 
// Module Name: D_ff_tb
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


module D_ff_tb();
reg d,clk,rst;wire qn,qn_bar;
D_using_SR_flipflop dut(.d(d),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
initial clk=0;
always #2 clk=~clk;
initial 
begin 
rst=0; #10; rst=1; d=0; #10; d=1; #10; $finish();
end
endmodule
