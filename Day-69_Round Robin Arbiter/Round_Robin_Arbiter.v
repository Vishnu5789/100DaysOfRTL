`timescale 1ns / 1ps
module Round_Robin_Arbiter(
    input clk,
    input rst,
    input [3:0] req,
    output reg [3:0] grant
    );
    reg [2:0] ps,ns; 
    parameter [2:0] ideal=3'b000; 
    parameter [2:0] s0=3'b001; 
    parameter [2:0] s1=3'b010; 
    parameter [2:0] s2=3'b011; 
    parameter [2:0] s3=3'b100; 
    always@(posedge clk) 
    begin 
    if(!rst) 
    ps<=ideal; 
    else 
    ps<=ns;
    end
    always@(*)
    begin 
    case(ps) 
    ideal: begin 
            if(req[0]) 
            ns=s0; 
            else if(req[1]) 
            ns=s1; 
            else if(req[2]) 
            ns=s2;
            else if(req[3]) 
            ns=s3;
           end
     s0: begin 
            if(req[1]) 
            ns=s1; 
            else if(req[2]) 
            ns=s2; 
            else if(req[3]) 
            ns=s3;
            else if(req[0]) 
            ns=s0;
            else 
            ns=ideal; 
         end
     s1: begin 
            if(req[2]) 
            ns=s2; 
            else if(req[3]) 
            ns=s3; 
            else if(req[0]) 
            ns=s0; 
            else if(req[1]) 
            ns=s1;
            else 
            ns=ideal; 
         end
      s2: begin 
            if(req[3]) 
            ns=s3; 
            else if(req[0]) 
            ns=s0; 
            else if(req[1]) 
            ns=s1; 
            else if(req[2]) 
            ns=s2; 
            else 
            ns=ideal; 
          end
       s3: begin 
            if(req[0]) 
            ns=s0; 
            else if(req[1]) 
            ns=s1;
            else if(req[2]) 
            ns=s2; 
            else if(req[3]) 
            ns=s3; 
            else 
            ns=ideal;
           end
        default:begin 
            if(req[0]) 
            ns=s0; 
            else if(req[1]) 
            ns=s1;
            else if(req[2]) 
            ns=s2; 
            else if(req[3]) 
            ns=s3; 
            else 
            ns=ideal;
                end
    endcase
    end
    always@(*) 
    begin 
    case(ps) 
    s0:grant=4'b0001;
    s1:grant=4'b0010; 
    s2:grant=4'b0100; 
    s3:grant=4'b1000;
    default:grant=4'b0000;
    endcase
    end
endmodule
