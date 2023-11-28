`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 19:33:35
// Design Name: 
// Module Name: T_FF_tb
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


module T_FF_tb();
reg t,clk,rst; wire qn,qn_bar;
T_using_D_FF dut(.t(t),.clk(clk),.rst(rst),.qn(qn),.qn_bar(qn_bar));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0;#10; 
rst=1;t=0;#10; 
t=1; #20; $finish();
end
endmodule
