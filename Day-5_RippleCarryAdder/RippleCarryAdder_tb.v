`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 21:38:12
// Design Name: 
// Module Name: RippleCarryAdder_tb
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


module RippleCarryAdder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
RippleCarryAdder dut(.a(a),.b(b),.cin(cin),.s(s),.c(cout));
initial 
begin
a=4'b0001;b=4'b0010; cin=0;
#100
a=4'b0100;b=4'b0101; cin=1;
#100
a=4'b0111;b=4'b1000; cin=0;
#100
a=4'b1001;b=4'b1010; cin=1;
#100
a=4'b1101;b=4'b1010; cin=0;
#100
$finish();
end
endmodule
