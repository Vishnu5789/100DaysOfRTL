`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 09:21:10
// Design Name: 
// Module Name: demux_1to2
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


module demux_1to2(
    input a,
    input s,
    output reg [1:0]y
    );
    always@(*) 
    begin 
    case(s) 
    1'b0:
    begin y[0]=a;y[1]=1'b0; end
    1'b1:
    begin y[1]=a; y[0]=1'b0; end
    endcase
    end
endmodule
