`timescale 1ns / 1ps
module testbench();
reg clk,rst; reg [3:0] req; wire [3:0] grant; 
Round_Robin_Arbiter dut(.clk(clk),.rst(rst),.req(req),.grant(grant)); 
initial clk=0; always #5 clk=~clk; 
initial begin 
rst=1'b0; req=4'b1001; #10; 
rst=1'b1; req=4'b1010; #10; 
req=4'b0010; #10; req=4'b0001; #10; req=4'b1111; #10; req=4'b1101; #10; $finish();
end
endmodule
