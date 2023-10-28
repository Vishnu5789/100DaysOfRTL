`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2023 20:36:29
// Design Name: 
// Module Name: testbench
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


module testbench();
reg [1:0]d;reg s;
wire y;integer i;
mux dut(.d(d),.s(s),.y(y));
initial
begin
for(i=0;i<10;i=i+1)
begin 
d=$random;
s=$random;
#10;
end
$finish();
end
endmodule
