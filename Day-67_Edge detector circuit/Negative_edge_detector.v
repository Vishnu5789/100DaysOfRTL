`timescale 1ns / 1ps
module Negative_edge_detector(input in,
    input clk,
    output out); 
    wire w1;
    d_ff dff1(.d(in),.clk(clk),.qn(w1),.rst(1'b1));
    assign out= w1 & ~in;
endmodule 

