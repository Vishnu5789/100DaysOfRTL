`timescale 1ns / 1ps
module tb_for_divider();
reg clk,rst; wire op;
Freq_divider_by3 dut(.clk(clk),.rst(rst),.op(op));
initial clk=0; 
always #5 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #200; $finish();
end
endmodule
