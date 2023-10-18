`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 18:46:15
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
wire sum,carry;
FA_using_HAs dut(.a(t_a),.b(t_b),.cin(t_c),.sum(sum),.carry(carry));
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
