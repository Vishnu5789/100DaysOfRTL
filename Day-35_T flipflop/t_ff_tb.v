`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 20:16:26
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb(

    );
    reg t,clk,rst;
    wire q,qbar;
    t_ff dut(t,clk,rst,q,qbar);
    initial begin clk=0;t=0; end
    always #5 clk=~clk;
    initial begin
  
      rst=1;t=0;
     #10 rst=0;t=1;
     #10 t=0;
    #10 $finish;
    end
endmodule
