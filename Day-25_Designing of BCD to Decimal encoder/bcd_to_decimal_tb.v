`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 21:10:45
// Design Name: 
// Module Name: bcd_to_decimal_tb
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


module bcd_to_decimal_tb(

    );
     wire [9:0]y;
    reg [3:0]a;
    bcdtodec a1(a,y);
    initial
    begin
    a=4'b0000;
    #10 a=4'b0001;
    #10 a=4'b0010;
    #10 a=4'b0011;
    #10 a=4'b0100;
    #10 a=4'b0101;
    #10 a=4'b0110;
    #10 a=4'b0111;
    #10 a=4'b1000;
    #10 a=4'b1001;
    
    end
    
endmodule
