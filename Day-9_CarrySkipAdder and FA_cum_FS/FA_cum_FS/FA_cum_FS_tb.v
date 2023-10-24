`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 09:34:02
// Design Name: 
// Module Name: FA_cum_FS_tb
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


module FA_cum_FS_tb(); 
reg t_a,t_b,t_c,mode; 
wire sum,carry,differ,barrow;
FA_cum_FS dut(.a(t_a),.b(t_b),.c(t_c),.mode(mode),.sum(sum),.carry(carry),.differ(differ),.barrow(barrow));
initial 
begin 
t_a=0;t_b=0;t_c=0;mode=0; #10;
t_a=0;t_b=0;t_c=1;mode=0;#10;
t_a=0;t_b=1;t_c=0;mode=0; #10;
t_a=0;t_b=1;t_c=1;mode=0; #10;
t_a=1;t_b=0;t_c=0;mode=0; #10;
t_a=1;t_b=0;t_c=1;mode=0; #10;
t_a=1;t_b=1;t_c=0;mode=0; #10;
t_a=1;t_b=1;t_c=1;mode=0; #10;
t_a=0;t_b=0;t_c=0;mode=1; #10;
t_a=0;t_b=0;t_c=1;mode=1;#10;
t_a=0;t_b=1;t_c=0;mode=1; #10;
t_a=0;t_b=1;t_c=1;mode=1; #10;
t_a=1;t_b=0;t_c=0;mode=1; #10;
t_a=1;t_b=0;t_c=1;mode=1; #10;
t_a=1;t_b=1;t_c=0;mode=1; #10;
t_a=1;t_b=1;t_c=1;mode=1; #10;
$finish();
end
endmodule
