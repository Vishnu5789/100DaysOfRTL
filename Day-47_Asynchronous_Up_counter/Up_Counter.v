`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 19:48:01
// Design Name: 
// Module Name: Up_Counter
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


module Up_Counter(
    input rst,
    input clk,
    output [3:0]count
    );
    t_ff TFF1(.t(1'b1),.clk(clk),.rst(rst),.qn(count[0]));
    t_ff TFF2(.t(1'b1),.clk(count[0]),.rst(rst),.qn(count[1]));
    t_ff TFF3(.t(1'b1),.clk(count[1]),.rst(rst),.qn(count[2]));
    t_ff TFF4(.t(1'b1),.clk(count[2]),.rst(rst),.qn(count[3]));
endmodule
module t_ff(t,clk,rst,qn,qn_bar); 
input t,clk,rst; output reg qn;output qn_bar; 
always@(negedge clk) 
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
