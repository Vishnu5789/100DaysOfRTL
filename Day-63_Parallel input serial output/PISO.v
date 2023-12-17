`timescale 1ns / 1ps
module PISO(
    input [3:0] in,
    output out,
    input clk,rst,
    input shiftOrLoad
    );
    wire [2:0]w1; wire [3:0] tempop;
    wire [2:0]w2; wire [2:0]w3;
    wire load=~shiftOrLoad;  
    assign w1[0]=shiftOrLoad & tempop[0];
    assign w1[1]=load & in[1];
    assign w1[2]= w1[0] | w1[1]; 
    assign w2[0]=shiftOrLoad & tempop[1];
    assign w2[1]=load & in[2];
    assign w2[2]= w2[0] | w2[1]; 
    assign w3[0]=shiftOrLoad & tempop[2];
    assign w3[1]=load & in[3];
    assign w3[2]= w3[0] | w3[1]; 
    d_ff dff1(.d(in[0]),.rst(rst),.clk(clk),.qn(tempop[0]));
    d_ff dff2(.d(w1[2]),.rst(rst),.clk(clk),.qn(tempop[1]));
    d_ff dff3(.d(w2[2]),.rst(rst),.clk(clk),.qn(tempop[2]));
    d_ff dff4(.d(w3[2]),.rst(rst),.clk(clk),.qn(out));
endmodule
module d_ff(d,clk,rst,qn,qn_bar); 
input d,rst,clk;output qn,qn_bar; 
reg qn; 
always@(posedge clk) 
begin 
if(!rst) 
qn=0;
else 
begin 
case(d)
1'b0:qn=0;
1'b1:qn=d; 
endcase
end
end
assign qn_bar=~qn;
endmodule
