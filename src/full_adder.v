// 1 bit full adder
module full_adder(
	input x,
	input y,
	input c_in,
	output c_out,
	output s
);

	wire s1,c1,c2;
	half_adder ha1(x,y,c1,s1);
	half_adder ha2(c_in,s1,c2,s);
	or(c_out,c1,c2);
	

endmodule