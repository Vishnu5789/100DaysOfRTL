`timescale 1ns / 1ps
module LFSR(input rst,clk,output reg [3:0]op);
reg w1; 
always@(posedge clk) 
begin 
if(!rst)
op<=4'b1111;
else 
begin 
op<={op[2:0],(op[3] ^ op[2])};
end
end
endmodule
