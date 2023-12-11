`timescale 1ns / 1ps
module testbench_for_2div();
reg clk;wire op; 
Freq_dividerBy2 dut(.clk(clk),.op(op)); 
initial clk=0;
always #10 clk=~clk;
endmodule
