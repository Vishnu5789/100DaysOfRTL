`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 11:26:22
// Design Name: 
// Module Name: HA_tb
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


module HA_tb();
reg t_a,t_b;
wire SUM,CARRY,diff,barrow;
HA_gatelevel dut(.a(t_a),.b(t_b),.sum(SUM),.carry(CARRY));
HS_dataflow dut1(.a(t_a),.b(t_b),.differ(diff),.barrow(barrow));
initial
begin 
t_a=0;t_b=0; #10;
t_a=0;t_b=1; #10;
t_a=1;t_b=0; #10;
t_a=1;t_b=1; #10;
$finish();
end
endmodule
