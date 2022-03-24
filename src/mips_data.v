module mips_data(
	input [31:0]write_data,
	input [31:0]address,
	input signal_mem_write,
	input signal_mem_read,
	input clk,
	output [31:0]read_data);

	// 32 bit 256 pieces data memory
	reg [31:0] data_memory [255:0];
	
	// in the negative edge of the clock, if the MemWrite signal is 1
	// which means it is a sw, the given data is written to the given adress
	always @(negedge clk) 
		if(signal_mem_write)
			begin
				data_memory[address] <= write_data;
			end

	// if the MemRead signal is 1,which means it is a lw, the data at the
	// given address is received, otherwise returns 0.
	assign read_data =(signal_mem_read) ? data_memory[address] : 32'd0;

	
endmodule
