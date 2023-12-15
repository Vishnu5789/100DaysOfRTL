`timescale 1ns / 1ps
module testbench();
reg b,rst,clk; wire [3:0]out;integer i;
SIPO dut(b,out,rst,clk); 
initial clk=0; 
always #5 clk=~clk; 
initial begin 
rst=1;
b=1;
#10;
b=0;
#10;
b=1;
#10;
b=0;

#50;
$finish;
end
endmodule
