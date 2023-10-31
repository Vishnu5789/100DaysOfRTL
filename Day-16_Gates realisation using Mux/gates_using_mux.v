`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 19:51:23
// Design Name: 
// Module Name: gates_using_mux
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


module gates_using_mux(input a,
    input b,
    output and_op,or_op,nand_op,nor_op,xor_op,xnor_op
    );
    mux_2to1 and_gate(.s(a),.y(and_op),.a(0),.b(b));
    mux_2to1 or_gate(.s(a),.y(or_op),.a(b),.b(1));
    mux_2to1 nand_gate(.s(a),.y(nand_op),.a(1),.b(~b));
    mux_2to1 nor_gate(.s(a),.y(nor_op),.b(0),.a(~b));
    mux_2to1 xor_gate(.s(a),.y(xor_op),.a(b),.b(~b));
    mux_2to1 xnor_gate(.s(a),.y(xnor_op),.a(~b),.b(b));
endmodule
