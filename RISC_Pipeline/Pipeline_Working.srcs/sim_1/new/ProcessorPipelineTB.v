`timescale 1ns / 1ps

module ProcessorPipelineTB();

reg Reset=0;
reg Clk=0;

ProcessorPipeline uut(.Clk(Clk),.Reset(Reset));

wire StoreHazard,PCSrc, EnIM, EnRW, MEM_WB_EnRW, ALUSrcB, MReg, MR,ID_EX_EnRW, EX_MEM_EnRW, MEM_WB_MReg,ST;
wire [1:0] ALUOp, ALUControlSignal,ForwardA,ForwardB;
wire [3:0] IF_ID_OpCode, IF_ID_WN, IF_ID_RN1, IF_ID_RN2,EX_MEM_WN,MEM_WB_WN,ID_EX_WN,ID_EX_RN1,ID_EX_RN2;
wire [15:0] IF_ID_IMM;
wire [31:0] Address, WriteData, PC, SelectedPC, Instruction, RD1, RD2, ALUResult, ReadData, MEM_WB_ALUResult, WD,ALUInA,ALUInB;


assign PC          = uut.pc.PC;
assign SelectedPC  = uut.muxpcsrc.SelectedPC;

assign ST       = uut.stalling.ST;
assign Instruction = uut.im.RD;
assign IF_ID_RN1    = uut.ifid.IF_ID_RN1;
assign IF_ID_RN2    = uut.ifid.IF_ID_RN2;
assign IF_ID_IMM    = uut.ifid.IF_ID_IMM;
assign ID_EX_RN1     = uut.idex.ID_EX_RN1;
assign ID_EX_RN2     = uut.idex.ID_EX_RN2;
assign ID_EX_WN     = uut.idex.ID_EX_WN;
assign EX_MEM_WN    = uut.exmem.EX_MEM_WN;
assign MEM_WB_WN    = uut.memwb.MEM_WB_WN;
assign ALUInB    = uut.alu.ALUInB;   
assign ALUInA    = uut.alu.ALUInA;   
assign ALUResult = uut.alu.ALUResult;
assign RD1 = uut.regfile.RD1;
assign RD2 = uut.regfile.RD2;
assign ForwardA  = uut.fu.ForwardA;
assign ForwardB  = uut.fu.ForwardB;
assign StoreHazard = uut.fu.StoreHazard;
assign IF_ID_OpCode = uut.ifid.IF_ID_OpCode;
assign IF_ID_WN     = uut.ifid.IF_ID_WN;

assign PCSrc           = uut.mc.PCSrc;
assign EnIM            = uut.mc.EnIM;
assign EnRW            = uut.mc.EnRW;
assign ALUSrcB         = uut.mc.ALUSrcB;
assign MReg            = uut.mc.MReg;
assign MR              = uut.mc.MR;
assign ALUOp           = uut.mc.ALUOp;
assign ID_EX_EnRW   = uut.idex.ID_EX_EnRW;
assign EX_MEM_EnRW  = uut.exmem.EX_MEM_EnRW;

assign ALUControlSignal = uut.alucontrol.ALUControlSignal;
   
assign Address    = uut.dm.Address;
assign WriteData  = uut.dm.WriteData;
assign ReadData   = uut.dm.ReadData;

assign MEM_WB_ALUResult = uut.memwb.MEM_WB_ALUResult;
assign MEM_WB_MReg      = uut.memwb.MEM_WB_MReg;
assign MEM_WB_EnRW      = uut.memwb.MEM_WB_EnRW;

assign WD         = uut.muxregwritesrc.WD;

always #5 Clk= ~Clk;

initial 
begin
$monitor("Vtime=%t value in Reg1=%h,Reg4=%h,Reg7=%h,Reg9=%h, at memlocation 12=%h,13=%h,14=%h,15=%h",$time,uut.regfile.Registers[1],uut.regfile.Registers[4],uut.regfile.Registers[7],uut.regfile.Registers[9],uut.dm.DataMem[12],uut.dm.DataMem[13],uut.dm.DataMem[14],uut.dm.DataMem[15]);
Clk=0;
uut.im.InstMem[0]=8'b0000_0001;
uut.im.InstMem[1]=8'b0010_0011;
uut.im.InstMem[2]=8'b00000000;
uut.im.InstMem[3]=8'b00000000;

uut.im.InstMem[4]=8'b0001_0100;
uut.im.InstMem[5]=8'b0001_0000;
uut.im.InstMem[6]=8'b1010_1011;
uut.im.InstMem[7]=8'b1100_1101;

uut.im.InstMem[8]=8'b0011_0000;
uut.im.InstMem[9]=8'b0101_0100;
uut.im.InstMem[10]=8'b0000_0000;
uut.im.InstMem[11]=8'b0000_1000;

uut.im.InstMem[12]=8'b0111_0111;
uut.im.InstMem[13]=8'b0100_0110;
uut.im.InstMem[14]=8'b0000_0000;
uut.im.InstMem[15]=8'b0000_0000;

uut.im.InstMem[16]=8'b1111_1001;
uut.im.InstMem[17]=8'b0111_1000;
uut.im.InstMem[18]=8'b0000_0000;
uut.im.InstMem[19]=8'b0000_0000;

uut.regfile.Registers[0]=32'h00000000;
uut.regfile.Registers[1]=32'hFFFFFFFF;
uut.regfile.Registers[2]=32'h00090567;
uut.regfile.Registers[3]=32'h0009778A;
uut.regfile.Registers[4]=32'hFFFFFFFF;
uut.regfile.Registers[5]=32'h00000004;
uut.regfile.Registers[6]=32'h000ACEE1;
uut.regfile.Registers[7]=32'hFFFFFFFF;
uut.regfile.Registers[8]=32'h00018765;

Reset=1;#6;Reset=0;
#90;
$finish;
end

endmodule
//reg 1=00000010 reg 4=ffffabdd mem=ffffabdd reg7=00005432 reg 9=00005423