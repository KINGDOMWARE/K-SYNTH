// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

module ML
(
// {ALTERA_ARGS_BEGIN} DO NOT REMOVE THIS LINE!

	A,
	B,
	CLR,
	ON,
	BUZ,
	CLK,
	MIDI_IN,
	PITCH_ROM_IN,
	PITCH_ROM_ADR,
	PHASE,
	WAVE_ROM_ADR,
	PITCH_ROM_NOTE_ADR,
	CHAN
// {ALTERA_ARGS_END} DO NOT REMOVE THIS LINE!

);

// {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!
input	[7:0]	A;
input	[7:0]	B;
input			CLR;
input			ON;
input			BUZ;
input			CLK;
input			MIDI_IN;
input	[0:7]	PITCH_ROM_IN;
input	[0:1]	PITCH_ROM_ADR;
input	[0:7]	PHASE;
input	[0:7]	WAVE_ROM_ADR;
input	[0:6]	PITCH_ROM_NOTE_ADR;
input	[0:3]	CHAN;

// {ALTERA_IO_END} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_BEGIN} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_END} DO NOT REMOVE THIS LINE!
endmodule
