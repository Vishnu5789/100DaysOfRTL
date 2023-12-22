`timescale 1ns / 1ps
module testbench();
reg clk,rst; reg [3:0] req; wire [3:0] grant; 
Fixed_priority_Arbiter dut(.clk(clk),.rst(rst),.req(req),.grant(grant)); 
initial clk=0; always #5 clk=~clk; 
initial begin 
rst=0; req=4'b1000; #10; rst=1 ; req=4'b0101; #10; req=4'b0011; #10; $finish();
end
endmodule
