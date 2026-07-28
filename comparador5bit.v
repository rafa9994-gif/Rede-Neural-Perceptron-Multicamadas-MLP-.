// Copyright (C) 2021  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
// CREATED		"Tue Jun  2 15:57:22 2026"

module comparador5bit(
	A,
	B,
	MAIOR,
	IGUAL,
	MENOR
);


input wire	[4:0] A;
input wire	[4:0] B;
output wire	MAIOR;
output wire	IGUAL;
output wire	MENOR;

wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_46;





comparador1bit	b2v_inst(
	.A(A[4]),
	.B(B[4]),
	.MAIOR(SYNTHESIZED_WIRE_40),
	.IGUAL(SYNTHESIZED_WIRE_48),
	.MENOR(SYNTHESIZED_WIRE_28));


comparador1bit	b2v_inst1(
	.A(A[3]),
	.B(B[3]),
	.MAIOR(SYNTHESIZED_WIRE_46),
	.IGUAL(SYNTHESIZED_WIRE_49),
	.MENOR(SYNTHESIZED_WIRE_13));

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_55 = SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_51 & SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_53 = SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_51 & SYNTHESIZED_WIRE_51;

assign	MENOR = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29 | SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_53;


comparador1bit	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.MAIOR(SYNTHESIZED_WIRE_2),
	.IGUAL(SYNTHESIZED_WIRE_50),
	.MENOR(SYNTHESIZED_WIRE_15));


comparador1bit	b2v_inst3(
	.A(A[1]),
	.B(B[1]),
	.MAIOR(SYNTHESIZED_WIRE_6),
	.IGUAL(SYNTHESIZED_WIRE_51),
	.MENOR(SYNTHESIZED_WIRE_18));


comparador1bit	b2v_inst4(
	.A(A[0]),
	.B(B[0]),
	.MAIOR(SYNTHESIZED_WIRE_52),
	.IGUAL(SYNTHESIZED_WIRE_54),
	.MENOR(SYNTHESIZED_WIRE_23));

assign	IGUAL = SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_49 & SYNTHESIZED_WIRE_51 & SYNTHESIZED_WIRE_54 & SYNTHESIZED_WIRE_54;

assign	MAIOR = SYNTHESIZED_WIRE_40 | SYNTHESIZED_WIRE_41 | SYNTHESIZED_WIRE_42 | SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_55 | SYNTHESIZED_WIRE_55;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_46 & SYNTHESIZED_WIRE_48;


endmodule
