module main_control(
	input [3:0]op,
	output RegDst,
	output ALUSrc,
	output MemtoReg,
	output RegWrite,
	output MemRead,
	output MemWrite,
	output Branch,
	output IsEqual,
	output [2:0]ALUop
);

	// finding the main control signals with the opcode of instruction.



	wire[3:0] opNot;
	wire RType,addi,andi,ori,nori,beq,bne,slti,lw,sw;
	not opNot3(opNot[3],op[3]);
	not opNot2(opNot[2],op[2]);
	not opNot1(opNot[1],op[1]);
	not opNot0(opNot[0],op[0]);
	 
	// opcodes of instructions
	and RTypeAnd(RType,opNot[3],opNot[2],opNot[1],opNot[0]);	// 0000
	and addiAnd(addi,opNot[3],opNot[2],opNot[1],op[0]);		// 0001
	and andiAnd(andi,opNot[3],opNot[2],op[1],opNot[0]);		// 0010
	and oriAnd(ori,opNot[3],opNot[2],op[1],op[0]);				// 0011
	and noriAnd(nori,opNot[3],op[2],opNot[1],opNot[0]);		//	0100
	and beqAnd(beq,opNot[3],op[2],opNot[1],op[0]);				// 0101
	and bneAnd(bne,opNot[3],op[2],op[1],opNot[0]);				// 0110
	and sltiAnd(slti,opNot[3],op[2],op[1],op[0]);				// 0111
	and lwAnd(lw,op[3],opNot[2],opNot[1],opNot[0]);				// 1000
	and swAnd(sw,op[3],opNot[2],opNot[1],op[0]);					// 1001

	// oring the instructions in order to receive the correct main control signals.
	or regdstOr(RegDst,RType,1'b0);
	or alusrcOr(ALUSrc,addi,andi,ori,nori,slti,lw,sw);
	or memtoregOr(MemtoReg,lw);
	or regwriteOr(RegWrite,RType,addi,andi,ori,nori,slti,lw);
	or memreadOr(MemRead,lw);
	or memwriteOr(MemWrite,sw);
	or branchOr(Branch,beq,bne);
	or isequalOr(IsEqual,beq,1'b0);
	or aluop2Or(ALUop[2],RType,ori,nori,slti);
	or aluop1Or(ALUop[1],RType,addi,andi,slti);
	or aluop0Or(ALUop[0],RType,andi,nori,beq,bne);



endmodule