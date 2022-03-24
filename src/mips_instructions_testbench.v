`timescale 1 ps / 1 ps
module mips_instructions_testbench();

	reg clk;
	reg [31:0]pc;
	wire [15:0]instruction;
	
	
	mips_instructions miInst(pc,clk,instruction);
	
	initial
		begin
		clk = 1;
		pc = 32'b0;
		forever
			#5 clk = ~clk;
		end
		
	always@ (negedge clk)
		begin
			pc = pc + 32'b1;
		end
	
		
	initial
		begin
			$readmemb("instruction.txt", miInst.instruction_memory);
		end
		
		initial
			begin
				$monitor("****-Instruction Memory- time = %2d ****\nPC = %32b\ninstruction = %16b\n",$time,pc,instruction);
			end




endmodule
