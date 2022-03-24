module mux8x1(
	input [31:0]D0,
	input [31:0]D1,
	input [31:0]D2,
	input [31:0]D3,
	input [31:0]D4,
	input [31:0]D5,
	input [31:0]D6,
	input [31:0]D7,
	input [2:0] S,
	output [31:0] R
);

	// derivinng 1 bit 8x1 mux to 32 bit 8x1 mux with muxing all the bits.
	mux8x1_1bit bit31(D0[31],D1[31],D2[31],D3[31],D4[31],D5[31],D6[31],D7[31],S,R[31]);
	mux8x1_1bit bit30(D0[30],D1[30],D2[30],D3[30],D4[30],D5[30],D6[30],D7[30],S,R[30]);
	mux8x1_1bit bit29(D0[29],D1[29],D2[29],D3[29],D4[29],D5[29],D6[29],D7[29],S,R[29]);
	mux8x1_1bit bit28(D0[28],D1[28],D2[28],D3[28],D4[28],D5[28],D6[28],D7[28],S,R[28]);
	mux8x1_1bit bit27(D0[27],D1[27],D2[27],D3[27],D4[27],D5[27],D6[27],D7[27],S,R[27]);
	mux8x1_1bit bit26(D0[26],D1[26],D2[26],D3[26],D4[26],D5[26],D6[26],D7[26],S,R[26]);
	mux8x1_1bit bit25(D0[25],D1[25],D2[25],D3[25],D4[25],D5[25],D6[25],D7[25],S,R[25]);
	mux8x1_1bit bit24(D0[24],D1[24],D2[24],D3[24],D4[24],D5[24],D6[24],D7[24],S,R[24]);
	mux8x1_1bit bit23(D0[23],D1[23],D2[23],D3[23],D4[23],D5[23],D6[23],D7[23],S,R[23]);
	mux8x1_1bit bit22(D0[22],D1[22],D2[22],D3[22],D4[22],D5[22],D6[22],D7[22],S,R[22]);
	mux8x1_1bit bit21(D0[21],D1[21],D2[21],D3[21],D4[21],D5[21],D6[21],D7[21],S,R[21]);
	mux8x1_1bit bit20(D0[20],D1[20],D2[20],D3[20],D4[20],D5[20],D6[20],D7[20],S,R[20]);
	mux8x1_1bit bit19(D0[19],D1[19],D2[19],D3[19],D4[19],D5[19],D6[19],D7[19],S,R[19]);
	mux8x1_1bit bit18(D0[18],D1[18],D2[18],D3[18],D4[18],D5[18],D6[18],D7[18],S,R[18]);
	mux8x1_1bit bit17(D0[17],D1[17],D2[17],D3[17],D4[17],D5[17],D6[17],D7[17],S,R[17]);
	mux8x1_1bit bit16(D0[16],D1[16],D2[16],D3[16],D4[16],D5[16],D6[16],D7[16],S,R[16]);
	mux8x1_1bit bit15(D0[15],D1[15],D2[15],D3[15],D4[15],D5[15],D6[15],D7[15],S,R[15]);
	mux8x1_1bit bit14(D0[14],D1[14],D2[14],D3[14],D4[14],D5[14],D6[14],D7[14],S,R[14]);
	mux8x1_1bit bit13(D0[13],D1[13],D2[13],D3[13],D4[13],D5[13],D6[13],D7[13],S,R[13]);
	mux8x1_1bit bit12(D0[12],D1[12],D2[12],D3[12],D4[12],D5[12],D6[12],D7[12],S,R[12]);
	mux8x1_1bit bit11(D0[11],D1[11],D2[11],D3[11],D4[11],D5[11],D6[11],D7[11],S,R[11]);
	mux8x1_1bit bit10(D0[10],D1[10],D2[10],D3[10],D4[10],D5[10],D6[10],D7[10],S,R[10]);
	mux8x1_1bit bit9(D0[9],D1[9],D2[9],D3[9],D4[9],D5[9],D6[9],D7[9],S,R[9]);
	mux8x1_1bit bit8(D0[8],D1[8],D2[8],D3[8],D4[8],D5[8],D6[8],D7[8],S,R[8]);
	mux8x1_1bit bit7(D0[7],D1[7],D2[7],D3[7],D4[7],D5[7],D6[7],D7[7],S,R[7]);
	mux8x1_1bit bit6(D0[6],D1[6],D2[6],D3[6],D4[6],D5[6],D6[6],D7[6],S,R[6]);
	mux8x1_1bit bit5(D0[5],D1[5],D2[5],D3[5],D4[5],D5[5],D6[5],D7[5],S,R[5]);
	mux8x1_1bit bit4(D0[4],D1[4],D2[4],D3[4],D4[4],D5[4],D6[4],D7[4],S,R[4]);
	mux8x1_1bit bit3(D0[3],D1[3],D2[3],D3[3],D4[3],D5[3],D6[3],D7[3],S,R[3]);
	mux8x1_1bit bit2(D0[2],D1[2],D2[2],D3[2],D4[2],D5[2],D6[2],D7[2],S,R[2]);
	mux8x1_1bit bit1(D0[1],D1[1],D2[1],D3[1],D4[1],D5[1],D6[1],D7[1],S,R[1]);
	mux8x1_1bit bit0(D0[0],D1[0],D2[0],D3[0],D4[0],D5[0],D6[0],D7[0],S,R[0]);


endmodule