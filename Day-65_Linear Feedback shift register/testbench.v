`timescale 1ns / 1ps
module testbench(); 
reg clk,rst; wire [3:0] op; 
LFSR dut(.clk(clk),.rst(rst),.op(op)); 
initial clk=1; 
always #5 clk=~clk; 
initial begin 
rst=0; #10; rst=1;
end
endmodule
