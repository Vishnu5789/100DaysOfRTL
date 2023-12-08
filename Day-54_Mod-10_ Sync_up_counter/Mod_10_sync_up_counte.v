`timescale 1ns / 1ps
module Mod_10_sync_up_counte(
    input rst,
    input clk,
    output [3:0] count
    );
    wire w1=~count[3] & count[0];
    wire w2=~count[3] & count[0] & count[1];
    wire w3=count[0] & ( ~count[3] & count[2] & count[1] | count[3] & ~count[2] & ~count[1]);
   T_FF Ta(.t(1),.clk(clk),.rst(rst),.qn(count[0])); 
   T_FF Tb(.t(w1),.clk(clk),.rst(rst),.qn(count[1])); 
   T_FF Tc(.t(w2),.clk(clk),.rst(rst),.qn(count[2])); 
   T_FF Td(.t(w3),.clk(clk),.rst(rst),.qn(count[3])); 
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


