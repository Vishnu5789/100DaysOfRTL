`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 19:31:40
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
reg a,b,bin;
wire differ,barrow;
FS_using_HSs dut1(.a(a),.b(b),.bin(bin),.differ(differ),.barrow(barrow));
initial
begin 
a=0;b=0;bin=0; #10;
a=0;b=0;bin=1; #10;
a=0;b=1;bin=0; #10;
a=0;b=1;bin=1; #10;
a=1;b=0;bin=0; #10;
a=1;b=0;bin=1; #10;
a=1;b=1;bin=0; #10;
a=1;b=1;bin=1; #10;
$finish();
end
endmodule
