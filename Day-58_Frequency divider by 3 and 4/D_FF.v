`timescale 1ns / 1ps
module D_FF(
    input d,
    input rst,
    input clk,
    output reg qn,
    output qn_bar
    ); 
    always@(negedge clk) 
    begin 
    if(!rst) 
    qn=0;
    else 
    begin 
    case(d) 
    0:qn=0; 1:qn=1;
    endcase
    end
    end
    assign qn_bar=~qn;
endmodule
