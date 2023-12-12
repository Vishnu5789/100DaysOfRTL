`timescale 1ns / 1ps
module tb_for_4();
reg clk,rst; wire op;
Freq_Divider_by4 dut(.rst(rst),.clk(clk),.op(op));
initial clk=0; 
always #5 clk=~clk; 
initial begin 
rst=0; #10; rst=1; #10;
end
endmodule
