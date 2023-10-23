`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 12:05:28
// Design Name: 
// Module Name: HA_cum_HS
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


module HA_cum_HS(input a,b,mode,output reg sum,differ,carry,barrow );
always @(*)
begin 
if(mode==0)
begin 
sum = a^b;carry =a&b; differ=0;barrow=0;
end
else
begin
differ = a^b; barrow=!a&b;sum=0;carry=0; 
end
end
endmodule
