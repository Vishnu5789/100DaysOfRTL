`timescale 1ns / 1ps
module Barrel_shift_reg(
    input [1:0] sel,
    input [3:0] in,
    output [3:0] out
    );
    mux4to1 mux1(.s(sel),.y(out[3]),.a(in[3]),.b(in[0]),.c(in[1]),.d(in[2]));
    mux4to1 mux2(.s(sel),.y(out[2]),.a(in[2]),.b(in[3]),.c(in[0]),.d(in[1]));
    mux4to1 mux3(.s(sel),.y(out[1]),.a(in[1]),.b(in[2]),.c(in[3]),.d(in[0]));
    mux4to1 mux4(.s(sel),.y(out[0]),.a(in[0]),.b(in[1]),.c(in[2]),.d(in[3]));
endmodule 
module mux4to1(a,b,c,d,s,y);
input a,b,c,d;
input [1:0]s;
output reg y; 
always@(*) 
begin 
case(s) 
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
endcase
end
endmodule
