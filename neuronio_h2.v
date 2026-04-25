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
// CREATED		"Thu Apr  2 17:45:58 2026"

module neuronio_h2(
	CIN,
	X,
	Y,
	SAIDA_H2
);


input wire	CIN;
input wire	[4:0] X;
input wire	[4:0] Y;
output wire	SAIDA_H2;

wire	[7:0] A;
wire	[7:0] B;
wire	GND;
wire	[7:0] S;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;





somador8bit	b2v_inst(
	.CIN(CIN),
	.A(A),
	.B(B),
	
	.S(SYNTHESIZED_WIRE_0));

assign	A[0] = X[0];


assign	B[1] = Y[1];


assign	B[0] = Y[0];


assign	B[2] = Y[2];






subtrator8bit	b2v_inst16(
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	
	.S(S));


lpm_constant_0	b2v_inst17(
	.result(SYNTHESIZED_WIRE_1));

assign	SAIDA_H2 =  ~S[7];

assign	A[2] = X[2];


assign	A[3] = X[3];


assign	A[4] = X[4];





assign	B[4] = Y[4];


assign	A[1] = X[1];


assign	B[3] = Y[3];


assign	A[7] = 0;
assign	A[5] = 0;
assign	A[6] = 0;
assign	B[7] = 0;
assign	B[6] = 0;
assign	B[5] = 0;

endmodule

module lpm_constant_0(result);
/* synthesis black_box */

output [7:0] result;

endmodule
