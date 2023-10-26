`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2023 19:57:49
// Design Name: 
// Module Name: Multiplier_tb
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


module Multiplier_tb(

    );
    reg [1:0]a,b;
    wire [3:0]product;
    integer i;
    Binary_2bitMultiplier dut1(.a(a),.b(b),.product(product)); 
    initial
    begin 
    a=2'b11;
    b=2'b11; #10;
    for(i=0;i<10;i=i+1)
    begin 
    a=$random;
    b=$random;
    #10;
    end 
    $finish();
    end
endmodule
