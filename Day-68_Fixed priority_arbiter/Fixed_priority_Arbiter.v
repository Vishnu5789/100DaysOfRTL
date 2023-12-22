`timescale 1ns / 1ps

module Fixed_priority_Arbiter(
    input clk,
    input rst,
    input [3:0] req,
    output reg [3:0] grant
    );
    always@(posedge clk or negedge rst)
    begin  
    if(!rst) 
    grant=4'b0000; 
    else if(req[3]) 
    grant=4'b1000; 
    else if(req[2]) 
    grant=4'b0100; 
    else if(req[1]) 
    grant=4'b0010; 
    else
    grant=4'b0001;
    end
endmodule
