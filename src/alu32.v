module alu32(
	input [31:0]A,
	input [31:0]B,
	input [2:0] S,
	output [31:0]R
);

	wire [31:0]wAdd;
	wire [31:0]wXor;
	wire [31:0]wSub;
	wire [31:0]wMult;
	wire [31:0]wSlt;
	wire [31:0]wNor;
	wire [31:0]wAnd;
	wire [31:0]wOr;
	wire cout;
	
	adder32 f0(A,B,1'b0,cout,wAdd);
	xor32 f1(A,B,wXor);
	sub32 f2(A,B,wSub);
	//mult32 f3(A,B,wMult);
	slt32 f4(A,B,wSlt);
	nor32 f5(A,B,wNor);
	and32 f6(A,B,wAnd);
	or32 f7(A,B,wOr);



	mux8x1 result(wAdd,wXor,wSub,32'd0,wSlt,wNor,wAnd,wOr,S,R);


endmodule