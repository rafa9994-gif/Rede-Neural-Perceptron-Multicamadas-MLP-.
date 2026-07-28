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
// CREATED		"Sat Mar 28 00:16:37 2026"

module subtrator5bit(
	BIN,
	A,
	B,
	BOUT,
	OVERFLOW,
	S
);


input wire	BIN;
input wire	[4:0] A;
input wire	[4:0] B;
output wire	BOUT;
output wire	OVERFLOW;
output wire	[4:0] S;

wire	[4:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





subtrator1bit	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.BIN(BIN),
	.S(S_ALTERA_SYNTHESIZED[0]),
	.BOUT(SYNTHESIZED_WIRE_0));


subtrator1bit	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.BIN(SYNTHESIZED_WIRE_0),
	.S(S_ALTERA_SYNTHESIZED[1]),
	.BOUT(SYNTHESIZED_WIRE_1));


subtrator1bit	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.BIN(SYNTHESIZED_WIRE_1),
	.S(S_ALTERA_SYNTHESIZED[2]),
	.BOUT(SYNTHESIZED_WIRE_2));


subtrator1bit	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.BIN(SYNTHESIZED_WIRE_2),
	.S(S_ALTERA_SYNTHESIZED[3]),
	.BOUT(SYNTHESIZED_WIRE_3));


subtrator1bit	b2v_inst4(
	.A(A[4]),
	.B(B[4]),
	.BIN(SYNTHESIZED_WIRE_3),
	.S(S_ALTERA_SYNTHESIZED[4]),
	.BOUT(BOUT));


overflow	b2v_inst5(
	.A(A[4]),
	.B(B[4]),
	.S(S_ALTERA_SYNTHESIZED[4]),
	.OVERFLOW(OVERFLOW));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
