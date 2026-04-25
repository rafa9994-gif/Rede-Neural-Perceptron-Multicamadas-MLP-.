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
// CREATED		"Fri Apr 17 20:22:06 2026"

module mux8bitSaida(
	SEL,
	A,
	S
);


input wire	SEL;
input wire	[7:0] A;
output wire	[7:0] S;

wire	[7:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_8 = 0;




mux1bit	b2v_inst(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[7]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[7]));


mux1bit	b2v_inst1(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[6]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[6]));


mux1bit	b2v_inst2(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[5]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[5]));


mux1bit	b2v_inst3(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[4]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[4]));


mux1bit	b2v_inst4(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[3]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[3]));



mux1bit	b2v_inst6(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[0]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[0]));


mux1bit	b2v_inst7(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[1]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[1]));


mux1bit	b2v_inst8(
	.A(SYNTHESIZED_WIRE_8),
	.B(A[2]),
	.SEL(SEL),
	.S(S_ALTERA_SYNTHESIZED[2]));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
