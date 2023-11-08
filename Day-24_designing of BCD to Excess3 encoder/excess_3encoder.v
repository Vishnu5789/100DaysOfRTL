`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2023 19:22:36
// Design Name: 
// Module Name: excess_3encoder
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


module excess_3encoder(
    input [3:0] binary,
    output [3:0] excess3
    );
    assign excess3[0]=~binary[0];
    assign excess3[1]=binary[1]&binary[0] | (~binary[1]&~binary[0]);
    assign excess3[2]=~binary[2]&binary[1] | ~binary[2]&binary[0] |binary[2]&~binary[1] &~binary[0];
    assign excess3[3]=binary[3] |binary[2]&binary[1] |binary[2]&binary[0];
endmodule
