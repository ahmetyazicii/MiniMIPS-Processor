`timescale 1 ps / 1 ps
module mips_data_testbench();

	reg [31:0]write_data;
	reg [31:0]address;

	reg signal_mem_write;
	reg signal_mem_read;
	reg clk;
	wire [31:0]read_data;
	

	
	
	mips_data mdInst(write_data,address,signal_mem_write,signal_mem_read,clk,read_data);
	
	initial
		begin
		clk = 1;
		forever
			#5 clk = ~clk;
		end
		
	initial
		begin
			write_data = 32'd1;
			address = 32'd1;
			signal_mem_write = 1'b0;
			signal_mem_read = 1'b1;
			
			#5;
			signal_mem_write = 1'b1;
			signal_mem_read = 1'b0;
			#5;
			$writememb("data_outp.txt",mdInst.data_memory);
		end

	initial
		begin
			$readmemb("data.txt", mdInst.data_memory);
		end
		
		initial
			begin
				$monitor("****-Data Memory- time = %2d ****\nWriteData = %32b\nAddress = %32b\nMemWriteSignal = %1b\nMemReadSignal = %1b\nReadData = %32b\nWrittenDataMemory = %32b\n",$time,write_data,address,signal_mem_write,signal_mem_read,read_data,mdInst.data_memory[address]);
			end




endmodule
