`timescale 1ns / 1ps
module neg_testbench();
reg in,clk;wire out; 
Negative_edge_detector dut(.in(in),.clk(clk),.out(out));
initial clk=0;
always #5 clk=~clk; 
initial begin 
in=1'b1; #20; in=1'b0; #20; in=1'b1; #20; in=1'b0; #20; $finish();
end
endmodule
