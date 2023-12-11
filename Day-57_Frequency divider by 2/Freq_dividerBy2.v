`timescale 1ns / 1ps
module Freq_dividerBy2(
    input clk,
    output reg op
    );
    initial op=1'b0;
    always@(posedge clk)
    begin 
    op=~op;
    end
endmodule 
