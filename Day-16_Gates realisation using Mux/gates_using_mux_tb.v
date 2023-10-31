`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 19:57:50
// Design Name: 
// Module Name: gates_using_mux_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gates_using_mux_tb();
reg a,b;
wire and_op,or_op,nand_op,nor_op,xor_op,xnor_op;
gates_using_mux dut(.a(a),.b(b),.and_op(and_op),.or_op(or_op),.nand_op(nand_op),.nor_op(nor_op),.xor_op(xor_op),.xnor_op(xnor_op));
initial
begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish();
end
endmodule
