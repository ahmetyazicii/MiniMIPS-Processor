`timescale 1 ps / 1 ps
module sub32_testbench();

	reg [31:0] inp1,inp2;
	wire [31:0] result;
	
	
	sub32 sub32Inst(.A(inp1),.B(inp2),.R(result));
	
	initial
		begin
			inp1 = 32'b0010_0000_0000_0010_0000_0000_0010_0101;
			inp2 = 32'b0000_0000_0000_0010_0000_0100_0010_0001;
			#5;
			
			inp1 = 32'b0010_0000_0000_0010_0000_0000_0010_0101;
			inp2 = 32'b1000_0000_0000_0010_0000_0100_0010_0001;
			#5;
			
			inp1 = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
			inp2 = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
			#5;
		end
		
		initial
			begin
				$monitor("Sub TestBench");
				$monitor("****-SUB- time = %2d ****\ninput1 = %32b\ninput2 = %32b\nresult = %32b",$time,inp1,inp2,result);
			end




endmodule