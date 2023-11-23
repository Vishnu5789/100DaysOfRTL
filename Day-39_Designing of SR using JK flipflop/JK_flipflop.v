`timescale 1ns / 1ps


module JK_flipflop(
    input j,
    input k,
    input clk,
    output reg q,
    output qn_bar
    );
   always @(posedge clk)
    begin
    case({j,k}) 
    2'b00:q=q;
    2'b01:q=0;
    2'b10:q=1;
    2'b11:q=~q;
    endcase
    end
    assign qn_bar=~q;
endmodule
