-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ula_new is
port (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    carryIn : IN STD_LOGIC;
    op : IN STD_LOGIC_VECTOR (1 downto 0);
    C : OUT STD_LOGIC;
    carryOut : OUT STD_LOGIC );
end;


architecture behav of ula_new is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ula_new,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.225250,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=50}";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal StgValue_11_ula_new_opUla_fu_50_C : STD_LOGIC;
    signal StgValue_11_ula_new_opUla_fu_50_C_ap_vld : STD_LOGIC;
    signal StgValue_11_ula_new_opUla_fu_50_carryOut : STD_LOGIC;
    signal StgValue_11_ula_new_opUla_fu_50_carryOut_ap_vld : STD_LOGIC;
    signal ula_new_ssdm_thre_load_fu_66_p1 : STD_LOGIC_VECTOR (0 downto 0);

    component ula_new_opUla IS
    port (
        A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        op : IN STD_LOGIC_VECTOR (1 downto 0);
        C : OUT STD_LOGIC;
        C_ap_vld : OUT STD_LOGIC;
        carryOut : OUT STD_LOGIC;
        carryOut_ap_vld : OUT STD_LOGIC );
    end component;



begin
    StgValue_11_ula_new_opUla_fu_50 : component ula_new_opUla
    port map (
        A => A,
        B => B,
        op => op,
        C => StgValue_11_ula_new_opUla_fu_50_C,
        C_ap_vld => StgValue_11_ula_new_opUla_fu_50_C_ap_vld,
        carryOut => StgValue_11_ula_new_opUla_fu_50_carryOut,
        carryOut_ap_vld => StgValue_11_ula_new_opUla_fu_50_carryOut_ap_vld);




    C <= StgValue_11_ula_new_opUla_fu_50_C;
    carryOut <= StgValue_11_ula_new_opUla_fu_50_carryOut;
    ula_new_ssdm_thre_load_fu_66_p1 <= ap_const_lv1_0;
end behav;
