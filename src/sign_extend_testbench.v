`timescale 1 ps / 1 ps
module sign_extend_testbench();

	reg [5:0] inp;
	wire [31:0] result;

	sign_extend seInst(inp,result);
	
	initial
		begin
			inp = 6'b111111;
			#5;
			
			inp = 6'b010101;
			#5;
		end
		
		initial
			begin
				$monitor("****-SignExtend- time = %2d ****\n6bit-input = %6b\n32bit-Sign-Extended-Version = %32b\n",$time,inp,result);
			end




endmodule