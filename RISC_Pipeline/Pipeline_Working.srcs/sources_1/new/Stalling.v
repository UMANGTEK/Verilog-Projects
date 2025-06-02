`timescale 1ns / 1ps

module Stalling(input EX_MEM_MR,input [3:0]ID_EX_WN,IF_ID_RN1,IF_ID_RN2,output reg IF_ID_Write,PCWrite,ST);

always@(*)
begin
if(EX_MEM_MR&(ID_EX_WN==IF_ID_RN1 | ID_EX_WN==IF_ID_RN2))
    begin
        ST<=1;
        IF_ID_Write<=1;
        PCWrite<=1;
    end
else
    ST<=0;
    IF_ID_Write<=0;
    PCWrite<=0;
end

endmodule
