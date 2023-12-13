`timescale 1ns / 1ps
module testbench();
reg clk,reset;wire clk_1p5;
Frq_divider dut(clk,reset,clk_1p5);
initial clk=0; always #5 clk=~clk; 
initial begin 
reset=1; #10;reset=0; #10;
end
endmodule
