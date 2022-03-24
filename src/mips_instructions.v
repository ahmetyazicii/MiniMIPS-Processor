module mips_instructions(
	input [31:0]pc,
	input clk,
	output [15:0]instruction);

	// 16 bit 35 pieces instruction memory
	reg [15:0] instruction_memory [34:0];

	reg [15:0] t_instruction;
	
	// in the positive edge of the clock,
	// which means it is a sw, the instruction at the given address(pc) is received.
	always @(posedge clk)
		begin
			t_instruction <= instruction_memory[pc];
		end
	assign instruction = t_instruction;

endmodule
