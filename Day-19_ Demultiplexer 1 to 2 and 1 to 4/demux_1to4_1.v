`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 15:43:25
// Design Name: 
// Module Name: Demux_1to4
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


module demux_1to4_1(
    input a,
    input [1:0] s,
    output reg [3:0]y
    );
    always@(*) 
    begin
    case(s) 
    2'b00: begin y[0]=a;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;end
    2'b01: begin y[0]=1'b0;y[1]=a;y[2]=1'b0;y[3]=1'b0;end 
    2'b10: begin y[0]=1'b0;y[1]=1'b0;y[2]=a;y[3]=1'b0;end 
    2'b11: begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=a;end
    default:y=4'bXXXX;
    endcase
    end
endmodule
