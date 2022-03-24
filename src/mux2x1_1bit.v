module mux2x1_1bit(
	input D0,
	input D1,		
	input S,
	output R
);


	wire sNot;
	
	wire wAnd0;
	wire wAnd1;
	wire wAnd2;
	wire wAnd3;
	wire wAnd4;
	wire wAnd5;
	wire wAnd6;
	wire wAnd7;
	
	not not0(sNot,S);


	// for D0 to select
	and and0(wAnd0,sNot,D0);
	// for D1 to select
	and and1(wAnd1,S,D1);

	
	or finalOr(R,wAnd0,wAnd1);
	
endmodule