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
// CREATED		"Fri Apr 17 20:03:46 2026"

module NEURON(
	X1,
	X2,
	X3,
	X4,
	BIAS,
	W1,
	W2,
	W3,
	W4,
	STATUS
);


input wire	X1;
input wire	X2;
input wire	X3;
input wire	X4;
input wire	[7:0] BIAS;
input wire	[7:0] W1;
input wire	[7:0] W2;
input wire	[7:0] W3;
input wire	[7:0] W4;
output wire	STATUS;

wire	[7:0] S;
wire	SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_3 = 0;
assign	SYNTHESIZED_WIRE_6 = 0;
assign	SYNTHESIZED_WIRE_8 = 0;




mux8bitSaida	b2v_inst(
	.SEL(X1),
	.A(W1),
	.S(SYNTHESIZED_WIRE_9));


mux8bitSaida	b2v_inst1(
	.SEL(X2),
	.A(W2),
	.S(SYNTHESIZED_WIRE_10));


somador8bit	b2v_inst10(
	.CIN(SYNTHESIZED_WIRE_0),
	.A(SYNTHESIZED_WIRE_1),
	.B(SYNTHESIZED_WIRE_2),
	
	.S(SYNTHESIZED_WIRE_5));




somador8bit	b2v_inst13(
	.CIN(SYNTHESIZED_WIRE_3),
	.A(SYNTHESIZED_WIRE_4),
	.B(SYNTHESIZED_WIRE_5),
	
	.S(SYNTHESIZED_WIRE_7));


somador8bit	b2v_inst14(
	.CIN(SYNTHESIZED_WIRE_6),
	.A(SYNTHESIZED_WIRE_7),
	.B(BIAS),
	
	.S(S));



assign	STATUS =  ~S[7];


mux8bitSaida	b2v_inst2(
	.SEL(X3),
	.A(W3),
	.S(SYNTHESIZED_WIRE_1));


mux8bitSaida	b2v_inst3(
	.SEL(X4),
	.A(W4),
	.S(SYNTHESIZED_WIRE_2));


somador8bit	b2v_inst9(
	.CIN(SYNTHESIZED_WIRE_8),
	.A(SYNTHESIZED_WIRE_9),
	.B(SYNTHESIZED_WIRE_10),
	
	.S(SYNTHESIZED_WIRE_4));


endmodule
