`timescale 1ns / 1ps


module testbench();
reg rst,clk;reg [3:0]in ;wire [3:0]out; integer i; parameter delay=10;
PIPO dut(.rst(rst),.clk(clk),.out(out),.in(in));  
initial clk=1; always #5 clk=~clk;  
initial begin 
rst=1; 
for(i=0;i<10;i=i+1) 
begin 
in=$urandom;
#delay;
end
end
endmodule
