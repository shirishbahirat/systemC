-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.3
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_counter_counting is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    start : IN STD_LOGIC;
    count_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    count_out_ap_vld : OUT STD_LOGIC;
    simple_counter_aux_V : OUT STD_LOGIC_VECTOR (9 downto 0);
    simple_counter_aux_V_ap_vld : OUT STD_LOGIC );
end;


architecture behav of simple_counter_counting is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal v_V_1_fu_64 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal v_V_fu_98_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_read_fu_84_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    v_V_1_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_read_fu_84_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                v_V_1_fu_64 <= v_V_fu_98_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                v_V_1_fu_64 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    count_out <= v_V_fu_98_p2;

    count_out_ap_vld_assign_proc : process(ap_CS_fsm_state3, tmp_read_fu_84_p2)
    begin
        if (((tmp_read_fu_84_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            count_out_ap_vld <= ap_const_logic_1;
        else 
            count_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    simple_counter_aux_V <= v_V_fu_98_p2;

    simple_counter_aux_V_ap_vld_assign_proc : process(ap_CS_fsm_state3, tmp_read_fu_84_p2)
    begin
        if (((tmp_read_fu_84_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            simple_counter_aux_V_ap_vld <= ap_const_logic_1;
        else 
            simple_counter_aux_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_read_fu_84_p2 <= (0=>start, others=>'-');
    v_V_fu_98_p2 <= std_logic_vector(unsigned(v_V_1_fu_64) + unsigned(ap_const_lv10_1));
end behav;
