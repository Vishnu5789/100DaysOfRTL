`timescale 1ns / 1ps
module BiDir(
    input [3:0]in,
    output reg [3:0]right_op,
    output reg [3:0]left_op,
    input clk,
    input RightOrLeft
    );
    always@(posedge clk)
    begin 
    if(RightOrLeft) 
    begin 
    left_op<=1'b0;
    right_op[3]<=1'b0; 
    right_op[2]<=in[3];
    right_op[1]<=in[2];
    right_op[0]<=in[1];
    end
    else
    begin 
    right_op<=1'b0;
    left_op[0]<=1'b0;
    left_op[1]<=in[0];
    left_op[2]<=in[1];
    left_op[3]<=in[2];
    end
    end
endmodule
