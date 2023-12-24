`timescale 1ns / 1ps
module melay_non_overlapping(
    input data,
    input clk,
    input rst,
    output reg op
    );
    reg [1:0]ps,ns; 
    parameter [1:0]s0=2'b00; 
    parameter [1:0]s1=2'b01;
    parameter [1:0]s2=2'b10; 
    parameter [1:0]s3=2'b11; 
    always@(posedge clk) 
    begin  
        if(!rst) 
        begin 
            ps<=s0; 
            op<=0;
        end
        else 
            ps<=ns;
     end
     always@(*) 
     begin 
        case(ps)
        s0: begin 
                if(!data) 
                begin 
                    ns=s0; 
                    op=1'b0;
                end
                else 
                begin 
                    ns=s1;
                    op=1'b0;
                end
            end
         s1: begin 
                if(!data) 
                begin 
                    ns=s0; 
                    op=1'b0;
                end
                else 
                begin 
                    ns=s2;
                    op=1'b0;
                end
            end
         s2: begin 
                if(!data) 
                begin 
                    ns=s3; 
                    op=1'b0;
                end
                else 
                begin 
                    ns=s2;
                    op=1'b0;
                end
            end
          s3: begin 
                if(!data) 
                begin 
                    ns=s0; 
                    op=1'b0;
                end
                else 
                begin 
                    ns=s0;
                    op=1'b1;
                end
            end
           default:begin 
                    ns=s0; op=1'b0;
                   end
        endcase
     end
endmodule
