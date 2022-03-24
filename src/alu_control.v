module alu_control(
	input [2:0]func,
	input [2:0]ALUop,
	output [2:0]ALUctr
);
	// finding the alucontrol signals with aluop and funcion field of instruction.

	wire [2:0]funcNot;
	wire [2:0]ALUopNot;
	wire [6:0]ALUctr2And;
	wire [5:0]ALUctr1And;
	wire [4:0]ALUctr0And;
	
	// not of func
	not funcNot2(funcNot[2],func[2]);
	not funcNot1(funcNot[1],func[1]);
	not funcNot0(funcNot[0],func[0]);
	
	// not of aluop
	not ALUopNot2(ALUopNot[2],ALUop[2]);
	not ALUopNot1(ALUopNot[1],ALUop[1]);
	not ALUopNot0(ALUopNot[0],ALUop[0]);

	
	// for aluctr[2]
	and ALUctr2And6(ALUctr2And[6],ALUopNot[2],ALUop[1],ALUop[0]);
	and ALUctr2And5(ALUctr2And[5],ALUop[2],ALUopNot[1],ALUopNot[0]);
	and ALUctr2And4(ALUctr2And[4],ALUop[2],ALUopNot[1],ALUop[0]);
	and ALUctr2And3(ALUctr2And[3],ALUop[2],ALUop[1],ALUopNot[0]);
	and ALUctr2And2(ALUctr2And[2],ALUop[2],ALUop[1],ALUop[0],funcNot[2],funcNot[1],funcNot[0]);
	and ALUctr2And1(ALUctr2And[1],ALUop[2],ALUop[1],ALUop[0],func[2],funcNot[1],funcNot[0]);
	and ALUctr2And0(ALUctr2And[0],ALUop[2],ALUop[1],ALUop[0],func[2],funcNot[1],func[0]);
	
	or ALUctr2Or(ALUctr[2],ALUctr2And[6],ALUctr2And[5],ALUctr2And[4],ALUctr2And[3],ALUctr2And[2],ALUctr2And[1],ALUctr2And[0]);
	
	// for aluctr[1]
	and ALUctr1And5(ALUctr1And[5],ALUopNot[2],ALUopNot[1],ALUop[0]);
	and ALUctr1And4(ALUctr1And[4],ALUopNot[2],ALUop[1],ALUop[0]);
	and ALUctr1And3(ALUctr1And[3],ALUop[2],ALUopNot[1],ALUopNot[0]);
	and ALUctr1And2(ALUctr1And[2],ALUop[2],ALUop[1],ALUop[0],funcNot[2],funcNot[1],funcNot[0]);
	and ALUctr1And1(ALUctr1And[1],ALUop[2],ALUop[1],ALUop[0],funcNot[2],func[1],funcNot[0]);
	and ALUctr1And0(ALUctr1And[0],ALUop[2],ALUop[1],ALUop[0],func[2],funcNot[1],func[0]);
	
	or ALUctr1Or(ALUctr[1],ALUctr1And[5],ALUctr1And[4],ALUctr1And[3],ALUctr1And[2],ALUctr1And[1],ALUctr1And[0]);
	
	
	// for aluctr[0]
	and ALUctr0And4(ALUctr0And[4],ALUop[2],ALUopNot[1],ALUopNot[0]);
	and ALUctr0And3(ALUctr0And[3],ALUop[2],ALUopNot[1],ALUop[0]);
	and ALUctr0And2(ALUctr0And[2],ALUop[2],ALUop[1],ALUop[0],funcNot[2],func[1],func[0]);
	and ALUctr0And1(ALUctr0And[1],ALUop[2],ALUop[1],ALUop[0],func[2],funcNot[1],funcNot[0]);
	and ALUctr0And0(ALUctr0And[0],ALUop[2],ALUop[1],ALUop[0],func[2],funcNot[1],func[0]);
	
	or ALUctr0Or(ALUctr[0],ALUctr0And[4],ALUctr0And[3],ALUctr0And[2],ALUctr0And[1],ALUctr0And[0]);
	



endmodule