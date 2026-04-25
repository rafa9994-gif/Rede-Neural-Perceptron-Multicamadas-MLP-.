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
// CREATED		"Fri Apr 17 20:05:20 2026"

module mlp_quadrado(
	X,
	Y,
	SAIDA_QUADRADO
);


input wire	[4:0] X;
input wire	[4:0] Y;
output wire	SAIDA_QUADRADO;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_9;





quadrado_h1	b2v_inst(
	.X(X),
	.SAIDA_H1(SYNTHESIZED_WIRE_0));


quadrado_h2	b2v_inst1(
	.X(X),
	.SAIDA_H2(SYNTHESIZED_WIRE_1));


constante_1	b2v_inst16(
	.result(SYNTHESIZED_WIRE_9));


constante_4negativo	b2v_inst17(
	.result(SYNTHESIZED_WIRE_4));


quadrado_h3	b2v_inst2(
	.Y(Y),
	.SAIDA_H3(SYNTHESIZED_WIRE_2));


quadrado_h4	b2v_inst3(
	.Y(Y),
	.SAIDA_H4(SYNTHESIZED_WIRE_3));


NEURON	b2v_inst4(
	.X1(SYNTHESIZED_WIRE_0),
	.X2(SYNTHESIZED_WIRE_1),
	.X3(SYNTHESIZED_WIRE_2),
	.X4(SYNTHESIZED_WIRE_3),
	.BIAS(SYNTHESIZED_WIRE_4),
	.W1(SYNTHESIZED_WIRE_9),
	.W2(SYNTHESIZED_WIRE_9),
	.W3(SYNTHESIZED_WIRE_9),
	.W4(SYNTHESIZED_WIRE_9),
	.STATUS(SAIDA_QUADRADO));


endmodule
