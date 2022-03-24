module MiniMIPS(
	input clk,
	output [15:0]finstruction,
	output [31:0]result);


	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire IsEqual;
	wire branchMux1;
	wire branchMux2;
	wire branchMuxSelection;
	wire isZero;
	wire [2:0]ALUop;
	wire [2:0]ALUctr;
	wire [31:0]rs;
	wire [31:0]rt;
	wire [31:0]wData;
	wire [2:0]wReg;
	wire [31:0]extendedImm;
	wire [31:0]selectedRt;
	wire [31:0]ALUresult;
	wire [31:0]dData;
	wire [31:0]pc_plus1;
	wire [31:0]branch_pc;
	wire [31:0]next_PC;
	wire temp;
	wire temp2;
	wire [15:0]instruction;
	wire isZeroNot;
	wire isEqualNot;
	wire t;
	
	reg [31:0]PC;

	initial
		begin
		PC = 32'd0;
		end
	
	// in the negative edge of the clock new calculated program counter replaced with old program counter
	always @(negedge clk)
			begin
				PC <= next_PC;
			end
	
	// the datapath made according to the "A Single Cycle Datapath" figure.
	
	
	// fetching the instruction from instruction memory
	mips_instructions miInst(PC,clk,instruction);
	
	// getting main control then alu control signals.
	main_control mcInst(instruction[15:12],RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,IsEqual,ALUop);
	alu_control acInst(instruction[2:0],ALUop,ALUctr);
	
	// choosing the address of the register to be written will be rd(in R-type) or rt(in I-type).
	mux2x1_3bit mux2x1_3bitIns(instruction[8:6],instruction[5:3],RegDst,wReg);
	
	// receiving data from registers and write to the registers
	mips_registers mrInst(wData,instruction[11:9],instruction[8:6],wReg,RegWrite,clk,rs,rt);
	
	// extend 6 bit immediate field to the 32 bit.
	sign_extend sign_extendIns(instruction[5:0],extendedImm);
	
	// choosing is rt(in R-type) or immediate field(in I-type) will go to the ALU.
	mux2x1_32bit mux2x1_32bitIns(rt,extendedImm,ALUSrc,selectedRt);
	
	// performs ALU operations.
	alu32 alu32Inst(rs,selectedRt,ALUctr,ALUresult);
	
	// performs data operations.
	mips_data mdInst(rt,ALUresult,MemWrite,MemRead,clk,dData);
	
	// choosing which data (data from alu or data from data memory) will be final result(will be stored in register).
	mux2x1_32bit mux2x1_32bitIns2(ALUresult,dData,MemtoReg,wData);

	// checking that is 32 bit alu result just contains 0s.
	or isZeroOr(t,ALUresult[31],ALUresult[30],ALUresult[29],ALUresult[28],ALUresult[27],ALUresult[26],ALUresult[25],ALUresult[24],ALUresult[23],ALUresult[22],ALUresult[21],ALUresult[20],ALUresult[19],ALUresult[18],ALUresult[17],ALUresult[16],ALUresult[15],ALUresult[14],ALUresult[13],ALUresult[12],ALUresult[11],ALUresult[10],ALUresult[9],ALUresult[8],ALUresult[7],ALUresult[6],ALUresult[5],ALUresult[4],ALUresult[3],ALUresult[2],ALUresult[1],ALUresult[0]);
	not notInst0(isZero,t);
	
	not notInst1(isZeroNot,isZero);
	not notInst2(isEqualNot,IsEqual);
	// for beq
	and andInst1(branchMux1,Branch,isZero,IsEqual);
	// for bne
	and andInst2(branchMux2,Branch,isZeroNot,isEqualNot);
	
	or orInst(branchMuxSelection,branchMux1,branchMux2);
	
	// incrementing the program counter
	adder32 addIns1(PC,32'd1,1'b0,temp,pc_plus1);
	// adding the immediate field to the program counter(for branch operations).
	adder32 addIns2(pc_plus1,extendedImm,1'b0,temp2,branch_pc);
	
	// choosing what the new program counter will be, added immediate field program counters for bne and beq, incremented program counter for other instructions.
	mux2x1_32bit mux2x1_32bitIns3(pc_plus1,branch_pc,branchMuxSelection,next_PC);
	
	// for outputs
	or32 finalResult(wData,32'b0,result);
	or16 finalInstruction(instruction,16'b0,finstruction);
	


endmodule
