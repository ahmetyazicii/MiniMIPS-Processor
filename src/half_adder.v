// half adder
module half_adder(
	input x,
	input y,
	output c_out,
	output s);
	
	xor (s,x,y);
	and (c_out,x,y);

	
	
endmodule