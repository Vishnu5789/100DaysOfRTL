`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 19:21:48
// Design Name: 
// Module Name: FS_using_HSs
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


module FS_using_HSs(input a,b,bin,output differ,barrow);
wire w1,w2,w3;
HS dut1(.a(a),.b(b),.differ(w1),.barrow(w2));
HS dut2(.a(w1),.b(bin),.differ(differ),.barrow(w3));
HA dut3(.a(w2),.b(w3),.sum(barrow));
endmodule
