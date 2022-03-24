`timescale 1 ps / 1 ps
module alu32_testbench();

	reg [31:0]A;
	reg [31:0]B;
	reg [2:0]S;
	wire [31:0]R;
	
	alu32 alu32_inst(.A(A),.B(B),.S(S),.R(R));
		
	initial
		begin
				A = 32'b0000_0010_0100_0100_0011_0010_1000_0010;
				B = 32'b0011_0111_1011_1011_1010_1011_1111_1101;
				S = 3'b000;
			#5 S = 3'b001;
			#5 S = 3'b010;
			#5 S = 3'b011;
			#5 S = 3'b100;
			#5 S = 3'b101;
			#5 S = 3'b110;
			#5 S = 3'b111;
			
			#5 A = 32'b0010_0010_0100_0110_1011_0110_1010_1110;
				B = 32'b0000_0001_1011_1001_1110_1011_1011_1001;
				S = 3'b000;
			#5 S = 3'b001;
			#5 S = 3'b010;
			#5 S = 3'b011;
			#5 S = 3'b100;
			#5 S = 3'b101;
			#5 S = 3'b110;
			#5 S = 3'b111;
			
		end
	
	initial
		begin
			$monitor("*************ALU TESTBENCH*************");
			$monitor("****-ALU- time = %2d****\naluop = %3b\ninput1 = %32b\ninput2 = %32b\nresult = %32b",$time,S,A,B,R);

		end

		
		
endmodule