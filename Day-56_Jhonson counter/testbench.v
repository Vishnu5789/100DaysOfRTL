`timescale 1ns / 1ps
module testbench();
reg clk,rst;wire [3:0]op; 
Jhonson_counter dut(.clk(clk),.rst(rst),.op(op));
initial clk=0; always #2 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #100; $finish();
end
endmodule
