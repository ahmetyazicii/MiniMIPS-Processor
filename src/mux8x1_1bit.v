module mux8x1_1bit(
	input D0,
	input D1,
	input D2,
	input D3,
	input D4,	
	input D5,
	input D6,
	input D7,			
	input [2:0]S,
	output R

);


	wire sNot0;
	wire sNot1;
	wire sNot2;
	
	wire wAnd0;
	wire wAnd1;
	wire wAnd2;
	wire wAnd3;
	wire wAnd4;
	wire wAnd5;
	wire wAnd6;
	wire wAnd7;
	
	
	not not2(sNot2,S[2]);
	not not1(sNot1,S[1]);
	not not0(sNot0,S[0]);


	// for D0 to select
	and and0(wAnd0,sNot2,sNot1,sNot0,D0);
	// for D1 to select
	and and1(wAnd1,sNot2,sNot1,S[0],D1);
	// for D2 to select
	and and2(wAnd2,sNot2,S[1],sNot0,D2);
	// for D3 to select
	and and3(wAnd3,sNot2,S[1],S[0],D3);
	// for D4 to select
	and and4(wAnd4,S[2],sNot1,sNot0,D4);
	// for D5 to select
	and and5(wAnd5,S[2],sNot1,S[0],D5);
	// for D6 to select
	and and6(wAnd6,S[2],S[1],sNot0,D6);
	// for D7 to select
	and and7(wAnd7,S[2],S[1],S[0],D7);
	
	or finalOr(R,wAnd0,wAnd1,wAnd2,wAnd3,wAnd4,wAnd5,wAnd6,wAnd7);
	
endmodule