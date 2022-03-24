module or16(
	input [15:0]A,
	input [15:0]B,
	output [15:0]R
	);

	// or 16 bits one by one
	or or15(R[15],A[15],B[15]);
	or or14(R[14],A[14],B[14]);
	or or13(R[13],A[13],B[13]);
	or or12(R[12],A[12],B[12]);
	or or11(R[11],A[11],B[11]);
	or or10(R[10],A[10],B[10]);
	or or9(R[9],A[9],B[9]);
	or or8(R[8],A[8],B[8]);
	or or7(R[7],A[7],B[7]);
	or or6(R[6],A[6],B[6]);
	or or5(R[5],A[5],B[5]);
	or or4(R[4],A[4],B[4]);
	or or3(R[3],A[3],B[3]);
	or or2(R[2],A[2],B[2]);
	or or1(R[1],A[1],B[1]);
	or or0(R[0],A[0],B[0]);
	

endmodule