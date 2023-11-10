`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 19:39:22
// Design Name: 
// Module Name: BDC_to_7Segment
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


module BDC_to_7Segment(
    input [3:0] bcd,
    output reg [6:0] segment
    );
    always@(*) 
    begin 
    case(bcd) 
    0:segment=7'b1111110;
    1:segment=7'b0110000;
    2:segment=7'b1101101;
    3:segment=7'b1111001;
    4:segment=7'b0110011;
    5:segment=7'b1011011;
    6:segment=7'b1011111;
    7:segment=7'b1110000;
    8:segment=7'b1111111;
    9:segment=7'b1111011;
    default:segment=7'b0000000;
    endcase
    end
 
endmodule
