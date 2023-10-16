`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 21:22:32
// Design Name: 
// Module Name: HA_dataflow
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


module HA_behavioural(
    input a,
    input b,
    output reg sum,
    output reg carry
    );
    always @(*)
    begin
    sum=a^b;
    carry=a&b;
    end
    
endmodule
