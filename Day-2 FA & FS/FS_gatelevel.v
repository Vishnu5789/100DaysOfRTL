`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:14:16
// Design Name: 
// Module Name: FS_gatelevel
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


module FS_gatelevel(input a,b,c,
output differ,barrow);
wire w1,w2,w3,w4,w5,w6,w7;
xor t1(w1,a,b); 
xor t2(differ,w1,c); 
not t3(w3,w1); 
and t4(w5,w3,c);
not t5(w6,a);
and t6(w7,w6,b); 
or t7(barrow,w7,w5);
endmodule
