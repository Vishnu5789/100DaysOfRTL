`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 19:53:03
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb();
reg [2:0]d; wire [7:0]y;
decoder_3to8 dut(.d(d),.y(y));
initial 
begin 
d=3'b000; #10;
d=3'b001; #10;
d=3'b010; #10;
d=3'b011; #10;
d=3'b100; #10;
d=3'b101; #10;
d=3'b110; #10;
d=3'b111; #10;
$finish();
end
endmodule
