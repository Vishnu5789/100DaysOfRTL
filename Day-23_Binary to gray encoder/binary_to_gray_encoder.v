`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2023 19:57:25
// Design Name: 
// Module Name: binary_to_gray_encoder
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


module binary_to_gray_encoder(
    input [3:0] binary,
    output [3:0] gray
    );
    assign gray[0]=binary[0]^binary[1];
    assign gray[1]=binary[1]^binary[2];
    assign gray[2]=binary[2]^binary[3];
    assign gray[3]=binary[3];
endmodule
