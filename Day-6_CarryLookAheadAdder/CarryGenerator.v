`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 14:07:30
// Design Name: 
// Module Name: CarryGenerator
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


module CarryGenerator(input [3:0]a,b,
                      input cin,
                      output reg [3:0]c);
                     reg p0,p1,p2,p3;
                     reg g0,g1,g2,g3;
                     always @(*) 
                     begin
                      g0=a[0]&b[0]; p0=a[0]^b[0];
                      g1=a[1]&b[1]; p1=a[1]^b[1];
                      g2=a[2]&b[2];p2=a[2]^b[2];
                      g3=a[3]&b[3];p3=a[3]^b[3];
                      c[0]=g0 | (p0&cin); 
                      c[1]=g1 | (p1&c[0]);
                      c[2]=g2 | (p2 & c[1]);
                      c[3]=g3 | (p3 & c[2]);
                     end
endmodule
