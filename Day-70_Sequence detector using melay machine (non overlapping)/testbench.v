`timescale 1ns / 1ps
module testbench();
reg data,rst,clk; wire op; 
melay_non_overlapping dut(.data(data),.clk(clk),.rst(rst),.op(op)); 
initial clk=0; 
always #5 clk=~clk; 
initial begin 
rst=0; data=1; #10; 
rst=1; data =1; #10; data=0; #10;  data=1; #10; data=1; #10; data=0; #10; data=1; #10; data=1; #10; data=0; #10; data=1; #10;
end
endmodule
