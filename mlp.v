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
// CREATED		"Fri Apr 17 20:07:10 2026"

module mlp(
	X,
	Y,
	STATUS
);


input wire	[4:0] X;
input wire	[4:0] Y;
output wire	STATUS;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_9 = 0;




mlp_losango	b2v_inst(
	.X(X),
	.Y(Y),
	.SAIDA_LOSANGO(SYNTHESIZED_WIRE_0));


mlp_quadrado	b2v_inst1(
	.X(X),
	.Y(Y),
	.SAIDA_QUADRADO(SYNTHESIZED_WIRE_1));


constante_0	b2v_inst10(
	.result(SYNTHESIZED_WIRE_8));



NEURON	b2v_inst2(
	.X1(SYNTHESIZED_WIRE_0),
	.X2(SYNTHESIZED_WIRE_1),
	.X3(SYNTHESIZED_WIRE_9),
	.X4(SYNTHESIZED_WIRE_9),
	.BIAS(SYNTHESIZED_WIRE_4),
	.W1(SYNTHESIZED_WIRE_5),
	.W2(SYNTHESIZED_WIRE_6),
	.W3(SYNTHESIZED_WIRE_7),
	.W4(SYNTHESIZED_WIRE_8),
	.STATUS(STATUS));


constante_1	b2v_inst6(
	.result(SYNTHESIZED_WIRE_5));


constante_1	b2v_inst7(
	.result(SYNTHESIZED_WIRE_6));


constante_2negativo	b2v_inst8(
	.result(SYNTHESIZED_WIRE_4));


constante_0	b2v_inst9(
	.result(SYNTHESIZED_WIRE_7));


endmodule
