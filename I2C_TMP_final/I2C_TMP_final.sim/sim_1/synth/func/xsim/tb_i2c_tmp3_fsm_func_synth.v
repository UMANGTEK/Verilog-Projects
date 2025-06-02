// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu May 29 23:25:50 2025
// Host        : Laptop_Umang running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Xilinx_Vitis/Projects/Zybo_Verilog/I2C_TMP_final/I2C_TMP_final.sim/sim_1/synth/func/xsim/tb_i2c_tmp3_fsm_func_synth.v
// Design      : i2c_tmp3_fsm
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ACK_ADDR_H = "5'b00101" *) (* ACK_ADDR_L = "5'b00100" *) (* ACK_PTR_H = "5'b01001" *) 
(* ACK_PTR_L = "5'b01000" *) (* ADDR_H = "5'b00011" *) (* ADDR_L = "5'b00010" *) 
(* IDLE = "5'b00000" *) (* LSB_H = "5'b01111" *) (* LSB_L = "5'b01110" *) 
(* MSB_H = "5'b01011" *) (* MSB_L = "5'b01010" *) (* M_ACK_H = "5'b01101" *) 
(* M_ACK_L = "5'b01100" *) (* PTR_H = "5'b00111" *) (* PTR_L = "5'b00110" *) 
(* REG_TEMP = "8'b00000000" *) (* SLAVE_ADDR = "7'b1001000" *) (* START = "5'b00001" *) 
(* STOP = "5'b10000" *) 
(* NotValidForBitStream *)
module i2c_tmp3_fsm
   (clk,
    rst,
    sda,
    scl,
    leds);
  input clk;
  input rst;
  inout sda;
  output scl;
  output [3:0]leds;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_2_n_0 ;
  wire \FSM_onehot_state[14]_i_1_n_0 ;
  wire \FSM_onehot_state[16]_i_1_n_0 ;
  wire \FSM_onehot_state[16]_i_2_n_0 ;
  wire \FSM_onehot_state[16]_i_3_n_0 ;
  wire \FSM_onehot_state[16]_i_4_n_0 ;
  wire \FSM_onehot_state[16]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[13] ;
  wire \FSM_onehot_state_reg_n_0_[14] ;
  wire \FSM_onehot_state_reg_n_0_[15] ;
  wire \FSM_onehot_state_reg_n_0_[16] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_4_n_0 ;
  wire \bit_cnt[2]_i_5_n_0 ;
  wire \bit_cnt[2]_i_6_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]clk_div;
  wire \clk_div[0]_i_2_n_0 ;
  wire \clk_div[15]_i_2_n_0 ;
  wire \clk_div[15]_i_3_n_0 ;
  wire \clk_div[15]_i_4_n_0 ;
  wire \clk_div[15]_i_5_n_0 ;
  wire \clk_div_reg[12]_i_2_n_0 ;
  wire \clk_div_reg[12]_i_2_n_1 ;
  wire \clk_div_reg[12]_i_2_n_2 ;
  wire \clk_div_reg[12]_i_2_n_3 ;
  wire \clk_div_reg[15]_i_6_n_2 ;
  wire \clk_div_reg[15]_i_6_n_3 ;
  wire \clk_div_reg[4]_i_2_n_0 ;
  wire \clk_div_reg[4]_i_2_n_1 ;
  wire \clk_div_reg[4]_i_2_n_2 ;
  wire \clk_div_reg[4]_i_2_n_3 ;
  wire \clk_div_reg[8]_i_2_n_0 ;
  wire \clk_div_reg[8]_i_2_n_1 ;
  wire \clk_div_reg[8]_i_2_n_2 ;
  wire \clk_div_reg[8]_i_2_n_3 ;
  wire \clk_div_reg_n_0_[0] ;
  wire \clk_div_reg_n_0_[10] ;
  wire \clk_div_reg_n_0_[11] ;
  wire \clk_div_reg_n_0_[12] ;
  wire \clk_div_reg_n_0_[13] ;
  wire \clk_div_reg_n_0_[14] ;
  wire \clk_div_reg_n_0_[15] ;
  wire \clk_div_reg_n_0_[1] ;
  wire \clk_div_reg_n_0_[2] ;
  wire \clk_div_reg_n_0_[3] ;
  wire \clk_div_reg_n_0_[4] ;
  wire \clk_div_reg_n_0_[5] ;
  wire \clk_div_reg_n_0_[6] ;
  wire \clk_div_reg_n_0_[7] ;
  wire \clk_div_reg_n_0_[8] ;
  wire \clk_div_reg_n_0_[9] ;
  wire [15:1]data0;
  wire i2c_clk_en;
  wire i2c_clk_en_reg_n_0;
  wire [3:0]leds;
  wire [3:0]leds_OBUF;
  wire [7:0]p_0_in__0;
  wire read_en_i_1_n_0;
  wire read_en_reg_n_0;
  wire rst;
  wire rst_IBUF;
  wire scl;
  wire scl0_out;
  wire scl_OBUF;
  wire scl_i_2_n_0;
  wire scl_i_3_n_0;
  wire scl_i_4_n_0;
  wire scl_i_5_n_0;
  wire sda;
  wire sda_IBUF;
  wire sda_OBUF;
  wire sda_TRI;
  wire sda_oe_i_1_n_0;
  wire sda_oe_i_2_n_0;
  wire sda_oe_i_3_n_0;
  wire sda_oe_i_4_n_0;
  wire sda_oe_i_5_n_0;
  wire sda_out1_out;
  wire sda_out_i_1_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[0]_i_2_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[4]_i_2_n_0 ;
  wire \shift_reg[4]_i_3_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \temp_lsb[0]_i_1_n_0 ;
  wire \temp_lsb[1]_i_1_n_0 ;
  wire \temp_lsb[2]_i_1_n_0 ;
  wire \temp_lsb[3]_i_1_n_0 ;
  wire [7:0]temp_msb;
  wire \temp_msb[0]_i_1_n_0 ;
  wire \temp_msb[1]_i_1_n_0 ;
  wire \temp_msb[2]_i_1_n_0 ;
  wire \temp_msb[3]_i_1_n_0 ;
  wire \temp_msb[4]_i_1_n_0 ;
  wire \temp_msb[5]_i_1_n_0 ;
  wire \temp_msb[6]_i_1_n_0 ;
  wire \temp_msb[7]_i_1_n_0 ;
  wire [3:2]\NLW_clk_div_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_div_reg[15]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(temp_msb[2]),
        .I1(temp_msb[3]),
        .I2(temp_msb[0]),
        .I3(temp_msb[1]),
        .I4(\FSM_onehot_state[13]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAA8AAA8AAA8)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state[10]_i_2_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(sda_IBUF),
        .I1(read_en_reg_n_0),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(temp_msb[2]),
        .I1(temp_msb[3]),
        .I2(temp_msb[0]),
        .I3(temp_msb[1]),
        .I4(\FSM_onehot_state[13]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[12] ),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[13]_i_2 
       (.I0(temp_msb[5]),
        .I1(temp_msb[4]),
        .I2(temp_msb[7]),
        .I3(temp_msb[6]),
        .O(\FSM_onehot_state[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \FSM_onehot_state[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[13] ),
        .O(\FSM_onehot_state[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAFEAA)) 
    \FSM_onehot_state[16]_i_1 
       (.I0(\FSM_onehot_state[16]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(i2c_clk_en_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \FSM_onehot_state[16]_i_2 
       (.I0(sda_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[15] ),
        .O(\FSM_onehot_state[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FE00)) 
    \FSM_onehot_state[16]_i_3 
       (.I0(scl_i_4_n_0),
        .I1(\FSM_onehot_state[16]_i_4_n_0 ),
        .I2(\FSM_onehot_state[16]_i_5_n_0 ),
        .I3(i2c_clk_en_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[16]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\FSM_onehot_state[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[16]_i_5 
       (.I0(sda_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEEE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(sda_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA8AAA8)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[10]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[14]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[14] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[14] ),
        .Q(\FSM_onehot_state_reg_n_0_[15] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[16]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[16] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "LSB_L:00100000000000000,M_ACK_H:00010000000000000,M_ACK_L:00001000000000000,ADDR_H:00000000000001000,ADDR_L:00000000000000100,STOP:10000000000000000,START:00000000000000010,MSB_H:00000100000000000,IDLE:00000000000000001,MSB_L:00000010000000000,PTR_H:00000000010000000,PTR_L:00000000001000000,ACK_PTR_H:00000001000000000,ACK_PTR_L:00000000100000000,ACK_ADDR_H:00000000000100000,LSB_H:01000000000000000,ACK_ADDR_L:00000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[16]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hFFFFE6E2)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\bit_cnt[2]_i_5_n_0 ),
        .I3(\bit_cnt[2]_i_4_n_0 ),
        .I4(rst_IBUF),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAE6E2E2)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\bit_cnt[2]_i_5_n_0 ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt[2]_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEA622)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\bit_cnt[2]_i_3_n_0 ),
        .I3(\bit_cnt[2]_i_4_n_0 ),
        .I4(\bit_cnt[2]_i_5_n_0 ),
        .I5(rst_IBUF),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \bit_cnt[2]_i_2 
       (.I0(\FSM_onehot_state[14]_i_1_n_0 ),
        .I1(\shift_reg[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(\bit_cnt[2]_i_6_n_0 ),
        .O(\bit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[2]_i_3 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_cnt[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .O(\bit_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_cnt[2]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\shift_reg[4]_i_2_n_0 ),
        .O(\bit_cnt[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_cnt[2]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bit_cnt[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_div[0]_i_1 
       (.I0(\clk_div[0]_i_2_n_0 ),
        .I1(\clk_div_reg_n_0_[0] ),
        .O(clk_div[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_div[0]_i_2 
       (.I0(\clk_div[15]_i_5_n_0 ),
        .I1(\clk_div[15]_i_4_n_0 ),
        .I2(\clk_div_reg_n_0_[15] ),
        .I3(\clk_div_reg_n_0_[14] ),
        .I4(\clk_div_reg_n_0_[1] ),
        .I5(\clk_div[15]_i_2_n_0 ),
        .O(\clk_div[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[10]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[10]),
        .O(clk_div[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[11]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[11]),
        .O(clk_div[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[12]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[12]),
        .O(clk_div[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[13]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[13]),
        .O(clk_div[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[14]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[14]),
        .O(clk_div[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[15]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[15]),
        .O(clk_div[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div[15]_i_2 
       (.I0(\clk_div_reg_n_0_[11] ),
        .I1(\clk_div_reg_n_0_[10] ),
        .I2(\clk_div_reg_n_0_[13] ),
        .I3(\clk_div_reg_n_0_[12] ),
        .O(\clk_div[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \clk_div[15]_i_3 
       (.I0(\clk_div_reg_n_0_[15] ),
        .I1(\clk_div_reg_n_0_[14] ),
        .I2(\clk_div_reg_n_0_[1] ),
        .O(\clk_div[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_div[15]_i_4 
       (.I0(\clk_div_reg_n_0_[3] ),
        .I1(\clk_div_reg_n_0_[2] ),
        .I2(\clk_div_reg_n_0_[5] ),
        .I3(\clk_div_reg_n_0_[4] ),
        .O(\clk_div[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_div[15]_i_5 
       (.I0(\clk_div_reg_n_0_[7] ),
        .I1(\clk_div_reg_n_0_[6] ),
        .I2(\clk_div_reg_n_0_[9] ),
        .I3(\clk_div_reg_n_0_[8] ),
        .O(\clk_div[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[1]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[1]),
        .O(clk_div[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[2]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[2]),
        .O(clk_div[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[3]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[3]),
        .O(clk_div[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[4]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[4]),
        .O(clk_div[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[5]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[5]),
        .O(clk_div[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[6]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[6]),
        .O(clk_div[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[7]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[7]),
        .O(clk_div[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[8]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[8]),
        .O(clk_div[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \clk_div[9]_i_1 
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .I5(data0[9]),
        .O(clk_div[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[0]),
        .Q(\clk_div_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[10]),
        .Q(\clk_div_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[11]),
        .Q(\clk_div_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[12]),
        .Q(\clk_div_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[12]_i_2 
       (.CI(\clk_div_reg[8]_i_2_n_0 ),
        .CO({\clk_div_reg[12]_i_2_n_0 ,\clk_div_reg[12]_i_2_n_1 ,\clk_div_reg[12]_i_2_n_2 ,\clk_div_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\clk_div_reg_n_0_[12] ,\clk_div_reg_n_0_[11] ,\clk_div_reg_n_0_[10] ,\clk_div_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[13]),
        .Q(\clk_div_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[14]),
        .Q(\clk_div_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[15]),
        .Q(\clk_div_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[15]_i_6 
       (.CI(\clk_div_reg[12]_i_2_n_0 ),
        .CO({\NLW_clk_div_reg[15]_i_6_CO_UNCONNECTED [3:2],\clk_div_reg[15]_i_6_n_2 ,\clk_div_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_reg[15]_i_6_O_UNCONNECTED [3],data0[15:13]}),
        .S({1'b0,\clk_div_reg_n_0_[15] ,\clk_div_reg_n_0_[14] ,\clk_div_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[1]),
        .Q(\clk_div_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[2]),
        .Q(\clk_div_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[3]),
        .Q(\clk_div_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[4]),
        .Q(\clk_div_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\clk_div_reg[4]_i_2_n_0 ,\clk_div_reg[4]_i_2_n_1 ,\clk_div_reg[4]_i_2_n_2 ,\clk_div_reg[4]_i_2_n_3 }),
        .CYINIT(\clk_div_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\clk_div_reg_n_0_[4] ,\clk_div_reg_n_0_[3] ,\clk_div_reg_n_0_[2] ,\clk_div_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[5]),
        .Q(\clk_div_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[6]),
        .Q(\clk_div_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[7]),
        .Q(\clk_div_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[8]),
        .Q(\clk_div_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \clk_div_reg[8]_i_2 
       (.CI(\clk_div_reg[4]_i_2_n_0 ),
        .CO({\clk_div_reg[8]_i_2_n_0 ,\clk_div_reg[8]_i_2_n_1 ,\clk_div_reg[8]_i_2_n_2 ,\clk_div_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\clk_div_reg_n_0_[8] ,\clk_div_reg_n_0_[7] ,\clk_div_reg_n_0_[6] ,\clk_div_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_div_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_div[9]),
        .Q(\clk_div_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    i2c_clk_en_i_1
       (.I0(\clk_div[15]_i_2_n_0 ),
        .I1(\clk_div[15]_i_3_n_0 ),
        .I2(\clk_div[15]_i_4_n_0 ),
        .I3(\clk_div[15]_i_5_n_0 ),
        .I4(\clk_div_reg_n_0_[0] ),
        .O(i2c_clk_en));
  FDCE #(
    .INIT(1'b0)) 
    i2c_clk_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i2c_clk_en),
        .Q(i2c_clk_en_reg_n_0));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  LUT5 #(
    .INIT(32'hFFDF00C0)) 
    read_en_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(i2c_clk_en_reg_n_0),
        .I3(rst_IBUF),
        .I4(read_en_reg_n_0),
        .O(read_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(read_en_i_1_n_0),
        .Q(read_en_reg_n_0),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF scl_OBUF_inst
       (.I(scl_OBUF),
        .O(scl));
  LUT5 #(
    .INIT(32'hFCFCFCEC)) 
    scl_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(scl_i_3_n_0),
        .I2(i2c_clk_en_reg_n_0),
        .I3(scl_i_4_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(scl0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\bit_cnt[2]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[16] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(scl_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    scl_i_3
       (.I0(scl_i_5_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[14] ),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .I5(i2c_clk_en_reg_n_0),
        .O(scl_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[15] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(scl_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[16] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(scl_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    scl_reg
       (.C(clk_IBUF_BUFG),
        .CE(scl0_out),
        .D(scl_i_2_n_0),
        .Q(scl_OBUF),
        .S(rst_IBUF));
  IOBUF sda_IOBUF_inst
       (.I(sda_OBUF),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_TRI));
  LUT1 #(
    .INIT(2'h1)) 
    sda_oe_i_1
       (.I0(sda_oe_i_2_n_0),
        .O(sda_oe_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sda_oe_i_2
       (.I0(sda_oe_i_3_n_0),
        .I1(rst_IBUF),
        .O(sda_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDDFFEF00CC00)) 
    sda_oe_i_3
       (.I0(\FSM_onehot_state[16]_i_4_n_0 ),
        .I1(scl_i_5_n_0),
        .I2(sda_oe_i_4_n_0),
        .I3(i2c_clk_en_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[11] ),
        .I5(sda_oe_i_5_n_0),
        .O(sda_oe_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sda_oe_i_4
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .O(sda_oe_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sda_oe_i_5
       (.I0(sda_TRI),
        .O(sda_oe_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sda_oe_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_oe_i_1_n_0),
        .Q(sda_TRI),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEE2)) 
    sda_out_i_1
       (.I0(sda_OBUF),
        .I1(sda_out1_out),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[16] ),
        .I4(sda_out_i_3_n_0),
        .I5(rst_IBUF),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFE00000)) 
    sda_out_i_2
       (.I0(\FSM_onehot_state[13]_i_2_n_0 ),
        .I1(sda_out_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[12] ),
        .I3(scl_i_5_n_0),
        .I4(i2c_clk_en_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sda_out1_out));
  LUT6 #(
    .INIT(64'hC302000200000000)) 
    sda_out_i_3
       (.I0(\shift_reg_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\shift_reg_reg_n_0_[4] ),
        .I5(sda_out_i_5_n_0),
        .O(sda_out_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sda_out_i_4
       (.I0(temp_msb[1]),
        .I1(temp_msb[0]),
        .I2(temp_msb[3]),
        .I3(temp_msb[2]),
        .O(sda_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sda_out_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_out_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sda_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .Q(sda_OBUF),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \shift_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(read_en_reg_n_0),
        .I3(\shift_reg[0]_i_2_n_0 ),
        .I4(\shift_reg_reg_n_0_[0] ),
        .O(\shift_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \shift_reg[0]_i_2 
       (.I0(\shift_reg[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(rst_IBUF),
        .I4(i2c_clk_en_reg_n_0),
        .O(\shift_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFBFFFFFAF80000)) 
    \shift_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\shift_reg[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\shift_reg[4]_i_3_n_0 ),
        .I5(\shift_reg_reg_n_0_[4] ),
        .O(\shift_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \shift_reg[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(read_en_reg_n_0),
        .I2(sda_IBUF),
        .O(\shift_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_reg[4]_i_3 
       (.I0(i2c_clk_en_reg_n_0),
        .I1(rst_IBUF),
        .O(\shift_reg[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \temp_lsb[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[15] ),
        .I1(i2c_clk_en_reg_n_0),
        .I2(rst_IBUF),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(\temp_lsb[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \temp_lsb[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(\temp_lsb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \temp_lsb[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(\temp_lsb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \temp_lsb[3]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[15] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(\temp_lsb[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_lsb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_lsb[0]_i_1_n_0 ),
        .D(sda_IBUF),
        .Q(leds_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_lsb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_lsb[1]_i_1_n_0 ),
        .D(sda_IBUF),
        .Q(leds_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_lsb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_lsb[2]_i_1_n_0 ),
        .D(sda_IBUF),
        .Q(leds_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_lsb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_lsb[3]_i_1_n_0 ),
        .D(sda_IBUF),
        .Q(leds_OBUF[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[0]_i_1 
       (.I0(p_0_in__0[0]),
        .I1(temp_msb[0]),
        .I2(sda_IBUF),
        .O(\temp_msb[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \temp_msb[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[11] ),
        .I1(i2c_clk_en_reg_n_0),
        .I2(rst_IBUF),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\bit_cnt_reg_n_0_[1] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[1]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(temp_msb[1]),
        .I2(sda_IBUF),
        .O(\temp_msb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \temp_msb[1]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[2]_i_1 
       (.I0(p_0_in__0[2]),
        .I1(temp_msb[2]),
        .I2(sda_IBUF),
        .O(\temp_msb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \temp_msb[2]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(rst_IBUF),
        .I4(i2c_clk_en_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[3]_i_1 
       (.I0(p_0_in__0[3]),
        .I1(temp_msb[3]),
        .I2(sda_IBUF),
        .O(\temp_msb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \temp_msb[3]_i_2 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(rst_IBUF),
        .I2(i2c_clk_en_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\bit_cnt_reg_n_0_[0] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[4]_i_1 
       (.I0(p_0_in__0[4]),
        .I1(temp_msb[4]),
        .I2(sda_IBUF),
        .O(\temp_msb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \temp_msb[4]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[5]_i_1 
       (.I0(p_0_in__0[5]),
        .I1(temp_msb[5]),
        .I2(sda_IBUF),
        .O(\temp_msb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \temp_msb[5]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(i2c_clk_en_reg_n_0),
        .I5(rst_IBUF),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[6]_i_1 
       (.I0(p_0_in__0[6]),
        .I1(temp_msb[6]),
        .I2(sda_IBUF),
        .O(\temp_msb[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \temp_msb[6]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(rst_IBUF),
        .I4(i2c_clk_en_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \temp_msb[7]_i_1 
       (.I0(p_0_in__0[7]),
        .I1(temp_msb[7]),
        .I2(sda_IBUF),
        .O(\temp_msb[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \temp_msb[7]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(rst_IBUF),
        .I4(i2c_clk_en_reg_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[11] ),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[0]_i_1_n_0 ),
        .Q(temp_msb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[1]_i_1_n_0 ),
        .Q(temp_msb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[2]_i_1_n_0 ),
        .Q(temp_msb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[3]_i_1_n_0 ),
        .Q(temp_msb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[4]_i_1_n_0 ),
        .Q(temp_msb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[5]_i_1_n_0 ),
        .Q(temp_msb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[6]_i_1_n_0 ),
        .Q(temp_msb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_msb_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp_msb[7]_i_1_n_0 ),
        .Q(temp_msb[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
