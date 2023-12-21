`timescale 1ns / 1ps
module Positive_edge_detector(
    input in,
    input clk,
    output out
    ); 
    wire w1;
    d_ff dff1(.d(in),.clk(clk),.qn(w1),.rst(1'b1));
    assign out= ~w1 & in;
endmodule
module d_ff(d,clk,rst,qn);
input d,clk,rst; output reg qn;
always@(posedge clk) 
begin 
if(!rst) 
qn=1'b0; 
else
begin 
case(d) 
1'b0:qn=1'b0;
1'b1:qn=d; 
endcase
end
end
endmodule
