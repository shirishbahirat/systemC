-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity selector is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    start : IN STD_LOGIC;
    selected : OUT STD_LOGIC_VECTOR (3 downto 0) := "1111" );
end;


architecture behav of selector is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "selector,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.274250,HLS_SYN_LAT=3,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=42,HLS_SYN_LUT=149}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_selector_select_fu_48_selected : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_selector_select_fu_48_selected_ap_vld : STD_LOGIC;
    signal grp_selector_select_fu_48_selector_counter : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_selector_select_fu_48_selector_counter_ap_vld : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";

    component selector_select IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        start : IN STD_LOGIC;
        selected : OUT STD_LOGIC_VECTOR (3 downto 0);
        selected_ap_vld : OUT STD_LOGIC;
        selector_counter : OUT STD_LOGIC_VECTOR (31 downto 0);
        selector_counter_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_selector_select_fu_48 : component selector_select
    port map (
        ap_clk => clk,
        ap_rst => reset,
        start => start,
        selected => grp_selector_select_fu_48_selected,
        selected_ap_vld => grp_selector_select_fu_48_selected_ap_vld,
        selector_counter => grp_selector_select_fu_48_selector_counter,
        selector_counter_ap_vld => grp_selector_select_fu_48_selector_counter_ap_vld);





    selected_assign_proc : process(clk)
    begin
        if (clk'event and clk =  '1') then
            if (reset = '1') then
                selected <= ap_const_lv4_F;
            else
                if ((ap_const_logic_1 = grp_selector_select_fu_48_selected_ap_vld)) then 
                    selected <= grp_selector_select_fu_48_selected;
                end if; 
            end if;
        end if;
    end process;

    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
end behav;
