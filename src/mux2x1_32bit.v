module mux2x1_32bit(
	input [31:0]D0,
	input [31:0]D1,
	input S,
	output [31:0] R
);

	// deriving 1 bit 2x1 mux to 32 bit 2x1 mux with muxing all the bits.
	mux2x1_1bit bit31(D0[31],D1[31],S,R[31]);
	mux2x1_1bit bit30(D0[30],D1[30],S,R[30]);
	mux2x1_1bit bit29(D0[29],D1[29],S,R[29]);
	mux2x1_1bit bit28(D0[28],D1[28],S,R[28]);
	mux2x1_1bit bit27(D0[27],D1[27],S,R[27]);
	mux2x1_1bit bit26(D0[26],D1[26],S,R[26]);
	mux2x1_1bit bit25(D0[25],D1[25],S,R[25]);
	mux2x1_1bit bit24(D0[24],D1[24],S,R[24]);
	mux2x1_1bit bit23(D0[23],D1[23],S,R[23]);
	mux2x1_1bit bit22(D0[22],D1[22],S,R[22]);
	mux2x1_1bit bit21(D0[21],D1[21],S,R[21]);
	mux2x1_1bit bit20(D0[20],D1[20],S,R[20]);
	mux2x1_1bit bit19(D0[19],D1[19],S,R[19]);
	mux2x1_1bit bit18(D0[18],D1[18],S,R[18]);
	mux2x1_1bit bit17(D0[17],D1[17],S,R[17]);
	mux2x1_1bit bit16(D0[16],D1[16],S,R[16]);
	mux2x1_1bit bit15(D0[15],D1[15],S,R[15]);
	mux2x1_1bit bit14(D0[14],D1[14],S,R[14]);
	mux2x1_1bit bit13(D0[13],D1[13],S,R[13]);
	mux2x1_1bit bit12(D0[12],D1[12],S,R[12]);
	mux2x1_1bit bit11(D0[11],D1[11],S,R[11]);
	mux2x1_1bit bit10(D0[10],D1[10],S,R[10]);
	mux2x1_1bit bit9(D0[9],D1[9],S,R[9]);
	mux2x1_1bit bit8(D0[8],D1[8],S,R[8]);
	mux2x1_1bit bit7(D0[7],D1[7],S,R[7]);
	mux2x1_1bit bit6(D0[6],D1[6],S,R[6]);
	mux2x1_1bit bit5(D0[5],D1[5],S,R[5]);
	mux2x1_1bit bit4(D0[4],D1[4],S,R[4]);
	mux2x1_1bit bit3(D0[3],D1[3],S,R[3]);
	mux2x1_1bit bit2(D0[2],D1[2],S,R[2]);
	mux2x1_1bit bit1(D0[1],D1[1],S,R[1]);
	mux2x1_1bit bit0(D0[0],D1[0],S,R[0]);


endmodule