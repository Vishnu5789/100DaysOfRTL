`timescale 1ns / 1ps
module SIPO(in,out,rst,clk);
input in,rst,clk; output [3:0]out; 
dflipflop dff1(in,clk,rst,out[0]);
dflipflop dff2(out[0],clk,rst,out[1]);
dflipflop dff3(out[1],clk,rst,out[2]);
dflipflop dff4(out[2],clk,rst,out[3]);
endmodule
module dflipflop(d,clk,rst,qn,qn_bar);
input d,clk,rst;output qn,qn_bar; 
reg qn; 
always@(posedge clk) 
begin 
if(!rst) 
qn=1'b0; 
else 
begin 
qn=d;
end
end
assign qn_bar=~qn;
endmodule
