module sign_extend(
	input [5:0]A,
	output [31:0]R
);

	// extending given 6 bit number to 32 bit number

	// the first 6 bit is oring with 0, so that the 6 bit is copying.
	// remaining 22 bit is assigned to 0.
	or or31(R[31],1'b0,1'b0);
	or or30(R[30],1'b0,1'b0);
	or or29(R[29],1'b0,1'b0);
	or or28(R[28],1'b0,1'b0);
	or or27(R[27],1'b0,1'b0);
	or or26(R[26],1'b0,1'b0);
	or or25(R[25],1'b0,1'b0);
	or or24(R[24],1'b0,1'b0);
	or or23(R[23],1'b0,1'b0);
	or or22(R[22],1'b0,1'b0);
	or or21(R[21],1'b0,1'b0);
	or or20(R[20],1'b0,1'b0);
	or or19(R[19],1'b0,1'b0);
	or or18(R[18],1'b0,1'b0);
	or or17(R[17],1'b0,1'b0);
	or or16(R[16],1'b0,1'b0);
	or or15(R[15],1'b0,1'b0);
	or or14(R[14],1'b0,1'b0);
	or or13(R[13],1'b0,1'b0);
	or or12(R[12],1'b0,1'b0);
	or or11(R[11],1'b0,1'b0);
	or or10(R[10],1'b0,1'b0);
	or or9(R[9],1'b0,1'b0);
	or or8(R[8],1'b0,1'b0);
	or or7(R[7],1'b0,1'b0);
	or or6(R[6],1'b0,1'b0);
	

	or or5(R[5],A[5],1'b0);
	or or4(R[4],A[4],1'b0);
	or or3(R[3],A[3],1'b0);
	or or2(R[2],A[2],1'b0);
	or or1(R[1],A[1],1'b0);
	or or0(R[0],A[0],1'b0);



endmodule