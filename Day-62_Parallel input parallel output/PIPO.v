`timescale 1ns / 1ps
module PIPO(
    input [3:0] in,
    output [3:0] out,
    input rst,clk
    );
    d_ff dff1(.d(in[0]),.rst(rst),.clk(clk),.qn(out[0]));
    d_ff dff2(.d(in[1]),.rst(rst),.clk(clk),.qn(out[1]));
    d_ff dff3(.d(in[2]),.rst(rst),.clk(clk),.qn(out[2]));
    d_ff dff4(.d(in[3]),.rst(rst),.clk(clk),.qn(out[3]));
endmodule
module d_ff(rst,clk,d,qn,qn_bar);
input d,clk,rst; 
output qn,qn_bar; 
reg qn; 
always@(posedge clk) 
begin 
if(!rst)
qn=0;
else 
begin 
case(d) 
0:qn=1'b0; 
1:qn=d;
endcase
end
end
endmodule
