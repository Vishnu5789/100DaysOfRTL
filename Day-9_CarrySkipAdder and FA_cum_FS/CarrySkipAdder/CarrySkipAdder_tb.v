`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 10:17:33
// Design Name: 
// Module Name: CarrySkipAdder_tb
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


module CarrySkipAdder_tb();
reg [3:0]a,b; 
reg cin;
wire [3:0]sum; 
wire cout;
wire [4:0]result;
integer i;
CarrySkipAdder dut1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout),.result(result));
initial 
begin 
for(i=0;i<10;i=i+1)
begin 
a=$random;
b=$random;
cin=$random;
#10;
end
$finish();
end
endmodule
