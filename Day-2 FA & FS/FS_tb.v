`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:05:23
// Design Name: 
// Module Name: FS_tb
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


module FS_tb();
reg t_a,t_b,t_c;
wire behav_differ,behave_barrow;
wire data_differ,data_barrow;
wire gate_differ,gate_barrow;
FS_behavioral dut1(.a(t_a),.b(t_b),.c(t_c),.differ(behav_differ),.barrow(behave_barrow));
FS_dataflow dut2(.a(t_a),.b(t_b),.c(t_c),.differ(data_differ),.barrow(data_barrow));
FS_gatelevel dut3(.a(t_a),.b(t_b),.c(t_c),.differ(gate_differ),.barrow(gate_barrow));

initial 
begin 
t_a=0;t_b=0;t_c=0; #10;
t_a=0;t_b=0;t_c=1; #10;
t_a=0;t_b=1;t_c=0; #10;
t_a=0;t_b=1;t_c=1; #10;
t_a=1;t_b=0;t_c=0; #10;
t_a=1;t_b=0;t_c=1; #10;
t_a=1;t_b=1;t_c=0; #10;
t_a=1;t_b=1;t_c=1; #10;
$finish();
end
endmodule
