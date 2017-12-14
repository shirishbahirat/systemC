-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity translator is
port (
    number : IN STD_LOGIC_VECTOR (9 downto 0);
    whichDisp : IN STD_LOGIC_VECTOR (3 downto 0);
    toDisp : OUT STD_LOGIC_VECTOR (6 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC );
end;


architecture behav of translator is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "translator,hls_ip_2017_3,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200tfbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.350000,HLS_SYN_LAT=8,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=353,HLS_SYN_LUT=499}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal translator_ssdm_t_load_fu_66_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal grp_translator_transform_fu_48_toDisp : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_translator_transform_fu_48_toDisp_ap_vld : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_disp : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_translator_transform_fu_48_translator_disp_ap_vld : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_digits_address0 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_translator_transform_fu_48_translator_digits_ce0 : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_digits_we0 : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_digits_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_translator_transform_fu_48_translator_digits_address1 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_translator_transform_fu_48_translator_digits_ce1 : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_digits_we1 : STD_LOGIC;
    signal grp_translator_transform_fu_48_translator_digits_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_translator_transform_fu_48_translator_transformed_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_translator_transform_fu_48_translator_transformed_o_ap_vld : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal translator_transformed : STD_LOGIC_VECTOR (31 downto 0);

    component translator_transform IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        number : IN STD_LOGIC_VECTOR (9 downto 0);
        whichDisp : IN STD_LOGIC_VECTOR (3 downto 0);
        toDisp : OUT STD_LOGIC_VECTOR (6 downto 0);
        toDisp_ap_vld : OUT STD_LOGIC;
        translator_disp : OUT STD_LOGIC_VECTOR (31 downto 0);
        translator_disp_ap_vld : OUT STD_LOGIC;
        translator_digits_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
        translator_digits_ce0 : OUT STD_LOGIC;
        translator_digits_we0 : OUT STD_LOGIC;
        translator_digits_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        translator_digits_address1 : OUT STD_LOGIC_VECTOR (1 downto 0);
        translator_digits_ce1 : OUT STD_LOGIC;
        translator_digits_we1 : OUT STD_LOGIC;
        translator_digits_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        translator_transformed_i : IN STD_LOGIC_VECTOR (31 downto 0);
        translator_transformed_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        translator_transformed_o_ap_vld : OUT STD_LOGIC );
    end component;


    component translator_transleOg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    translator_digits_U : component translator_transleOg
    generic map (
        DataWidth => 32,
        AddressRange => 4,
        AddressWidth => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => grp_translator_transform_fu_48_translator_digits_address0,
        ce0 => grp_translator_transform_fu_48_translator_digits_ce0,
        we0 => grp_translator_transform_fu_48_translator_digits_we0,
        d0 => grp_translator_transform_fu_48_translator_digits_d0,
        address1 => grp_translator_transform_fu_48_translator_digits_address1,
        ce1 => grp_translator_transform_fu_48_translator_digits_ce1,
        we1 => grp_translator_transform_fu_48_translator_digits_we1,
        d1 => grp_translator_transform_fu_48_translator_digits_d1);

    grp_translator_transform_fu_48 : component translator_transform
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        number => number,
        whichDisp => whichDisp,
        toDisp => grp_translator_transform_fu_48_toDisp,
        toDisp_ap_vld => grp_translator_transform_fu_48_toDisp_ap_vld,
        translator_disp => grp_translator_transform_fu_48_translator_disp,
        translator_disp_ap_vld => grp_translator_transform_fu_48_translator_disp_ap_vld,
        translator_digits_address0 => grp_translator_transform_fu_48_translator_digits_address0,
        translator_digits_ce0 => grp_translator_transform_fu_48_translator_digits_ce0,
        translator_digits_we0 => grp_translator_transform_fu_48_translator_digits_we0,
        translator_digits_d0 => grp_translator_transform_fu_48_translator_digits_d0,
        translator_digits_address1 => grp_translator_transform_fu_48_translator_digits_address1,
        translator_digits_ce1 => grp_translator_transform_fu_48_translator_digits_ce1,
        translator_digits_we1 => grp_translator_transform_fu_48_translator_digits_we1,
        translator_digits_d1 => grp_translator_transform_fu_48_translator_digits_d1,
        translator_transformed_i => translator_transformed,
        translator_transformed_o => grp_translator_transform_fu_48_translator_transformed_o,
        translator_transformed_o_ap_vld => grp_translator_transform_fu_48_translator_transformed_o_ap_vld);





    toDisp_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if ((ap_const_logic_1 = grp_translator_transform_fu_48_toDisp_ap_vld)) then 
                toDisp <= grp_translator_transform_fu_48_toDisp;
            end if; 
        end if;
    end process;


    translator_transformed_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if ((ap_const_logic_1 = grp_translator_transform_fu_48_translator_transformed_o_ap_vld)) then 
                translator_transformed <= grp_translator_transform_fu_48_translator_transformed_o;
            end if; 
        end if;
    end process;

    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    translator_ssdm_t_load_fu_66_p1 <= ap_const_lv1_0;
end behav;