////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_module_synthesis.v
// /___/   /\     Timestamp: Wed Jun  6 08:10:56 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top_module.ngc top_module_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: top_module.ngc
// Output file	: /home/hh/ISE/Projects/hhhh/netgen/synthesis/top_module_synthesis.v
// # of Modules	: 1
// Design Name	: top_module
// Xilinx        : /home/hh/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top_module (
  clk_1MHz, clk, PWM1, PWM2, Key_Up, Key_Switch, clk_1KHz, clk_50Hz, SEG_A, SEG_D
);
  output clk_1MHz;
  input clk;
  output PWM1;
  output PWM2;
  input Key_Up;
  input Key_Switch;
  output clk_1KHz;
  output clk_50Hz;
  output [3 : 0] SEG_A;
  output [7 : 0] SEG_D;
  wire Channel_0;
  wire Channel_inv;
  wire Key_Switch_BUFGP_3;
  wire Key_Up_BUFGP_5;
  wire N0;
  wire N1;
  wire N10;
  wire N14;
  wire N16;
  wire N18;
  wire N2;
  wire N20;
  wire N24;
  wire N26;
  wire N28;
  wire N3;
  wire N32;
  wire N34;
  wire N35;
  wire N36;
  wire N37;
  wire N6;
  wire N8;
  wire PWM1_OBUF_26;
  wire PWM2_OBUF_28;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire SEG_D_1_OBUF_51;
  wire SEG_D_2_OBUF_52;
  wire SEG_D_3_OBUF_53;
  wire SEG_D_4_OBUF_54;
  wire SEG_D_5_OBUF_55;
  wire SEG_D_6_OBUF_56;
  wire SEG_D_7_OBUF_57;
  wire clk_BUFGP_62;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<2>_rt_66 ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[0] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[1] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[3] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[4] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[5] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[6] ;
  wire \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[7] ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<10>_rt_80 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<11>_rt_82 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<12>_rt_84 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<13>_rt_86 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<14>_rt_88 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<1>_rt_90 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<2>_rt_92 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<3>_rt_94 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<4>_rt_96 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<5>_rt_98 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<6>_rt_100 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<7>_rt_102 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<8>_rt_104 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_cy<9>_rt_106 ;
  wire \clk_divs/Mcount_clk_1KHz_cnt_xor<15>_rt_108 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<1>_rt_111 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<2>_rt_113 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<3>_rt_115 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<4>_rt_117 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<5>_rt_119 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_cy<6>_rt_121 ;
  wire \clk_divs/Mcount_clk_1MHz_cnt_xor<7>_rt_123 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<1>_rt_126 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<2>_rt_128 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<3>_rt_130 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<4>_rt_132 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<5>_rt_134 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_cy<6>_rt_136 ;
  wire \clk_divs/Mcount_clk_50Hz_cnt_xor<7>_rt_138 ;
  wire \clk_divs/Result<0>1 ;
  wire \clk_divs/Result<0>2 ;
  wire \clk_divs/Result<1>1 ;
  wire \clk_divs/Result<1>2 ;
  wire \clk_divs/Result<2>1 ;
  wire \clk_divs/Result<2>2 ;
  wire \clk_divs/Result<3>1 ;
  wire \clk_divs/Result<3>2 ;
  wire \clk_divs/Result<4>1 ;
  wire \clk_divs/Result<4>2 ;
  wire \clk_divs/Result<5>1 ;
  wire \clk_divs/Result<5>2 ;
  wire \clk_divs/Result<6>1 ;
  wire \clk_divs/Result<6>2 ;
  wire \clk_divs/Result<7>1 ;
  wire \clk_divs/Result<7>2 ;
  wire \clk_divs/clk_1KHz_171 ;
  wire \clk_divs/clk_1KHz1 ;
  wire \clk_divs/clk_1KHz_cnt_cmp_ge0000 ;
  wire \clk_divs/clk_1KHz_not0001 ;
  wire \clk_divs/clk_1MHz_191 ;
  wire \clk_divs/clk_1MHz_cnt_cmp_eq0000 ;
  wire \clk_divs/clk_1MHz_cnt_cmp_eq000011_201 ;
  wire \clk_divs/clk_1MHz_cnt_cmp_eq000023_202 ;
  wire \clk_divs/clk_1MHz_not0001 ;
  wire \clk_divs/clk_50Hz_204 ;
  wire \clk_divs/clk_50Hz_cnt_cmp_eq0000 ;
  wire \clk_divs/clk_50Hz_cnt_cmp_eq000010_214 ;
  wire \clk_divs/clk_50Hz_cnt_cmp_eq000023_215 ;
  wire \clk_divs/clk_50Hz_not0001 ;
  wire duty1_and0000_222;
  wire duty2_and0000_228;
  wire \pwm1/Mcount_PWM1_CNT_cy<1>_rt_253 ;
  wire \pwm1/Mcount_PWM1_CNT_cy<2>_rt_255 ;
  wire \pwm1/Mcount_PWM1_CNT_cy<3>_rt_257 ;
  wire \pwm1/Mcount_PWM1_CNT_cy<4>_rt_259 ;
  wire \pwm1/Mcount_PWM1_CNT_cy<5>_rt_261 ;
  wire \pwm1/Mcount_PWM1_CNT_cy<6>_rt_263 ;
  wire \pwm1/Mcount_PWM1_CNT_xor<7>_rt_265 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<1>_rt_268 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<2>_rt_270 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<3>_rt_272 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<4>_rt_274 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<5>_rt_276 ;
  wire \pwm1/Mcount_PWM2_CNT_cy<6>_rt_278 ;
  wire \pwm1/Mcount_PWM2_CNT_xor<7>_rt_280 ;
  wire \pwm1/N2 ;
  wire \pwm1/N3 ;
  wire \pwm1/PWM1_CNT_cmp_ge0000 ;
  wire \pwm1/PWM1_CNT_cmp_ge000010_292 ;
  wire \pwm1/PWM1_CNT_cmp_ge000017_293 ;
  wire \pwm1/PWM1_cmp_ge0000 ;
  wire \pwm1/PWM2_CNT_cmp_ge0000 ;
  wire \pwm1/PWM2_CNT_cmp_ge000010_304 ;
  wire \pwm1/PWM2_CNT_cmp_ge000017_305 ;
  wire \pwm1/PWM2_cmp_ge0000 ;
  wire \pwm1/Result<0>1 ;
  wire \pwm1/Result<1>1 ;
  wire \pwm1/Result<2>1 ;
  wire \pwm1/Result<3>1 ;
  wire \pwm1/Result<4>1 ;
  wire \pwm1/Result<5>1 ;
  wire \pwm1/Result<6>1 ;
  wire \pwm1/Result<7>1 ;
  wire \pwm1/SEG_data<6>16_324 ;
  wire \pwm1/seg7/Mdecod_SEG_A_mux000011 ;
  wire \pwm1/seg7/Mdecod_SEG_A_mux000021 ;
  wire \pwm1/seg7/Mmux_num_mux00002102_327 ;
  wire \pwm1/seg7/Mmux_num_mux0000212_328 ;
  wire \pwm1/seg7/Mmux_num_mux00002121_329 ;
  wire \pwm1/seg7/Mmux_num_mux00002136_330 ;
  wire \pwm1/seg7/Mmux_num_mux00002144_331 ;
  wire \pwm1/seg7/Mmux_num_mux00002150_332 ;
  wire \pwm1/seg7/Mmux_num_mux00002190 ;
  wire \pwm1/seg7/Mmux_num_mux0000240_334 ;
  wire \pwm1/seg7/Mmux_num_mux00004175_335 ;
  wire \pwm1/seg7/Mmux_num_mux00004183_336 ;
  wire \pwm1/seg7/Mmux_num_mux00004205 ;
  wire \pwm1/seg7/Mmux_num_mux0000451_338 ;
  wire \pwm1/seg7/Mmux_num_mux00006100_339 ;
  wire \pwm1/seg7/Mmux_num_mux0000689_340 ;
  wire \pwm1/seg7/Mmux_num_mux00008111 ;
  wire \pwm1/seg7/Mmux_num_mux0000853_342 ;
  wire [4 : 0] Result;
  wire [6 : 0] \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy ;
  wire [14 : 0] \clk_divs/Mcount_clk_1KHz_cnt_cy ;
  wire [0 : 0] \clk_divs/Mcount_clk_1KHz_cnt_lut ;
  wire [6 : 0] \clk_divs/Mcount_clk_1MHz_cnt_cy ;
  wire [0 : 0] \clk_divs/Mcount_clk_1MHz_cnt_lut ;
  wire [6 : 0] \clk_divs/Mcount_clk_50Hz_cnt_cy ;
  wire [0 : 0] \clk_divs/Mcount_clk_50Hz_cnt_lut ;
  wire [15 : 0] \clk_divs/Result ;
  wire [15 : 0] \clk_divs/clk_1KHz_cnt ;
  wire [7 : 0] \clk_divs/clk_1MHz_cnt ;
  wire [7 : 0] \clk_divs/clk_50Hz_cnt ;
  wire [4 : 0] duty1;
  wire [4 : 0] duty2;
  wire [4 : 0] \pwm1/Mcompar_PWM1_cmp_ge0000_cy ;
  wire [5 : 0] \pwm1/Mcompar_PWM1_cmp_ge0000_lut ;
  wire [4 : 0] \pwm1/Mcompar_PWM2_cmp_ge0000_cy ;
  wire [5 : 0] \pwm1/Mcompar_PWM2_cmp_ge0000_lut ;
  wire [6 : 0] \pwm1/Mcount_PWM1_CNT_cy ;
  wire [0 : 0] \pwm1/Mcount_PWM1_CNT_lut ;
  wire [6 : 0] \pwm1/Mcount_PWM2_CNT_cy ;
  wire [0 : 0] \pwm1/Mcount_PWM2_CNT_lut ;
  wire [7 : 0] \pwm1/PWM1_CNT ;
  wire [7 : 0] \pwm1/PWM2_CNT ;
  wire [7 : 0] \pwm1/Result ;
  wire [6 : 6] \pwm1/SEG_data ;
  wire [1 : 1] \pwm1/seg7/Result ;
  wire [3 : 0] \pwm1/seg7/SEG_A ;
  wire [0 : 0] \pwm1/seg7/SEG_A_mux0000 ;
  wire [3 : 0] \pwm1/seg7/num ;
  wire [2 : 2] \pwm1/seg7/num_mux0000 ;
  wire [1 : 0] \pwm1/seg7/pos ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  Channel (
    .C(Key_Switch_BUFGP_3),
    .D(Channel_inv),
    .Q(Channel_0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty1_0 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_0),
    .D(Result[0]),
    .R(duty1_and0000_222),
    .Q(duty1[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty1_1 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_0),
    .D(Result[1]),
    .R(duty1_and0000_222),
    .Q(duty1[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty1_2 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_0),
    .D(Result[2]),
    .R(duty1_and0000_222),
    .Q(duty1[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty1_3 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_0),
    .D(Result[3]),
    .R(duty1_and0000_222),
    .Q(duty1[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty1_4 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_0),
    .D(Result[4]),
    .R(duty1_and0000_222),
    .Q(duty1[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty2_0 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_inv),
    .D(\Result<0>1 ),
    .R(duty2_and0000_228),
    .Q(duty2[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty2_1 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_inv),
    .D(\Result<1>1 ),
    .R(duty2_and0000_228),
    .Q(duty2[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty2_2 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_inv),
    .D(\Result<2>1 ),
    .R(duty2_and0000_228),
    .Q(duty2[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty2_3 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_inv),
    .D(\Result<3>1 ),
    .R(duty2_and0000_228),
    .Q(duty2[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  duty2_4 (
    .C(Key_Up_BUFGP_5),
    .CE(Channel_inv),
    .D(\Result<4>1 ),
    .R(duty2_and0000_228),
    .Q(duty2[4])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<15>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [14]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_xor<15>_rt_108 ),
    .O(\clk_divs/Result [15])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<14>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [13]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<14>_rt_88 ),
    .O(\clk_divs/Result [14])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<14>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [13]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<14>_rt_88 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [14])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<13>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [12]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<13>_rt_86 ),
    .O(\clk_divs/Result [13])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<13>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [12]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<13>_rt_86 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [13])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<12>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [11]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<12>_rt_84 ),
    .O(\clk_divs/Result [12])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<12>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [11]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<12>_rt_84 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [12])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<11>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [10]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<11>_rt_82 ),
    .O(\clk_divs/Result [11])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<11>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [10]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<11>_rt_82 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [11])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<10>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [9]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<10>_rt_80 ),
    .O(\clk_divs/Result [10])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<10>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [9]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<10>_rt_80 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [10])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<9>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [8]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<9>_rt_106 ),
    .O(\clk_divs/Result [9])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<9>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [8]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<9>_rt_106 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [9])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<8>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [7]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<8>_rt_104 ),
    .O(\clk_divs/Result [8])
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<8>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [7]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<8>_rt_104 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [8])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<7>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [6]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<7>_rt_102 ),
    .O(\clk_divs/Result<7>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<7>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [6]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<7>_rt_102 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [7])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<6>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [5]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<6>_rt_100 ),
    .O(\clk_divs/Result<6>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<6>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [5]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<6>_rt_100 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [6])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<5>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [4]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<5>_rt_98 ),
    .O(\clk_divs/Result<5>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<5>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [4]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<5>_rt_98 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [5])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<4>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [3]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<4>_rt_96 ),
    .O(\clk_divs/Result<4>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<4>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [3]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<4>_rt_96 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [4])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<3>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [2]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<3>_rt_94 ),
    .O(\clk_divs/Result<3>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<3>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [2]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<3>_rt_94 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [3])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<2>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [1]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<2>_rt_92 ),
    .O(\clk_divs/Result<2>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<2>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [1]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<2>_rt_92 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [2])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<1>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [0]),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_cy<1>_rt_90 ),
    .O(\clk_divs/Result<1>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<1>  (
    .CI(\clk_divs/Mcount_clk_1KHz_cnt_cy [0]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_cy<1>_rt_90 ),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [1])
  );
  XORCY   \clk_divs/Mcount_clk_1KHz_cnt_xor<0>  (
    .CI(N0),
    .LI(\clk_divs/Mcount_clk_1KHz_cnt_lut [0]),
    .O(\clk_divs/Result<0>2 )
  );
  MUXCY   \clk_divs/Mcount_clk_1KHz_cnt_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\clk_divs/Mcount_clk_1KHz_cnt_lut [0]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy [0])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<7>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [6]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_xor<7>_rt_138 ),
    .O(\clk_divs/Result<7>1 )
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<6>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [5]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<6>_rt_136 ),
    .O(\clk_divs/Result<6>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<6>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [5]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<6>_rt_136 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [6])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<5>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [4]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<5>_rt_134 ),
    .O(\clk_divs/Result<5>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<5>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [4]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<5>_rt_134 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [5])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<4>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [3]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<4>_rt_132 ),
    .O(\clk_divs/Result<4>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<4>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [3]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<4>_rt_132 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [4])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<3>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [2]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<3>_rt_130 ),
    .O(\clk_divs/Result<3>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<3>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [2]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<3>_rt_130 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [3])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<2>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [1]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<2>_rt_128 ),
    .O(\clk_divs/Result<2>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<2>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [1]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<2>_rt_128 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [2])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<1>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [0]),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_cy<1>_rt_126 ),
    .O(\clk_divs/Result<1>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<1>  (
    .CI(\clk_divs/Mcount_clk_50Hz_cnt_cy [0]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_cy<1>_rt_126 ),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [1])
  );
  XORCY   \clk_divs/Mcount_clk_50Hz_cnt_xor<0>  (
    .CI(N0),
    .LI(\clk_divs/Mcount_clk_50Hz_cnt_lut [0]),
    .O(\clk_divs/Result<0>1 )
  );
  MUXCY   \clk_divs/Mcount_clk_50Hz_cnt_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\clk_divs/Mcount_clk_50Hz_cnt_lut [0]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy [0])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<7>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [6]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_xor<7>_rt_123 ),
    .O(\clk_divs/Result [7])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<6>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [5]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<6>_rt_121 ),
    .O(\clk_divs/Result [6])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<6>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [5]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<6>_rt_121 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [6])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<5>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [4]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<5>_rt_119 ),
    .O(\clk_divs/Result [5])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<5>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [4]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<5>_rt_119 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [5])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<4>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [3]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<4>_rt_117 ),
    .O(\clk_divs/Result [4])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<4>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [3]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<4>_rt_117 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [4])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<3>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [2]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<3>_rt_115 ),
    .O(\clk_divs/Result [3])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<3>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [2]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<3>_rt_115 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [3])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<2>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [1]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<2>_rt_113 ),
    .O(\clk_divs/Result [2])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<2>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [1]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<2>_rt_113 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [2])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<1>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [0]),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_cy<1>_rt_111 ),
    .O(\clk_divs/Result [1])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<1>  (
    .CI(\clk_divs/Mcount_clk_1MHz_cnt_cy [0]),
    .DI(N0),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_cy<1>_rt_111 ),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [1])
  );
  XORCY   \clk_divs/Mcount_clk_1MHz_cnt_xor<0>  (
    .CI(N0),
    .LI(\clk_divs/Mcount_clk_1MHz_cnt_lut [0]),
    .O(\clk_divs/Result [0])
  );
  MUXCY   \clk_divs/Mcount_clk_1MHz_cnt_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\clk_divs/Mcount_clk_1MHz_cnt_lut [0]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy [0])
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<7>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [6]),
    .DI(N1),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[7] ),
    .O(\clk_divs/clk_1KHz_cnt_cmp_ge0000 )
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<6>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [5]),
    .DI(N0),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[6] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<6>  (
    .I0(\clk_divs/clk_1KHz_cnt [13]),
    .I1(\clk_divs/clk_1KHz_cnt [14]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[6] )
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<5>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [4]),
    .DI(N1),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[5] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<5>  (
    .I0(\clk_divs/clk_1KHz_cnt [9]),
    .I1(\clk_divs/clk_1KHz_cnt [10]),
    .I2(\clk_divs/clk_1KHz_cnt [11]),
    .I3(\clk_divs/clk_1KHz_cnt [12]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[5] )
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<4>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [3]),
    .DI(N0),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[4] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<4>  (
    .I0(\clk_divs/clk_1KHz_cnt [7]),
    .I1(\clk_divs/clk_1KHz_cnt [8]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[4] )
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<3>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [2]),
    .DI(N1),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[3] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [3])
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<2>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [1]),
    .DI(N0),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<2>_rt_66 ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [2])
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<1>  (
    .CI(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [0]),
    .DI(N1),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[1] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<1>  (
    .I0(\clk_divs/clk_1KHz_cnt [3]),
    .I1(\clk_divs/clk_1KHz_cnt [4]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[1] )
  );
  MUXCY   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[0] ),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<0>  (
    .I0(\clk_divs/clk_1KHz_cnt [0]),
    .I1(\clk_divs/clk_1KHz_cnt [1]),
    .I2(\clk_divs/clk_1KHz_cnt [2]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[0] )
  );
  FDR   \clk_divs/clk_1KHz_cnt_15  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [15]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [15])
  );
  FDR   \clk_divs/clk_1KHz_cnt_14  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [14]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [14])
  );
  FDR   \clk_divs/clk_1KHz_cnt_13  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [13]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [13])
  );
  FDR   \clk_divs/clk_1KHz_cnt_12  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [12]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [12])
  );
  FDR   \clk_divs/clk_1KHz_cnt_11  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [11]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [11])
  );
  FDR   \clk_divs/clk_1KHz_cnt_10  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [10]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [10])
  );
  FDR   \clk_divs/clk_1KHz_cnt_9  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [9]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [9])
  );
  FDR   \clk_divs/clk_1KHz_cnt_8  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [8]),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [8])
  );
  FDR   \clk_divs/clk_1KHz_cnt_7  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<7>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [7])
  );
  FDR   \clk_divs/clk_1KHz_cnt_6  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<6>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [6])
  );
  FDR   \clk_divs/clk_1KHz_cnt_5  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<5>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [5])
  );
  FDR   \clk_divs/clk_1KHz_cnt_4  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<4>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [4])
  );
  FDR   \clk_divs/clk_1KHz_cnt_3  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<3>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [3])
  );
  FDR   \clk_divs/clk_1KHz_cnt_2  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<2>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [2])
  );
  FDR   \clk_divs/clk_1KHz_cnt_1  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<1>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [1])
  );
  FDR   \clk_divs/clk_1KHz_cnt_0  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result<0>2 ),
    .R(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .Q(\clk_divs/clk_1KHz_cnt [0])
  );
  FDR   \clk_divs/clk_50Hz_cnt_7  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<7>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [7])
  );
  FDR   \clk_divs/clk_50Hz_cnt_6  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<6>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [6])
  );
  FDR   \clk_divs/clk_50Hz_cnt_5  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<5>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [5])
  );
  FDR   \clk_divs/clk_50Hz_cnt_4  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<4>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [4])
  );
  FDR   \clk_divs/clk_50Hz_cnt_3  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<3>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [3])
  );
  FDR   \clk_divs/clk_50Hz_cnt_2  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<2>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [2])
  );
  FDR   \clk_divs/clk_50Hz_cnt_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<1>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [1])
  );
  FDR   \clk_divs/clk_50Hz_cnt_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\clk_divs/Result<0>1 ),
    .R(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_50Hz_cnt [0])
  );
  FDR   \clk_divs/clk_1MHz_cnt_7  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [7]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [7])
  );
  FDR   \clk_divs/clk_1MHz_cnt_6  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [6]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [6])
  );
  FDR   \clk_divs/clk_1MHz_cnt_5  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [5]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [5])
  );
  FDR   \clk_divs/clk_1MHz_cnt_4  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [4]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [4])
  );
  FDR   \clk_divs/clk_1MHz_cnt_3  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [3]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [3])
  );
  FDR   \clk_divs/clk_1MHz_cnt_2  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [2]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [2])
  );
  FDR   \clk_divs/clk_1MHz_cnt_1  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [1]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [1])
  );
  FDR   \clk_divs/clk_1MHz_cnt_0  (
    .C(clk_BUFGP_62),
    .D(\clk_divs/Result [0]),
    .R(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .Q(\clk_divs/clk_1MHz_cnt [0])
  );
  FDE   \clk_divs/clk_50Hz  (
    .C(\clk_divs/clk_1KHz_171 ),
    .CE(\clk_divs/clk_50Hz_cnt_cmp_eq0000 ),
    .D(\clk_divs/clk_50Hz_not0001 ),
    .Q(\clk_divs/clk_50Hz_204 )
  );
  FDE   \clk_divs/clk_1KHz  (
    .C(clk_BUFGP_62),
    .CE(\clk_divs/clk_1KHz_cnt_cmp_ge0000 ),
    .D(\clk_divs/clk_1KHz_not0001 ),
    .Q(\clk_divs/clk_1KHz1 )
  );
  FDE   \clk_divs/clk_1MHz  (
    .C(clk_BUFGP_62),
    .CE(\clk_divs/clk_1MHz_cnt_cmp_eq0000 ),
    .D(\clk_divs/clk_1MHz_not0001 ),
    .Q(\clk_divs/clk_1MHz_191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/num_2  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/num_mux0000 [2]),
    .Q(\pwm1/seg7/num [2])
  );
  FD   \pwm1/seg7/SEG_A_3  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/SEG_A_mux0000 [0]),
    .Q(\pwm1/seg7/SEG_A [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/pos_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Result [1]),
    .Q(\pwm1/seg7/pos [1])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<7>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [6]),
    .LI(\pwm1/Mcount_PWM2_CNT_xor<7>_rt_280 ),
    .O(\pwm1/Result [7])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<6>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [5]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<6>_rt_278 ),
    .O(\pwm1/Result [6])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<6>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [5]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<6>_rt_278 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [6])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<5>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [4]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<5>_rt_276 ),
    .O(\pwm1/Result [5])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<5>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [4]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<5>_rt_276 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [5])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<4>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [3]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<4>_rt_274 ),
    .O(\pwm1/Result [4])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<4>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [3]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<4>_rt_274 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [4])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<3>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [2]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<3>_rt_272 ),
    .O(\pwm1/Result [3])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<3>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [2]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<3>_rt_272 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [3])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<2>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [1]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<2>_rt_270 ),
    .O(\pwm1/Result [2])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<2>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [1]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<2>_rt_270 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [2])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<1>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [0]),
    .LI(\pwm1/Mcount_PWM2_CNT_cy<1>_rt_268 ),
    .O(\pwm1/Result [1])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<1>  (
    .CI(\pwm1/Mcount_PWM2_CNT_cy [0]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM2_CNT_cy<1>_rt_268 ),
    .O(\pwm1/Mcount_PWM2_CNT_cy [1])
  );
  XORCY   \pwm1/Mcount_PWM2_CNT_xor<0>  (
    .CI(N0),
    .LI(\pwm1/Mcount_PWM2_CNT_lut [0]),
    .O(\pwm1/Result [0])
  );
  MUXCY   \pwm1/Mcount_PWM2_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\pwm1/Mcount_PWM2_CNT_lut [0]),
    .O(\pwm1/Mcount_PWM2_CNT_cy [0])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<5>  (
    .CI(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [4]),
    .DI(N1),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [5]),
    .O(\pwm1/PWM2_cmp_ge0000 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<5>  (
    .I0(\pwm1/PWM2_CNT [5]),
    .I1(\pwm1/PWM2_CNT [6]),
    .I2(\pwm1/PWM2_CNT [7]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [5])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<4>  (
    .CI(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [3]),
    .DI(\pwm1/PWM2_CNT [4]),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [4]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<4>  (
    .I0(\pwm1/PWM2_CNT [4]),
    .I1(duty2[4]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [4])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<3>  (
    .CI(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [2]),
    .DI(\pwm1/PWM2_CNT [3]),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [3]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<3>  (
    .I0(\pwm1/PWM2_CNT [3]),
    .I1(duty2[3]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [3])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<2>  (
    .CI(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [1]),
    .DI(\pwm1/PWM2_CNT [2]),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [2]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<2>  (
    .I0(\pwm1/PWM2_CNT [2]),
    .I1(duty2[2]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [2])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<1>  (
    .CI(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [0]),
    .DI(\pwm1/PWM2_CNT [1]),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [1]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<1>  (
    .I0(\pwm1/PWM2_CNT [1]),
    .I1(duty2[1]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [1])
  );
  MUXCY   \pwm1/Mcompar_PWM2_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(\pwm1/PWM2_CNT [0]),
    .S(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [0]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM2_cmp_ge0000_lut<0>  (
    .I0(\pwm1/PWM2_CNT [0]),
    .I1(duty2[0]),
    .O(\pwm1/Mcompar_PWM2_cmp_ge0000_lut [0])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<7>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [6]),
    .LI(\pwm1/Mcount_PWM1_CNT_xor<7>_rt_265 ),
    .O(\pwm1/Result<7>1 )
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<6>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [5]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<6>_rt_263 ),
    .O(\pwm1/Result<6>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<6>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [5]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<6>_rt_263 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [6])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<5>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [4]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<5>_rt_261 ),
    .O(\pwm1/Result<5>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<5>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [4]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<5>_rt_261 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [5])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<4>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [3]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<4>_rt_259 ),
    .O(\pwm1/Result<4>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<4>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [3]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<4>_rt_259 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [4])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<3>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [2]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<3>_rt_257 ),
    .O(\pwm1/Result<3>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<3>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [2]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<3>_rt_257 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [3])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<2>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [1]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<2>_rt_255 ),
    .O(\pwm1/Result<2>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<2>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [1]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<2>_rt_255 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [2])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<1>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [0]),
    .LI(\pwm1/Mcount_PWM1_CNT_cy<1>_rt_253 ),
    .O(\pwm1/Result<1>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<1>  (
    .CI(\pwm1/Mcount_PWM1_CNT_cy [0]),
    .DI(N0),
    .S(\pwm1/Mcount_PWM1_CNT_cy<1>_rt_253 ),
    .O(\pwm1/Mcount_PWM1_CNT_cy [1])
  );
  XORCY   \pwm1/Mcount_PWM1_CNT_xor<0>  (
    .CI(N0),
    .LI(\pwm1/Mcount_PWM1_CNT_lut [0]),
    .O(\pwm1/Result<0>1 )
  );
  MUXCY   \pwm1/Mcount_PWM1_CNT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\pwm1/Mcount_PWM1_CNT_lut [0]),
    .O(\pwm1/Mcount_PWM1_CNT_cy [0])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<5>  (
    .CI(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [4]),
    .DI(N1),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [5]),
    .O(\pwm1/PWM1_cmp_ge0000 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<5>  (
    .I0(\pwm1/PWM1_CNT [5]),
    .I1(\pwm1/PWM1_CNT [6]),
    .I2(\pwm1/PWM1_CNT [7]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [5])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<4>  (
    .CI(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [3]),
    .DI(\pwm1/PWM1_CNT [4]),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [4]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<4>  (
    .I0(\pwm1/PWM1_CNT [4]),
    .I1(duty1[4]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [4])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<3>  (
    .CI(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [2]),
    .DI(\pwm1/PWM1_CNT [3]),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [3]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<3>  (
    .I0(\pwm1/PWM1_CNT [3]),
    .I1(duty1[3]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [3])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<2>  (
    .CI(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [1]),
    .DI(\pwm1/PWM1_CNT [2]),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [2]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<2>  (
    .I0(\pwm1/PWM1_CNT [2]),
    .I1(duty1[2]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [2])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<1>  (
    .CI(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [0]),
    .DI(\pwm1/PWM1_CNT [1]),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [1]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<1>  (
    .I0(\pwm1/PWM1_CNT [1]),
    .I1(duty1[1]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [1])
  );
  MUXCY   \pwm1/Mcompar_PWM1_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(\pwm1/PWM1_CNT [0]),
    .S(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [0]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \pwm1/Mcompar_PWM1_cmp_ge0000_lut<0>  (
    .I0(\pwm1/PWM1_CNT [0]),
    .I1(duty1[0]),
    .O(\pwm1/Mcompar_PWM1_cmp_ge0000_lut [0])
  );
  FDR   \pwm1/PWM1_CNT_7  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<7>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [7])
  );
  FDR   \pwm1/PWM1_CNT_6  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<6>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [6])
  );
  FDR   \pwm1/PWM1_CNT_5  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<5>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [5])
  );
  FDR   \pwm1/PWM1_CNT_4  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<4>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [4])
  );
  FDR   \pwm1/PWM1_CNT_3  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<3>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [3])
  );
  FDR   \pwm1/PWM1_CNT_2  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<2>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [2])
  );
  FDR   \pwm1/PWM1_CNT_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<1>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [1])
  );
  FDR   \pwm1/PWM1_CNT_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result<0>1 ),
    .R(\pwm1/PWM1_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM1_CNT [0])
  );
  FDR   \pwm1/PWM2_CNT_7  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [7]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [7])
  );
  FDR   \pwm1/PWM2_CNT_6  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [6]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [6])
  );
  FDR   \pwm1/PWM2_CNT_5  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [5]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [5])
  );
  FDR   \pwm1/PWM2_CNT_4  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [4]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [4])
  );
  FDR   \pwm1/PWM2_CNT_3  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [3]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [3])
  );
  FDR   \pwm1/PWM2_CNT_2  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [2]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [2])
  );
  FDR   \pwm1/PWM2_CNT_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [1]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [1])
  );
  FDR   \pwm1/PWM2_CNT_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/Result [0]),
    .R(\pwm1/PWM2_CNT_cmp_ge0000 ),
    .Q(\pwm1/PWM2_CNT [0])
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \pwm1/Mrom_duty2_level_mux00001121  (
    .I0(duty2[4]),
    .I1(duty2[0]),
    .I2(duty2[2]),
    .I3(duty2[3]),
    .O(\pwm1/N3 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \pwm1/Mrom_duty1_level_mux00001121  (
    .I0(duty1[4]),
    .I1(duty1[0]),
    .I2(duty1[2]),
    .I3(duty1[3]),
    .O(\pwm1/N2 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \pwm1/SEG_data<6>16  (
    .I0(duty2[4]),
    .I1(duty2[2]),
    .I2(duty2[1]),
    .I3(\pwm1/N3 ),
    .O(\pwm1/SEG_data<6>16_324 )
  );
  LUT4 #(
    .INIT ( 16'h9190 ))
  \pwm1/seg7/Mrom_SEG_D21  (
    .I0(\pwm1/seg7/num [3]),
    .I1(\pwm1/seg7/num [2]),
    .I2(\pwm1/seg7/num [0]),
    .I3(\pwm1/seg7/num [1]),
    .O(SEG_D_2_OBUF_52)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \pwm1/seg7/Mrom_SEG_D51  (
    .I0(\pwm1/seg7/num [1]),
    .I1(\pwm1/seg7/num [2]),
    .I2(\pwm1/seg7/num [3]),
    .I3(\pwm1/seg7/num [0]),
    .O(SEG_D_5_OBUF_55)
  );
  LUT4 #(
    .INIT ( 16'h90F2 ))
  \pwm1/seg7/Mrom_SEG_D31  (
    .I0(\pwm1/seg7/num [2]),
    .I1(\pwm1/seg7/num [1]),
    .I2(\pwm1/seg7/num [0]),
    .I3(\pwm1/seg7/num [3]),
    .O(SEG_D_3_OBUF_53)
  );
  LUT4 #(
    .INIT ( 16'h8894 ))
  \pwm1/seg7/Mrom_SEG_D71  (
    .I0(\pwm1/seg7/num [3]),
    .I1(\pwm1/seg7/num [0]),
    .I2(\pwm1/seg7/num [2]),
    .I3(\pwm1/seg7/num [1]),
    .O(SEG_D_7_OBUF_57)
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \pwm1/seg7/Mrom_SEG_D61  (
    .I0(\pwm1/seg7/num [2]),
    .I1(\pwm1/seg7/num [0]),
    .I2(\pwm1/seg7/num [1]),
    .I3(\pwm1/seg7/num [3]),
    .O(SEG_D_6_OBUF_56)
  );
  LUT4 #(
    .INIT ( 16'h2141 ))
  \pwm1/seg7/Mrom_SEG_D111  (
    .I0(\pwm1/seg7/num [1]),
    .I1(\pwm1/seg7/num [3]),
    .I2(\pwm1/seg7/num [2]),
    .I3(\pwm1/seg7/num [0]),
    .O(SEG_D_1_OBUF_51)
  );
  LUT4 #(
    .INIT ( 16'hC118 ))
  \pwm1/seg7/Mrom_SEG_D41  (
    .I0(\pwm1/seg7/num [3]),
    .I1(\pwm1/seg7/num [1]),
    .I2(\pwm1/seg7/num [0]),
    .I3(\pwm1/seg7/num [2]),
    .O(SEG_D_4_OBUF_54)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \pwm1/seg7/Mdecod_SEG_A_mux000031  (
    .I0(\pwm1/seg7/pos [0]),
    .I1(\pwm1/seg7/pos [1]),
    .O(\pwm1/seg7/SEG_A_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pwm1/seg7/Mcount_pos_xor<1>11  (
    .I0(\pwm1/seg7/pos [0]),
    .I1(\pwm1/seg7/pos [1]),
    .O(\pwm1/seg7/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_duty2_xor<1>11  (
    .I0(duty2[1]),
    .I1(duty2[0]),
    .O(\Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_duty1_xor<1>11  (
    .I0(duty1[1]),
    .I1(duty1[0]),
    .O(Result[1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_duty2_xor<2>11  (
    .I0(duty2[2]),
    .I1(duty2[0]),
    .I2(duty2[1]),
    .O(\Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_duty1_xor<2>11  (
    .I0(duty1[2]),
    .I1(duty1[0]),
    .I2(duty1[1]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \pwm1/seg7/Mmux_num_mux00004175  (
    .I0(Channel_0),
    .I1(duty1[4]),
    .I2(duty1[2]),
    .I3(duty1[3]),
    .O(\pwm1/seg7/Mmux_num_mux00004175_335 )
  );
  LUT4 #(
    .INIT ( 16'h0A08 ))
  \pwm1/seg7/Mmux_num_mux00004183  (
    .I0(duty2[4]),
    .I1(duty2[3]),
    .I2(Channel_0),
    .I3(duty2[2]),
    .O(\pwm1/seg7/Mmux_num_mux00004183_336 )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \Mcount_duty2_xor<4>11  (
    .I0(duty2[4]),
    .I1(duty2[3]),
    .I2(N3),
    .O(\Result<4>1 )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \Mcount_duty1_xor<4>11  (
    .I0(duty1[4]),
    .I1(duty1[3]),
    .I2(N2),
    .O(Result[4])
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  \pwm1/seg7/Mmux_num_mux0000212  (
    .I0(duty1[4]),
    .I1(duty1[1]),
    .I2(duty1[2]),
    .I3(duty1[0]),
    .O(\pwm1/seg7/Mmux_num_mux0000212_328 )
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  \pwm1/seg7/Mmux_num_mux0000240  (
    .I0(duty2[4]),
    .I1(duty2[1]),
    .I2(duty2[2]),
    .I3(duty2[0]),
    .O(\pwm1/seg7/Mmux_num_mux0000240_334 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pwm1/seg7/Mmux_num_mux00002102  (
    .I0(\pwm1/seg7/pos [1]),
    .I1(Channel_0),
    .O(\pwm1/seg7/Mmux_num_mux00002102_327 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \pwm1/seg7/Mmux_num_mux00002121  (
    .I0(duty1[4]),
    .I1(duty1[1]),
    .I2(duty1[2]),
    .I3(duty1[3]),
    .O(\pwm1/seg7/Mmux_num_mux00002121_329 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \pwm1/seg7/Mmux_num_mux00002136  (
    .I0(duty2[4]),
    .I1(duty2[1]),
    .I2(duty2[2]),
    .I3(duty2[3]),
    .O(\pwm1/seg7/Mmux_num_mux00002136_330 )
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \pwm1/seg7/Mmux_num_mux00002144  (
    .I0(\pwm1/seg7/Mmux_num_mux00002136_330 ),
    .I1(Channel_0),
    .I2(duty2[0]),
    .O(\pwm1/seg7/Mmux_num_mux00002144_331 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \pwm1/seg7/Mmux_num_mux00002150  (
    .I0(Channel_0),
    .I1(duty1[0]),
    .I2(\pwm1/seg7/Mmux_num_mux00002121_329 ),
    .I3(\pwm1/seg7/Mmux_num_mux00002144_331 ),
    .O(\pwm1/seg7/Mmux_num_mux00002150_332 )
  );
  LUT4 #(
    .INIT ( 16'h7654 ))
  \pwm1/seg7/Mmux_num_mux00006150  (
    .I0(\pwm1/seg7/pos [0]),
    .I1(\pwm1/seg7/pos [1]),
    .I2(\pwm1/seg7/Mmux_num_mux00006100_339 ),
    .I3(\pwm1/SEG_data [6]),
    .O(\pwm1/seg7/num_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  duty2_and0000 (
    .I0(duty2[0]),
    .I1(duty2[1]),
    .I2(duty2[2]),
    .I3(N6),
    .O(duty2_and0000_228)
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  duty1_and0000 (
    .I0(duty1[0]),
    .I1(duty1[1]),
    .I2(duty1[2]),
    .I3(N8),
    .O(duty1_and0000_222)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \clk_divs/clk_50Hz_cnt_cmp_eq000023  (
    .I0(\clk_divs/clk_50Hz_cnt [4]),
    .I1(\clk_divs/clk_50Hz_cnt [5]),
    .I2(\clk_divs/clk_50Hz_cnt [6]),
    .I3(\clk_divs/clk_50Hz_cnt [7]),
    .O(\clk_divs/clk_50Hz_cnt_cmp_eq000023_215 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \clk_divs/clk_50Hz_cnt_cmp_eq000024  (
    .I0(\clk_divs/clk_50Hz_cnt_cmp_eq000010_214 ),
    .I1(\clk_divs/clk_50Hz_cnt_cmp_eq000023_215 ),
    .O(\clk_divs/clk_50Hz_cnt_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \clk_divs/clk_1MHz_cnt_cmp_eq000023  (
    .I0(\clk_divs/clk_1MHz_cnt [5]),
    .I1(\clk_divs/clk_1MHz_cnt [6]),
    .I2(\clk_divs/clk_1MHz_cnt [4]),
    .I3(\clk_divs/clk_1MHz_cnt [7]),
    .O(\clk_divs/clk_1MHz_cnt_cmp_eq000023_202 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \clk_divs/clk_1MHz_cnt_cmp_eq000024  (
    .I0(\clk_divs/clk_1MHz_cnt_cmp_eq000011_201 ),
    .I1(\clk_divs/clk_1MHz_cnt_cmp_eq000023_202 ),
    .O(\clk_divs/clk_1MHz_cnt_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pwm1/PWM2_CNT_cmp_ge000010  (
    .I0(\pwm1/PWM2_CNT [6]),
    .I1(\pwm1/PWM2_CNT [7]),
    .O(\pwm1/PWM2_CNT_cmp_ge000010_304 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \pwm1/PWM2_CNT_cmp_ge0000114  (
    .I0(\pwm1/PWM2_CNT [5]),
    .I1(\pwm1/PWM2_CNT [4]),
    .I2(\pwm1/PWM2_CNT_cmp_ge000017_305 ),
    .I3(\pwm1/PWM2_CNT_cmp_ge000010_304 ),
    .O(\pwm1/PWM2_CNT_cmp_ge0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pwm1/PWM1_CNT_cmp_ge000010  (
    .I0(\pwm1/PWM1_CNT [6]),
    .I1(\pwm1/PWM1_CNT [7]),
    .O(\pwm1/PWM1_CNT_cmp_ge000010_292 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \pwm1/PWM1_CNT_cmp_ge0000114  (
    .I0(\pwm1/PWM1_CNT [5]),
    .I1(\pwm1/PWM1_CNT [4]),
    .I2(\pwm1/PWM1_CNT_cmp_ge000017_293 ),
    .I3(\pwm1/PWM1_CNT_cmp_ge000010_292 ),
    .O(\pwm1/PWM1_CNT_cmp_ge0000 )
  );
  OBUF   clk_1MHz_OBUF (
    .I(\clk_divs/clk_1MHz_191 ),
    .O(clk_1MHz)
  );
  OBUF   PWM1_OBUF (
    .I(PWM1_OBUF_26),
    .O(PWM1)
  );
  OBUF   PWM2_OBUF (
    .I(PWM2_OBUF_28),
    .O(PWM2)
  );
  OBUF   clk_1KHz_OBUF (
    .I(\clk_divs/clk_1KHz1 ),
    .O(clk_1KHz)
  );
  OBUF   clk_50Hz_OBUF (
    .I(\clk_divs/clk_50Hz_204 ),
    .O(clk_50Hz)
  );
  OBUF   SEG_A_3_OBUF (
    .I(\pwm1/seg7/SEG_A [3]),
    .O(SEG_A[3])
  );
  OBUF   SEG_A_2_OBUF (
    .I(\pwm1/seg7/SEG_A [2]),
    .O(SEG_A[2])
  );
  OBUF   SEG_A_1_OBUF (
    .I(\pwm1/seg7/SEG_A [1]),
    .O(SEG_A[1])
  );
  OBUF   SEG_A_0_OBUF (
    .I(\pwm1/seg7/SEG_A [0]),
    .O(SEG_A[0])
  );
  OBUF   SEG_D_7_OBUF (
    .I(SEG_D_7_OBUF_57),
    .O(SEG_D[7])
  );
  OBUF   SEG_D_6_OBUF (
    .I(SEG_D_6_OBUF_56),
    .O(SEG_D[6])
  );
  OBUF   SEG_D_5_OBUF (
    .I(SEG_D_5_OBUF_55),
    .O(SEG_D[5])
  );
  OBUF   SEG_D_4_OBUF (
    .I(SEG_D_4_OBUF_54),
    .O(SEG_D[4])
  );
  OBUF   SEG_D_3_OBUF (
    .I(SEG_D_3_OBUF_53),
    .O(SEG_D[3])
  );
  OBUF   SEG_D_2_OBUF (
    .I(SEG_D_2_OBUF_52),
    .O(SEG_D[2])
  );
  OBUF   SEG_D_1_OBUF (
    .I(SEG_D_1_OBUF_51),
    .O(SEG_D[1])
  );
  OBUF   SEG_D_0_OBUF (
    .I(N1),
    .O(SEG_D[0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/num_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Mmux_num_mux00002190 ),
    .S(\pwm1/seg7/Mmux_num_mux00002102_327 ),
    .Q(\pwm1/seg7/num [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/num_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Mmux_num_mux00004205 ),
    .S(\pwm1/seg7/pos [1]),
    .Q(\pwm1/seg7/num [1])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/num_3  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Mmux_num_mux00008111 ),
    .S(\pwm1/seg7/pos [1]),
    .Q(\pwm1/seg7/num [3])
  );
  FDS   \pwm1/seg7/SEG_A_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/pos [1]),
    .S(\pwm1/seg7/pos [0]),
    .Q(\pwm1/seg7/SEG_A [0])
  );
  FDS   \pwm1/seg7/SEG_A_1  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Mdecod_SEG_A_mux000011 ),
    .S(\pwm1/seg7/pos [1]),
    .Q(\pwm1/seg7/SEG_A [1])
  );
  FDS   \pwm1/seg7/SEG_A_2  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(\pwm1/seg7/Mdecod_SEG_A_mux000021 ),
    .S(\pwm1/seg7/pos [0]),
    .Q(\pwm1/seg7/SEG_A [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pwm1/seg7/pos_0  (
    .C(\clk_divs/clk_1KHz_171 ),
    .D(N1),
    .R(\pwm1/seg7/pos [0]),
    .Q(\pwm1/seg7/pos [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<14>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [14]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<14>_rt_88 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<13>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [13]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<13>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<12>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [12]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<12>_rt_84 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<11>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [11]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<11>_rt_82 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<10>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [10]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<10>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<9>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [9]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<9>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<8>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [8]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<8>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<7>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [7]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<7>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<6>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [6]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<6>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<5>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [5]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<5>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<4>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [4]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<4>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<3>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [3]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<3>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<2>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [2]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<2>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_cy<1>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [1]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_cy<1>_rt_90 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<6>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [6]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<6>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<5>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [5]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<5>_rt_134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<4>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [4]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<4>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<3>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [3]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<3>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<2>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [2]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<2>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_cy<1>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [1]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_cy<1>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<6>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [6]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<6>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<5>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [5]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<5>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<4>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [4]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<4>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<3>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [3]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<3>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<2>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [2]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<2>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_cy<1>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [1]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_cy<1>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<2>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [5]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_cy<2>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<6>_rt  (
    .I0(\pwm1/PWM2_CNT [6]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<6>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<5>_rt  (
    .I0(\pwm1/PWM2_CNT [5]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<5>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<4>_rt  (
    .I0(\pwm1/PWM2_CNT [4]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<4>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<3>_rt  (
    .I0(\pwm1/PWM2_CNT [3]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<3>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<2>_rt  (
    .I0(\pwm1/PWM2_CNT [2]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<2>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_cy<1>_rt  (
    .I0(\pwm1/PWM2_CNT [1]),
    .O(\pwm1/Mcount_PWM2_CNT_cy<1>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<6>_rt  (
    .I0(\pwm1/PWM1_CNT [6]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<6>_rt_263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<5>_rt  (
    .I0(\pwm1/PWM1_CNT [5]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<5>_rt_261 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<4>_rt  (
    .I0(\pwm1/PWM1_CNT [4]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<4>_rt_259 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<3>_rt  (
    .I0(\pwm1/PWM1_CNT [3]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<3>_rt_257 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<2>_rt  (
    .I0(\pwm1/PWM1_CNT [2]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<2>_rt_255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_cy<1>_rt  (
    .I0(\pwm1/PWM1_CNT [1]),
    .O(\pwm1/Mcount_PWM1_CNT_cy<1>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1KHz_cnt_xor<15>_rt  (
    .I0(\clk_divs/clk_1KHz_cnt [15]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_xor<15>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_50Hz_cnt_xor<7>_rt  (
    .I0(\clk_divs/clk_50Hz_cnt [7]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_xor<7>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \clk_divs/Mcount_clk_1MHz_cnt_xor<7>_rt  (
    .I0(\clk_divs/clk_1MHz_cnt [7]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_xor<7>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM2_CNT_xor<7>_rt  (
    .I0(\pwm1/PWM2_CNT [7]),
    .O(\pwm1/Mcount_PWM2_CNT_xor<7>_rt_280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pwm1/Mcount_PWM1_CNT_xor<7>_rt  (
    .I0(\pwm1/PWM1_CNT [7]),
    .O(\pwm1/Mcount_PWM1_CNT_xor<7>_rt_265 )
  );
  LUT4 #(
    .INIT ( 16'h7654 ))
  \pwm1/seg7/Mmux_num_mux000021901  (
    .I0(\pwm1/seg7/pos [0]),
    .I1(\pwm1/seg7/pos [1]),
    .I2(\pwm1/seg7/Mmux_num_mux00002150_332 ),
    .I3(N10),
    .O(\pwm1/seg7/Mmux_num_mux00002190 )
  );
  LUT4 #(
    .INIT ( 16'hD49A ))
  \pwm1/seg7/Mmux_num_mux0000451_SW0  (
    .I0(duty1[1]),
    .I1(duty1[2]),
    .I2(duty1[4]),
    .I3(duty1[3]),
    .O(N14)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \pwm1/seg7/Mmux_num_mux0000451  (
    .I0(Channel_0),
    .I1(\pwm1/N2 ),
    .I2(N14),
    .O(\pwm1/seg7/Mmux_num_mux0000451_338 )
  );
  LUT4 #(
    .INIT ( 16'hD49A ))
  \pwm1/seg7/Mmux_num_mux00004116_SW0  (
    .I0(duty2[1]),
    .I1(duty2[2]),
    .I2(duty2[4]),
    .I3(duty2[3]),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'hAA46 ))
  \pwm1/seg7/Mmux_num_mux0000689_SW0  (
    .I0(duty2[2]),
    .I1(duty2[4]),
    .I2(duty2[3]),
    .I3(duty2[1]),
    .O(N18)
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \pwm1/seg7/Mmux_num_mux0000689  (
    .I0(\pwm1/N3 ),
    .I1(Channel_0),
    .I2(N18),
    .O(\pwm1/seg7/Mmux_num_mux0000689_340 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \pwm1/SEG_data<6>23_SW0  (
    .I0(duty1[1]),
    .I1(duty1[2]),
    .I2(duty1[4]),
    .O(N20)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pwm1/SEG_data<6>23  (
    .I0(Channel_0),
    .I1(\pwm1/N2 ),
    .I2(\pwm1/SEG_data<6>16_324 ),
    .I3(N20),
    .O(\pwm1/SEG_data [6])
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \pwm1/seg7/Mmux_num_mux0000862_SW0  (
    .I0(duty1[1]),
    .I1(duty1[2]),
    .I2(duty1[3]),
    .I3(duty1[4]),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \pwm1/seg7/Mmux_num_mux00006100  (
    .I0(Channel_0),
    .I1(\pwm1/N2 ),
    .I2(N26),
    .I3(\pwm1/seg7/Mmux_num_mux0000689_340 ),
    .O(\pwm1/seg7/Mmux_num_mux00006100_339 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_duty2_xor<3>12  (
    .I0(duty2[3]),
    .I1(duty2[0]),
    .I2(duty2[1]),
    .I3(duty2[2]),
    .O(\Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_duty1_xor<3>12  (
    .I0(duty1[3]),
    .I1(duty1[0]),
    .I2(duty1[1]),
    .I3(duty1[2]),
    .O(Result[3])
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \pwm1/seg7/Mmux_num_mux000042051_SW1  (
    .I0(N16),
    .I1(Channel_0),
    .I2(\pwm1/N3 ),
    .I3(\pwm1/seg7/Mmux_num_mux0000451_338 ),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pwm1/seg7/Mmux_num_mux000042051  (
    .I0(\pwm1/seg7/pos [0]),
    .I1(\pwm1/seg7/Mmux_num_mux00004175_335 ),
    .I2(N28),
    .I3(\pwm1/seg7/Mmux_num_mux00004183_336 ),
    .O(\pwm1/seg7/Mmux_num_mux00004205 )
  );
  LUT4 #(
    .INIT ( 16'hAA46 ))
  \pwm1/seg7/Mmux_num_mux00006100_SW0  (
    .I0(duty1[2]),
    .I1(duty1[4]),
    .I2(duty1[3]),
    .I3(duty1[1]),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'hBB80 ))
  \pwm1/seg7/Mmux_num_mux0000853_SW1  (
    .I0(duty2[4]),
    .I1(duty2[2]),
    .I2(duty2[0]),
    .I3(duty2[3]),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \pwm1/seg7/Mmux_num_mux0000853  (
    .I0(duty2[1]),
    .I1(N32),
    .I2(Channel_0),
    .I3(duty2[4]),
    .O(\pwm1/seg7/Mmux_num_mux0000853_342 )
  );
  MUXF5   \pwm1/seg7/Mmux_num_mux000081111  (
    .I0(N34),
    .I1(N35),
    .S(\pwm1/seg7/pos [0]),
    .O(\pwm1/seg7/Mmux_num_mux00008111 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \pwm1/seg7/Mmux_num_mux000081111_F  (
    .I0(Channel_0),
    .I1(\pwm1/N2 ),
    .I2(N24),
    .I3(\pwm1/seg7/Mmux_num_mux0000853_342 ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \pwm1/seg7/Mmux_num_mux000081111_G  (
    .I0(Channel_0),
    .I1(\pwm1/N2 ),
    .I2(\pwm1/SEG_data<6>16_324 ),
    .I3(N20),
    .O(N35)
  );
  MUXF5   \pwm1/seg7/Mmux_num_mux000021901_SW0  (
    .I0(N36),
    .I1(N37),
    .S(Channel_0),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \pwm1/seg7/Mmux_num_mux000021901_SW0_F  (
    .I0(duty2[3]),
    .I1(duty2[1]),
    .I2(duty2[2]),
    .I3(\pwm1/seg7/Mmux_num_mux0000240_334 ),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \pwm1/seg7/Mmux_num_mux000021901_SW0_G  (
    .I0(duty1[3]),
    .I1(duty1[1]),
    .I2(duty1[2]),
    .I3(\pwm1/seg7/Mmux_num_mux0000212_328 ),
    .O(N37)
  );
  BUFG   \clk_divs/clk_1KHz_BUFG  (
    .I(\clk_divs/clk_1KHz1 ),
    .O(\clk_divs/clk_1KHz_171 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_62)
  );
  BUFGP   Key_Up_BUFGP (
    .I(Key_Up),
    .O(Key_Up_BUFGP_5)
  );
  BUFGP   Key_Switch_BUFGP (
    .I(Key_Switch),
    .O(Key_Switch_BUFGP_3)
  );
  INV   \clk_divs/Mcount_clk_1KHz_cnt_lut<0>_INV_0  (
    .I(\clk_divs/clk_1KHz_cnt [0]),
    .O(\clk_divs/Mcount_clk_1KHz_cnt_lut [0])
  );
  INV   \clk_divs/Mcount_clk_50Hz_cnt_lut<0>_INV_0  (
    .I(\clk_divs/clk_50Hz_cnt [0]),
    .O(\clk_divs/Mcount_clk_50Hz_cnt_lut [0])
  );
  INV   \clk_divs/Mcount_clk_1MHz_cnt_lut<0>_INV_0  (
    .I(\clk_divs/clk_1MHz_cnt [0]),
    .O(\clk_divs/Mcount_clk_1MHz_cnt_lut [0])
  );
  INV   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<7>_INV_0  (
    .I(\clk_divs/clk_1KHz_cnt [15]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[7] )
  );
  INV   \clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut<3>_INV_0  (
    .I(\clk_divs/clk_1KHz_cnt [6]),
    .O(\clk_divs/Mcompar_clk_1KHz_cnt_cmp_ge0000_lut[3] )
  );
  INV   \pwm1/Mcount_PWM2_CNT_lut<0>_INV_0  (
    .I(\pwm1/PWM2_CNT [0]),
    .O(\pwm1/Mcount_PWM2_CNT_lut [0])
  );
  INV   \pwm1/Mcount_PWM1_CNT_lut<0>_INV_0  (
    .I(\pwm1/PWM1_CNT [0]),
    .O(\pwm1/Mcount_PWM1_CNT_lut [0])
  );
  INV   \clk_divs/clk_50Hz_not00011_INV_0  (
    .I(\clk_divs/clk_50Hz_204 ),
    .O(\clk_divs/clk_50Hz_not0001 )
  );
  INV   \clk_divs/clk_1MHz_not00011_INV_0  (
    .I(\clk_divs/clk_1MHz_191 ),
    .O(\clk_divs/clk_1MHz_not0001 )
  );
  INV   \clk_divs/clk_1KHz_not00011_INV_0  (
    .I(\clk_divs/clk_1KHz1 ),
    .O(\clk_divs/clk_1KHz_not0001 )
  );
  INV   \Mcount_duty2_xor<0>11_INV_0  (
    .I(duty2[0]),
    .O(\Result<0>1 )
  );
  INV   \Mcount_duty1_xor<0>11_INV_0  (
    .I(duty1[0]),
    .O(Result[0])
  );
  INV   Channel_inv1_INV_0 (
    .I(Channel_0),
    .O(Channel_inv)
  );
  INV   \pwm1/PWM21_INV_0  (
    .I(\pwm1/PWM2_cmp_ge0000 ),
    .O(PWM2_OBUF_28)
  );
  INV   \pwm1/PWM11_INV_0  (
    .I(\pwm1/PWM1_cmp_ge0000 ),
    .O(PWM1_OBUF_26)
  );
  INV   \pwm1/seg7/Mdecod_SEG_A_mux0000111_INV_0  (
    .I(\pwm1/seg7/pos [0]),
    .O(\pwm1/seg7/Mdecod_SEG_A_mux000011 )
  );
  INV   \pwm1/seg7/Mdecod_SEG_A_mux0000211_INV_0  (
    .I(\pwm1/seg7/pos [1]),
    .O(\pwm1/seg7/Mdecod_SEG_A_mux000021 )
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \Mcount_duty2_xor<3>111  (
    .I0(duty2[0]),
    .I1(duty2[1]),
    .I2(duty2[2]),
    .LO(N3)
  );
  LUT3_L #(
    .INIT ( 8'h7F ))
  \Mcount_duty1_xor<3>111  (
    .I0(duty1[0]),
    .I1(duty1[1]),
    .I2(duty1[2]),
    .LO(N2)
  );
  LUT3_L #(
    .INIT ( 8'hEF ))
  duty2_and0000_SW0 (
    .I0(Channel_0),
    .I1(duty2[3]),
    .I2(duty2[4]),
    .LO(N6)
  );
  LUT3_L #(
    .INIT ( 8'hDF ))
  duty1_and0000_SW0 (
    .I0(Channel_0),
    .I1(duty1[3]),
    .I2(duty1[4]),
    .LO(N8)
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  \clk_divs/clk_50Hz_cnt_cmp_eq000010  (
    .I0(\clk_divs/clk_50Hz_cnt [0]),
    .I1(\clk_divs/clk_50Hz_cnt [1]),
    .I2(\clk_divs/clk_50Hz_cnt [3]),
    .I3(\clk_divs/clk_50Hz_cnt [2]),
    .LO(\clk_divs/clk_50Hz_cnt_cmp_eq000010_214 )
  );
  LUT4_L #(
    .INIT ( 16'h0010 ))
  \clk_divs/clk_1MHz_cnt_cmp_eq000011  (
    .I0(\clk_divs/clk_1MHz_cnt [2]),
    .I1(\clk_divs/clk_1MHz_cnt [0]),
    .I2(\clk_divs/clk_1MHz_cnt [3]),
    .I3(\clk_divs/clk_1MHz_cnt [1]),
    .LO(\clk_divs/clk_1MHz_cnt_cmp_eq000011_201 )
  );
  LUT4_L #(
    .INIT ( 16'hFFEA ))
  \pwm1/PWM2_CNT_cmp_ge000017  (
    .I0(\pwm1/PWM2_CNT [2]),
    .I1(\pwm1/PWM2_CNT [1]),
    .I2(\pwm1/PWM2_CNT [0]),
    .I3(\pwm1/PWM2_CNT [3]),
    .LO(\pwm1/PWM2_CNT_cmp_ge000017_305 )
  );
  LUT4_L #(
    .INIT ( 16'hFFEA ))
  \pwm1/PWM1_CNT_cmp_ge000017  (
    .I0(\pwm1/PWM1_CNT [2]),
    .I1(\pwm1/PWM1_CNT [1]),
    .I2(\pwm1/PWM1_CNT [0]),
    .I3(\pwm1/PWM1_CNT [3]),
    .LO(\pwm1/PWM1_CNT_cmp_ge000017_293 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

