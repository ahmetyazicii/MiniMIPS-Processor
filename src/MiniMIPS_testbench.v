`timescale 1 ps / 1 ps
module MiniMIPS_testbench ();

	wire [31:0]result;
	wire [15:0]instruction;

	reg clk;

	
	MiniMIPS mmInst(clk,instruction,result);

		
	initial
		begin
		clk = 1;
			forever
				#5 clk = ~clk;
		end
		
			
	initial 
		begin
			$readmemb("register.txt", mmInst.mrInst.registers);
			$readmemb("instruction.txt",mmInst.miInst.instruction_memory);
			$readmemb("data.txt",mmInst.mdInst.data_memory);
	end
	
	
	initial
		begin
			#360 $writememb("register_outp.txt", mmInst.mrInst.registers);
				  $writememb("data_outp.txt",mmInst.mdInst.data_memory);
				  $stop;
		end
	
	initial
		begin
			$monitor("****-MiniMIPS- time = %2d\nInstruction = %16b\nResult =  %32b\nregister[1] = %32b\n",$time,instruction,result,mmInst.mrInst.registers[1]);
		end


endmodule