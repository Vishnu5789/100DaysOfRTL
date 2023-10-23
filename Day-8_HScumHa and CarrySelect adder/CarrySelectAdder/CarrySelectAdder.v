`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 15:11:07
// Design Name: 
// Module Name: CarrySelectAdder
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


module CarrySelectAdder(input [3:0]a,b,input cin,output [3:0]sum,output cout,output [4:0]result);
wire [3:0]s0,s1;
wire c0,c1;
RCA dut1(.a(a),.b(b),.cin(0),.sum(s0),.cout(c0));
RCA dut2(.a(a),.b(b),.cin(1),.sum(s1),.cout(c1));
MUX2_1 dut3(.a(s1[0]),.b(s0[0]),.s(cin),.y(sum[0]));
MUX2_1 dut4(.a(s1[1]),.b(s0[1]),.s(cin),.y(sum[1]));
MUX2_1 dut5(.a(s1[2]),.b(s0[2]),.s(cin),.y(sum[2]));
MUX2_1 dut6(.a(s1[3]),.b(s0[3]),.s(cin),.y(sum[3]));
MUX2_1 dut7(.a(c0),.b(c1),.s(cin),.y(cout));
assign result={cout,sum};
endmodule
