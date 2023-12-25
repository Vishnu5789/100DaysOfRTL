`timescale 1ns / 1ps
module testbench();
reg data,clk,rst; wire op; 
Melay_machine_sequence_detector dut(.clk(clk),.rst(rst),.op(op),.data(data)); 
initial clk=0; 
always #5 clk=~clk; 
initial begin 
rst=0; data=0; #10; rst=1; data=1; #10; 
data=0; #10; data=0; #10; data=1; #10; data=0; #10;data=0; #10; data=1; #10; data=1; #10; $finish(); 
end
endmodule
