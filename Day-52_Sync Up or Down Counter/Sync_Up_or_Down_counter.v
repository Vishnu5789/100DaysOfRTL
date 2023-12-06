`timescale 1ns / 1ps
module Sync_Up_or_Down_counter(
    input rst,
    input clk,
    input cntrl,
    output [2:0] count
    );
    wire w1=count[0] ^ cntrl;
    wire w2=(count[0] & count [1] & ~cntrl) | ( ~count[0] & ~count [1] & cntrl);
    T_FF Ta(.t(1),.clk(clk),.rst(rst),.qn(count[0]));
    T_FF Tb(.t(w1),.clk(clk),.rst(rst),.qn(count[1]));
    T_FF Tc(.t(w2),.clk(clk),.rst(rst),.qn(count[2]));
endmodule
module T_FF(t,clk,rst,qn,qn_bar);
input t,clk,rst;
output reg qn; output qn_bar;
always@(posedge clk)
begin 
if(!rst)
qn=0;
else
begin 
case(t) 
0:qn=qn; 1:qn=~qn;
endcase
end
end
assign qn_bar=~qn;
endmodule


