`timescale 1ns / 1ps
module moore_machine_non_overlapping(
    input data,
    input clk,
    input rst,
    output reg op
    );
    reg [2:0] ps,ns; 
    parameter [2:0]s0=3'b000; 
    parameter [2:0]s1=3'b001;
    parameter [2:0]s2=3'b010;
    parameter [2:0]s3=3'b011; 
    parameter [2:0]s4=3'b100;
    always@(posedge clk) 
    begin 
        if(!rst) 
            begin 
                ps<=s0; 
                op<=1'b0;
            end
         else 
            begin 
                ps<=ns; 
            end
    end
    always@(*) 
    begin 
    case(ps)
                s0:begin 
                    op<=1'b0;
                    if(!data) 
                        ns<=s0; 
                    else 
                        ns<=s1;
                   end
                
                s1:begin 
                    op<=1'b0;
                    if(!data) 
                        ns<=s2; 
                    else 
                        ns<=s1;
                   end
                 s2:begin 
                    op<=1'b0;
                    if(!data) 
                        ns<=s3; 
                    else 
                        ns<=s1;
                   end
                  s3:begin 
                    op<=1'b0;
                    if(!data) 
                        ns<=s0; 
                    else 
                        ns<=s4;
                   end
                  s4:begin 
                    op<=1'b1;
                    if(!data) 
                        ns<=s2; 
                    else 
                        ns<=s1;
                    end
                  default:begin 
                        op<=1'b0; 
                        ns<=s0;
                  end
                endcase
    end
endmodule
