// megafunction wizard: %Shift register (RAM-based)%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTSHIFT_TAPS 

// ============================================================
// File Name: shiftreg_ctrl.v
// Megafunction Name(s):
// 			ALTSHIFT_TAPS
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.0 Internal Build 134 02/13/2013 PN Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module shiftreg_ctrl (
	clken,
	clock,
	shiftin,
	shiftout,
	taps);

	input	  clken;
	input	  clock;
	input	[4:0]  shiftin;
	output	[4:0]  shiftout;
	output	[4:0]  taps;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clken;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [4:0] sub_wire0;
	wire [4:0] sub_wire1;
	wire [4:0] shiftout = sub_wire0[4:0];
	wire [4:0] taps = sub_wire1[4:0];

	altshift_taps	ALTSHIFT_TAPS_component (
				.clock (clock),
				.clken (clken),
				.shiftin (shiftin),
				.shiftout (sub_wire0),
				.taps (sub_wire1)
				// synopsys translate_off
				,
				.aclr ()
				// synopsys translate_on
				);
	defparam
		ALTSHIFT_TAPS_component.intended_device_family = "Cyclone V",
		ALTSHIFT_TAPS_component.lpm_hint = "RAM_BLOCK_TYPE=MLAB",
		ALTSHIFT_TAPS_component.lpm_type = "altshift_taps",
		ALTSHIFT_TAPS_component.number_of_taps = 1,
		ALTSHIFT_TAPS_component.tap_distance = 5,
		ALTSHIFT_TAPS_component.width = 5;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: CLKEN NUMERIC "1"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "1"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "5"
// Retrieval info: PRIVATE: WIDTH NUMERIC "5"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=MLAB"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "1"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "5"
// Retrieval info: CONSTANT: WIDTH NUMERIC "5"
// Retrieval info: USED_PORT: clken 0 0 0 0 INPUT VCC "clken"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: shiftin 0 0 5 0 INPUT NODEFVAL "shiftin[4..0]"
// Retrieval info: USED_PORT: shiftout 0 0 5 0 OUTPUT NODEFVAL "shiftout[4..0]"
// Retrieval info: USED_PORT: taps 0 0 5 0 OUTPUT NODEFVAL "taps[4..0]"
// Retrieval info: CONNECT: @clken 0 0 0 0 clken 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @shiftin 0 0 5 0 shiftin 0 0 5 0
// Retrieval info: CONNECT: shiftout 0 0 5 0 @shiftout 0 0 5 0
// Retrieval info: CONNECT: taps 0 0 5 0 @taps 0 0 5 0
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl.qip TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL shiftreg_ctrl.cmp FALSE
// Retrieval info: LIB_FILE: altera_mf