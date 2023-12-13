`timescale 1ns / 1ps
module Frq_divider(clk,reset,clk_1p5);

input clk,reset;
output clk_1p5;
wire clk1,clk_dv3;

mux m1(~clk,clk,clk_dv3,clk1);
clk_div_3 m2(clk_dv3,clk,reset);
tff m3(clk_1p5,reset,clk1,1'b1);
endmodule


module tff(q,reset,clk,t);
output reg q;
input t,reset,clk;
initial begin q=1'b0; end
always @ (posedge clk)
if (reset)
q <= 1'b0;
else if (t)
q= ~q;
else 
q = q;
endmodule

module clk_div_3(clk_out,clk,reset);
input clk,reset;
output clk_out;
wire t1,clkb,q0,q1,q2;
assign clkb = ~clk;
assign t1 = ~q0 & ~q1;
dff m1(q0,reset,clk,t1);
dff m2(q1,reset,clk,q0);
dff m3(q2,reset,clkb,q1);
assign clk_out = q2 | q1;
endmodule

module dff(q,reset,clk,d);
output reg q;
input reset,d,clk;
initial begin q=1'b0; end
always @ (posedge clk)
if (reset)
q <= 1'b0;
else 
q<=d;
endmodule

module mux(A,B,S,Y);

    input  A,B;
    output  Y;
    input S;
assign Y = (S)? B : A;
endmodule

