module mips_registers(
	input [31:0]write_data,
	input [2:0]read_reg_1,
	input [2:0]read_reg_2, 
	input [2:0]write_reg,
	input signal_reg_write,
	input clk,
	output [31:0]read_data_1,
	output [31:0]read_data_2);

	
	// 32 bit 8 pieces register memory
	reg [31:0] registers [7:0];

	
	assign read_data_1 = registers[read_reg_1]; // rs
	assign read_data_2 = registers[read_reg_2]; // rt
	
	
	// in the positive edge of the clock, if the RegWrite signal is 1 and the address of the register to be written is not 0(zero register is always zero),
	// the given data is written to the given adress
	always @(posedge clk) 
		if(signal_reg_write && (write_reg !=0))
		begin
			 registers[write_reg] <= write_data;
		end
	
endmodule
