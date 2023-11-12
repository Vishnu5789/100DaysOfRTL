`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 18:25:33
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [2:0] D,
    output reg [7:0] Y
    );
    always@(*) 
    begin 
    case(D)
    3'b000:Y=8'b00000001;
    3'b001:Y=8'b00000010;
    3'b010:Y=8'b00000100;
    3'b011:Y=8'b00001000;
    3'b100:Y=8'b00010000;
    3'b101:Y=8'b00100000;
    3'b110:Y=8'b01000000;
    3'b111:Y=8'b10000000;
    endcase
    end
endmodule
