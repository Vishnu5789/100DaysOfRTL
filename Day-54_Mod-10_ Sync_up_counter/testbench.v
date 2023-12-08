`timescale 1ns / 1ps
module testbench();
reg rst,clk;wire [3:0] count;
Mod_10_sync_up_counte dut(.rst(rst),.clk(clk),.count(count));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; 
rst=1; #150; $finish();
end
endmodule
