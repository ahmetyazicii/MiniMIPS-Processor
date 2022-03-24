`timescale 1 ps / 1 ps
module alu_control_testbench();

	reg [2:0] func,aluop;
	wire [2:0] aluctr;
	
	
	alu_control acInst(.func(func),.ALUop(aluop),.ALUctr(aluctr));
	
	initial
		begin
			func = 3'b000;
			aluop = 3'b010;
			#5;
			
			func = 3'b011;
			aluop = 3'b111;
			#5;
			func = 3'b011;
			aluop = 3'b000;
			#5;
			func = 3'b011;
			aluop = 3'b011;
			#5;
			func = 3'b011;
			aluop = 3'b001;
			#5;
			func = 3'b011;
			aluop = 3'b101;
			#5;
		end
		
		initial
			begin
				$monitor("ALU Control TestBench");
				$monitor("****-ALU-Control- time = %2d ****\nALUop = %3b\nfunc = %3b\nALUctr = %3b",$time,aluop,func,aluctr);
			end




endmodule