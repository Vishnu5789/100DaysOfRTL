`timescale 1ns / 1ps
module testbench();
reg data,clk,rst;wire op; 
moore_machine_non_overlapping dut(.clk(clk),.rst(rst),.data(data),.op(op)); 
initial clk=0; always #5 clk=~clk; 
initial begin 
rst=0; #10; rst=1; data=1; #10; 
data=1; #10; data=0; #10; data=0; #10; data=1; #10; data=0; #10; data=0; #10; data=1; #10; $finish(); 
 
end
endmodule
