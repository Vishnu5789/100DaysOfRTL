`timescale 1ns / 1ps
module Mod_3Counter(
    input rst,
    input clk,
    output [1:0] count
    );
    wire w1=count[0] ^ count[1]; 
    wire w2=~count[1]; 
    T_FF T1(.t(w2),.rst(rst),.clk(clk),.qn(count[0])); 
    T_FF T2(.t(w1),.rst(rst),.clk(clk),.qn(count[1])); 
endmodule
module T_FF(t,clk,rst,qn,qn_bar);
input t,clk,rst; output reg qn;output qn_bar; 
always@(posedge clk) 
begin 
if(!rst) 
qn=0;
else 
begin
case(t) 
0:qn=qn;
1:qn=~qn;
endcase 
end
end
assign qn_bar=~qn;
endmodule

