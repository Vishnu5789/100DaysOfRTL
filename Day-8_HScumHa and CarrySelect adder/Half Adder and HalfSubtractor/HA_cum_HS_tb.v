`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 12:12:04
// Design Name: 
// Module Name: HA_cum_HS_tb
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


module HA_cum_HS_tb();
reg a,b,mode;
wire sum,carry,differ,barrow;
HA_cum_HS dut(.a(a),.b(b),.mode(mode),.sum(sum),.carry(carry),.differ(differ),.barrow(barrow));
initial 
begin
a=0;b=0;mode=0;#10;
a=0;b=1;mode=0;#10;
a=1;b=0;mode=0;#10;
a=1;b=1;mode=0;#10;
a=0;b=0;mode=1;#10;
a=0;b=1;mode=1;#10;
a=1;b=0;mode=1;#10;
a=1;b=1;mode=1;#10;
$finish();
end
endmodule
