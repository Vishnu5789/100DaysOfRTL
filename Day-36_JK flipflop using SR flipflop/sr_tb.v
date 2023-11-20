`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 19:09:13
// Design Name: 
// Module Name: sr_tb
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


module sr_tb();
reg s,r,clk;wire qn,qn_bar;
SR_fliflop dut(.s(s),.r(r),.clk(clk),.qn(qn),.qn_bar(qn_bar));
initial clk=0;
always #2 clk=~clk;
initial 
begin 
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
$finish();
end

endmodule
