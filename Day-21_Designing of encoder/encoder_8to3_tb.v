`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:46:42
// Design Name: 
// Module Name: encoder_8to3_tb
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


module encoder_8to3_tb(

    );
    reg [7:0]a;
wire y0,y1,y2;integer i;
encoder_8to3 dut(.a(a),.y0(y0),.y1(y1),.y2(y2));
initial 
begin 
for(i=0;i<10;i=i+1) 
begin 
a=$random;
#10;
end
$finish();
end
endmodule
