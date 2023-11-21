`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:59:55
// Design Name: 
// Module Name: T_tb
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


module T_tb();
reg t,clk,rst;
wire qn,qn_bar;
T_using_SR dut(.t(t),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
initial clk=0; 
always #2 clk=~clk;
initial
begin 
rst=0;#10; 
rst=1;t=0;#10; 
t=1;#20;
$finish();
end
endmodule
