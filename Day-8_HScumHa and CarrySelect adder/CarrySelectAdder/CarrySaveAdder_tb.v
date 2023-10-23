`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 15:28:55
// Design Name: 
// Module Name: CarrySaveAdder_tb
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


module CarrySaveAdder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
wire [4:0]result;
CarrySelectAdder dut1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout),.result(result));
initial
begin
a=4'b0010;b=4'b0010;cin=0;#10;
a=4'b0010;b=4'b0010;cin=1;#10;
a=4'b1100;b=4'b1010;cin=0;#10;
a=4'b1100;b=4'b1010;cin=1;#10;
$finish();
end
endmodule
