`timescale 1 ps / 1 ps
module or32_testbench();

	reg [31:0] inp1,inp2;
	wire [31:0] result;
	
	
	or32 orInst(.A(inp1),.B(inp2),.R(result));
	
	initial
		begin
			inp1 = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
			inp2 = 32'b0100_0000_1010_0000_0000_0100_0000_0000;
			#5;
			
			inp1 = 32'b0010_0010_0010_0010_0000_0010_0010_0101;
			inp2 = 32'b1100_0010_0100_0010_0000_0100_0010_0011;
			#5;
		end
		
		initial
			begin
				$monitor("Or TestBench");
				$monitor("****-OR- time = %2d ****\ninput1 = %32b\ninput2 = %32b\nresult = %32b",$time,inp1,inp2,result);
			end




endmodule