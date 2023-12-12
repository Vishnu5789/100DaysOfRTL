`timescale 1ns / 1ps
module Freq_divider_by3(
    input clk,rst,
    output op
    );
    wire [1:0]w1;
    wire w2;
    Mod_3Counter MOD3_counter(.rst(rst),.clk(clk),.count(w1));
    D_FF DFF(.clk(clk),.d(w1[1]),.rst(rst),.qn(w2));
    assign op=w1[1] | w2;
endmodule
