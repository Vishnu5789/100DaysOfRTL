`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 19:31:14
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
reg t_a,t_b,t_c;
wire behav_sum,behav_carry;
wire data_sum,data_carry;
wire gate_sum,gate_carry;
FA_dataflow dut(.a(t_a),.b(t_b),.c(t_c),.sum(data_sum),.carry(data_carry));
FA_behavioural dut1(.a(t_a),.b(t_b),.c(t_c),.sum(behav_sum),.carry(behav_carry));
FA_gatelevel du2(.a(t_a),.b(t_b),.c(t_c),.SUM(gate_sum),.CARRY(gate_carry));
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
