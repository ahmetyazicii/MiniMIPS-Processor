module slt32(
	input [31:0]A,
	input [31:0]B,
	output[31:0]R
);

	wire [31:0]a_minus_b;
	
	sub32 fs(A,B,a_minus_b);
	
	and f31(R[31],1'b0,1'b0);
	and f30(R[30],1'b0,1'b0);
	and f29(R[29],1'b0,1'b0);
	and f28(R[28],1'b0,1'b0);
	and f27(R[27],1'b0,1'b0);
	and f26(R[26],1'b0,1'b0);
	and f25(R[25],1'b0,1'b0);
	and f24(R[24],1'b0,1'b0);
	and f23(R[23],1'b0,1'b0);
	and f22(R[22],1'b0,1'b0);
	and f21(R[21],1'b0,1'b0);
	and f20(R[20],1'b0,1'b0);
	and f19(R[19],1'b0,1'b0);
	and f18(R[18],1'b0,1'b0);
	and f17(R[17],1'b0,1'b0);
	and f16(R[16],1'b0,1'b0);
	and f15(R[15],1'b0,1'b0);
	and f14(R[14],1'b0,1'b0);
	and f13(R[13],1'b0,1'b0);
	and f12(R[12],1'b0,1'b0);
	and f11(R[11],1'b0,1'b0);
	and f10(R[10],1'b0,1'b0);
	and f9(R[9],1'b0,1'b0);
	and f8(R[8],1'b0,1'b0);
	and f7(R[7],1'b0,1'b0);
	and f6(R[6],1'b0,1'b0);
	and f5(R[5],1'b0,1'b0);
	and f4(R[4],1'b0,1'b0);
	and f3(R[3],1'b0,1'b0);
	and f2(R[2],1'b0,1'b0);
	and f1(R[1],1'b0,1'b0);
	or f0(R[0],a_minus_b[31],1'b0);
	
	
endmodule