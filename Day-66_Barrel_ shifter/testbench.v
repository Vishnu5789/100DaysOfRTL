`timescale 1ns / 1ps
module testbench();
reg [3:0]in; reg [1:0]sel; wire [3:0]out;
Barrel_shift_reg dut(.sel(sel),.in(in),.out(out)); 
initial begin 
in = 4'b0110; 
sel = 2'b11; 
#10; 
sel=2'b10; 
#10;
sel=2'b01;
#10; sel=2'b00;
#10; 

$finish();
end
endmodule
