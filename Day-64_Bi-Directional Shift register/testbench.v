`timescale 1ns / 1ps
module testbench();
reg [3:0]in;reg clk,RightOrLeft; wire [3:0]right_op,left_op;
BiDir dut(.in(in),.clk(clk),.left_op(left_op),.right_op(right_op),.RightOrLeft(RightOrLeft)); 
initial clk=1; 
always #5 clk=~clk; 
initial begin 
RightOrLeft=0; in=4'b1101; #20; 
RightOrLeft=1; in=4'b1101; #20; $finish();
end
endmodule
