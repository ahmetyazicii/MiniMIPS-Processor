module mux2x1_3bit(
	input [2:0]D0,
	input [2:0]D1,
	input S,
	output [2:0] R
);

	// derivinng 1 bit 2x1 mux to 3 bit 2x1 mux with muxing all the bits.

	mux2x1_1bit bit2(D0[2],D1[2],S,R[2]);
	mux2x1_1bit bit1(D0[1],D1[1],S,R[1]);
	mux2x1_1bit bit0(D0[0],D1[0],S,R[0]);


endmodule