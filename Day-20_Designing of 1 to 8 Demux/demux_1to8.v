`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2023 19:41:32
// Design Name: 
// Module Name: demux_1to8
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


module demux_1to8(
    input a,
    input [2:0] s,
    output reg [7:0] y
    );
    always@(*)
    begin
    case(s)
    3'b000:begin y[0]=a;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;y[4]=1'b0;y[5]=1'b0;y[6]=1'b0;y[7]=1'b0; end
    3'b001:begin y[0]=1'b0;y[1]=a;y[2]=1'b0;y[3]=1'b0;y[4]=1'b0;y[5]=1'b0;y[6]=1'b0;y[7]=1'b0; end
    3'b010:begin y[0]=1'b0;y[1]=1'b0;y[2]=a;y[3]=1'b0;y[4]=1'b0;y[5]=1'b0;y[6]=1'b0;y[7]=1'b0; end
    3'b011:begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=a;y[4]=1'b0;y[5]=1'b0;y[6]=1'b0;y[7]=1'b0; end
    3'b100:begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;y[4]=a;y[5]=1'b0;y[6]=1'b0;y[7]=1'b0; end
    3'b101:begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;y[4]=1'b0;y[5]=a;y[6]=1'b0;y[7]=1'b0; end
    3'b110:begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;y[4]=1'b0;y[5]=1'b0;y[6]=a;y[7]=1'b0; end
    3'b111:begin y[0]=1'b0;y[1]=1'b0;y[2]=1'b0;y[3]=1'b0;y[4]=1'b0;y[5]=1'b0;y[6]=1'b0;y[7]=a; end
    endcase
    end
endmodule
