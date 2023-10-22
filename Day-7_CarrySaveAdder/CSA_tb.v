`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 23:12:29
// Design Name: 
// Module Name: CSA_tb
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


module CSA_tb();
reg [3:0] a,b,c; 
wire [3:0]sum;
wire [1:0]cout; 
wire [5:0]res;
CarrySaveAdder dut1(.a(a),.b(b),.c(c),.sum(sum),.cout(cout),.result(res));
initial 
begin 
a=4'b1101;b=4'b1001;c=4'b0100; #10;
a=4'b1111;b=4'b1011;c=4'b0110; #10;
a=4'b1101;b=4'b1101;c=4'b1100; #10;
a=4'b1011;b=4'b0100;c=4'b1000; #10;
a=4'b1111;b=4'b1111;c=4'b1111; #10;
$finish();
end
endmodule
