`timescale 1 ps / 1 ps
module mips_registers_testbench();

	reg [31:0]write_data;
	reg [2:0]read_reg_1;
	reg [2:0]read_reg_2; 
	reg [2:0]write_reg;
	reg signal_reg_write;
	reg clk;
	wire [31:0]read_data_1;
	wire [31:0]read_data_2;
	
	
	
	mips_registers mrInst(write_data,read_reg_1,read_reg_2,write_reg,signal_reg_write,clk,read_data_1,read_data_2);
	
	initial
		begin
		clk = 1;
		forever
			#5 clk = ~clk;
		end
		
	initial
		begin
			write_data = 32'd1;
			read_reg_1 = 3'b001;
			read_reg_2 = 3'b010;
			write_reg = 3'b011;
			signal_reg_write = 1'b0;
			
			#5;
			signal_reg_write = 1'b1;
			#10;
			$writememb("register_outp.txt", mrInst.registers);
		end

	initial
		begin
			$readmemb("register.txt", mrInst.registers);
		end
		
		initial
			begin
				$monitor("****-Registers- time = %2d ****\nWriteData = %32b\nReadReg1 = %3b\nReadReg2 = %3b\nWriteReg = %3b\nRegWriteSignal = %1b\nReadData1 = %32b\nReadData2 = %32b\nWrittenRegisterData = %32b\n",$time,write_data,read_reg_1,read_reg_2,write_reg,signal_reg_write,read_data_1,read_data_2,mrInst.registers[write_reg]);
			end




endmodule
