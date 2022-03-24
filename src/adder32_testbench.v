`timescale 1 ps / 1 ps
module adder32_testbench();

	reg [31:0] inp1,inp2;
	reg caryyIn;
	wire carryOut;
	wire [31:0] result;
	
	
	adder32 adderInst(.A(inp1),.B(inp2),.c_in(caryyIn),.c_out(carryOut),.R(result));
	
	initial
		begin
			inp1 = 32'b0010_0000_0000_0010_0000_0000_0010_0101;
			inp2 = 32'b0000_0000_0000_0010_0000_0100_0010_0001;
			caryyIn = 1'b0;
			#5;
			
			inp1 = 32'b0010_0000_0000_0010_0000_0000_0010_0101;
			inp2 = 32'b0000_0000_0000_0010_0000_0100_0010_0001;
			caryyIn = 1'b1;
			#5;
			
			inp1 = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
			inp2 = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
			caryyIn = 1'b1;
			#5;
		end
		
		initial
			begin
				$monitor("Adder TestBench");
				$monitor("****-ADD- time = %2d ****\ninput1 = %32b\ninput2 = %32b\ncaryyIn = %1b\ncarryOut = %1b, result = %32b",$time,inp1,inp2,caryyIn,carryOut,result);
			end




endmodule