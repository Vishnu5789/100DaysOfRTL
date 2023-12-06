`timescale 1ns / 1ps
module test_bench();
reg rst,clk,cntrl; wire [2:0] count; 
Sync_Up_or_Down_counter dut(.clk(clk),.rst(rst),.cntrl(cntrl),.count(count));
initial clk=0; always #2 clk=~clk; 
initial 
begin 
rst=0; #10; rst=1; cntrl=0; #50; cntrl=1; #50; $finish();
end
endmodule
