`timescale 1ns / 1ps
module Freq_Divider_by4(
    input rst,
    input clk,
    output op
    );
    wire [1:0] w1;
    mod4_counter MOD4_COunter(.rst(rst),.clk(clk),.count(w1));
    assign op=w1[1];
endmodule
module mod4_counter(rst,clk,count);
input rst,clk; output [1:0] count;
T_Ff Ta(.clk(clk),.rst(rst),.t(1),.qn(count[0]));
T_Ff Tb(.clk(clk),.rst(rst),.t(count[0]),.qn(count[1]));
endmodule
module T_Ff(t,clk,rst,qn,qn_bar);
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

