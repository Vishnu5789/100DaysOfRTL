`timescale 1ns / 1ps
module down_counter_tb();
reg clk,rst; wire [2:0] count; 
Sync_down_counter dut(.rst(rst),.clk(clk),.count(count));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; 
rst=1; 
end
endmodule
