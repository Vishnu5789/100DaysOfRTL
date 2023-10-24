`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 09:22:37
// Design Name: 
// Module Name: FA_cum_FS
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


module FA_cum_FS(input a,b,c,mode,output reg sum,carry,differ,barrow);
always @(*) 
begin 
if(mode==0) 
begin 
sum = (a^b)^c; 
carry = (a^b)&c | a&b;differ=0;barrow=0;
end
else 
begin 
differ = (a^b)^c; 
barrow = ~(a^b)&c | ~a&b;sum=0;carry=0;
end
end
endmodule
