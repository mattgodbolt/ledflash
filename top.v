// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

module top
(
// {ALTERA_ARGS_BEGIN} DO NOT REMOVE THIS LINE!

	Clock,
	Reset,
	led,
	ETH_COL,
	ETH_CRS,
	ETH_RESET_N,
	EXP_PRESENT,
	RESET_EXP_N,
	MDC,
	MDIO,
	P1,
	P3,
	P2,
	P4,
	P5,
	P6,
	P7,
	P8,
	P9,
	P10,
	P11,
	P13,
	P12,
	P14,
	P15,
	P16,
	P17,
	P18,
	P19,
	P20,
	P21,
	P22,
	P23,
	P24,
	P25,
	P26,
	P27,
	P28,
	P29,
	P35,
	P36,
	P37,
	P38,
	P39,
	P40,
	P41,
	P42,
	P43,
	P44,
	P45,
	P46,
	P47,
	P48,
	P49,
	P50,
	P51,
	P52,
	P53,
	P54,
	P55,
	P56,
	P57,
	P58,
	P59,
	P60,
	RAM_A0,
	RAM_A1,
	RAM_A2,
	RAM_A3,
	RAM_A4,
	RAM_A5,
	RAM_A6,
	RAM_A7,
	RAM_A8,
	RAM_A9,
	RAM_A10,
	RAM_A11,
	RAM_A12,
	RAM_A13,
	RAM_BA0,
	RAM_BA1,
	RAM_CAS_N,
	RAM_CKE,
	RAM_CK_N,
	RAM_CK_P,
	RAM_CS_N,
	RAM_D0,
	RAM_D1,
	RAM_D2,
	RAM_D3,
	RAM_D4,
	RAM_D5,
	RAM_D6,
	RAM_D7,
	RAM_D8,
	RAM_D9,
	RAM_D10,
	RAM_D11,
	RAM_D12,
	RAM_D13,
	RAM_D14,
	RAM_D15,
	RAM_LDQS,
	RAM_UDQS,
	RAM_LDM,
	RAM_RAS_N,
	RAM_UDM,
	RAM_WS_N,
	RXD_0,
	RXD_1,
	RXD_2,
	RXD_3,
	RX_CLK,
	RX_DV,
	RX_ER,
	SD_CLK,
	SD_CMD,
	SD_DAT0,
	SD_DAT1,
	SD_DAT2,
	SD_DAT3,
	TXD_0,
	TXD_1,
	TXD_2,
	TXD_3,
	TX_EN,
	TX_CLK,
	TEMP_SC,
	TEMP_CS_N,
	CPU_RST_N,
	PBSW_N,
	RECONFIG_SW2,
	RECONFIG_SW1,
	F_LED0,
	F_LED1,
	F_LED2,
	F_LED3,
	F_LED4,
	F_LED5,
	F_LED6,
	F_LED7,
	CLK_FPGA_50M,
	TEMP_MOSI,
	TEMP_MISO,
	msdram_clk_out_p,
	msdram_clk_out_n,
	msdram_ba,
	msdram_a,
	msdram_cs,
	msdram_cas,
	msdram_ras,
	msdram_we,
	msdram_dqm,
	msdram_dq,
	msdram_dqs,
	msdram_cke
// {ALTERA_ARGS_END} DO NOT REMOVE THIS LINE!

);

// {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!
input			Clock;
input			Reset;
output			led;
input			ETH_COL;
input			ETH_CRS;
output			ETH_RESET_N;
input			EXP_PRESENT;
output			RESET_EXP_N;
output			MDC;
inout			MDIO;
input			P1;
input			P3;
input			P2;
input			P4;
input			P5;
input			P6;
input			P7;
input			P8;
input			P9;
input			P10;
input			P11;
input			P13;
input			P12;
input			P14;
input			P15;
input			P16;
input			P17;
input			P18;
input			P19;
input			P20;
input			P21;
input			P22;
input			P23;
input			P24;
input			P25;
input			P26;
input			P27;
input			P28;
input			P29;
input			P35;
input			P36;
input			P37;
input			P38;
input			P39;
input			P40;
input			P41;
input			P42;
input			P43;
input			P44;
input			P45;
input			P46;
input			P47;
input			P48;
input			P49;
input			P50;
input			P51;
input			P52;
input			P53;
input			P54;
input			P55;
input			P56;
input			P57;
input			P58;
input			P59;
input			P60;
output			RAM_A0;
output			RAM_A1;
output			RAM_A2;
output			RAM_A3;
output			RAM_A4;
output			RAM_A5;
output			RAM_A6;
output			RAM_A7;
output			RAM_A8;
output			RAM_A9;
output			RAM_A10;
output			RAM_A11;
output			RAM_A12;
output			RAM_A13;
output			RAM_BA0;
output			RAM_BA1;
output			RAM_CAS_N;
output			RAM_CKE;
output			RAM_CK_N;
output			RAM_CK_P;
output			RAM_CS_N;
inout			RAM_D0;
inout			RAM_D1;
inout			RAM_D2;
inout			RAM_D3;
inout			RAM_D4;
inout			RAM_D5;
inout			RAM_D6;
inout			RAM_D7;
inout			RAM_D8;
inout			RAM_D9;
inout			RAM_D10;
inout			RAM_D11;
inout			RAM_D12;
inout			RAM_D13;
inout			RAM_D14;
inout			RAM_D15;
inout			RAM_LDQS;
inout			RAM_UDQS;
output			RAM_LDM;
output			RAM_RAS_N;
output			RAM_UDM;
output			RAM_WS_N;
input			RXD_0;
input			RXD_1;
input			RXD_2;
input			RXD_3;
input			RX_CLK;
input			RX_DV;
input			RX_ER;
output			SD_CLK;
inout			SD_CMD;
inout			SD_DAT0;
output			SD_DAT1;
inout			SD_DAT2;
inout			SD_DAT3;
output			TXD_0;
output			TXD_1;
output			TXD_2;
output			TXD_3;
output			TX_EN;
input			TX_CLK;
input			TEMP_SC;
input			TEMP_CS_N;
input			CPU_RST_N;
input			PBSW_N;
input			RECONFIG_SW2;
input			RECONFIG_SW1;
input			F_LED0;
input			F_LED1;
input			F_LED2;
input			F_LED3;
input			F_LED4;
input			F_LED5;
input			F_LED6;
input			F_LED7;
input			CLK_FPGA_50M;
input			TEMP_MOSI;
input			TEMP_MISO;
input			msdram_clk_out_p;
input			msdram_clk_out_n;
input			msdram_ba;
input			msdram_a;
input			msdram_cs;
input			msdram_cas;
input			msdram_ras;
input			msdram_we;
input			msdram_dqm;
input			msdram_dq;
input			msdram_dqs;
input			msdram_cke;

// {ALTERA_IO_END} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_BEGIN} DO NOT REMOVE THIS LINE!
// {ALTERA_MODULE_END} DO NOT REMOVE THIS LINE!
endmodule
