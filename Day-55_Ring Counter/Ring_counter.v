`timescale 1ns / 1ps
module Ring_counter(
    input rst,
    input clk,
    output reg [3:0] op
    );
    always@(posedge clk)
    begin 
    if(!rst) 
    op<=4'b1000;
    else
    begin 
    op[3]<=op[0]; 
    op[2]<=op[3];
    op[1]<=op[2];
    op[0]<=op[1];
    end
    end
endmodule
