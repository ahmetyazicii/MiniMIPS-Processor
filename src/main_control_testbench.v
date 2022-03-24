`timescale 1 ps / 1 ps
module main_control_testbench();

	reg [3:0] op;
	wire regdst;
	wire alusrc;
	wire memtoreg;
	wire regwrite;
	wire memread;
	wire memwrite;
	wire branch;
	wire isequal;
	wire [2:0]aluop;

	main_control mcInst(op,regdst,alusrc,memtoreg,regwrite,memread,memwrite,branch,isequal,aluop);
	
	initial
		begin
			op = 4'b0000;
			#5;
			op = 4'b0110;
			#5;
			op = 4'b0101;
			#5;
			op = 4'b1000;
			#5;
			op = 4'b0001;
			#5;
			op = 4'b0100;
			#5;
		end
		
		initial
			begin
				$monitor("Main Control TestBench");
				$monitor("****-Main-Control- time = %2d ****\nOpCode = %4b\nRegDst = %1d\nALUSrc = %1d\nMemtoReg = %1d\nRegWrite = %1d\nMemRead = %1d\nMemWrite = %1d\nBranch = %1d\nIsEqual = %1d\nALUop(2-1-0) = %3b\n",$time,op,regdst,alusrc,memtoreg,regwrite,memread,memwrite,branch,isequal,aluop);

			end

			

	




endmodule