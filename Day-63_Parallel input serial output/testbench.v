`timescale 1ns / 1ps
module testbench();
reg clk,rst,shiftOrLoad; reg [3:0]in ;wire out; 
PISO dut(.rst(rst),.clk(clk),.in(in),.out(out),.shiftOrLoad(shiftOrLoad)); 
initial clk=1; 
always #5 clk=~clk; 
initial begin 
rst=1;shiftOrLoad=0;  in=4'b1001; #100;shiftOrLoad=1; #40; $finish();
end
endmodule
