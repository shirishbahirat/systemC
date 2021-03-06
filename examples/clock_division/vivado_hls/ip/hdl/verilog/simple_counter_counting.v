// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module simple_counter_counting (
        ap_clk,
        ap_rst,
        start,
        count_out,
        count_out_ap_vld,
        simple_counter_aux_V,
        simple_counter_aux_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   start;
output  [9:0] count_out;
output   count_out_ap_vld;
output  [9:0] simple_counter_aux_V;
output   simple_counter_aux_V_ap_vld;

reg count_out_ap_vld;
reg simple_counter_aux_V_ap_vld;

reg   [9:0] v_V_1_fu_64;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire   [9:0] v_V_fu_98_p2;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_read_fu_84_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_read_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        v_V_1_fu_64 <= v_V_fu_98_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v_V_1_fu_64 <= 10'd0;
    end
end

always @ (*) begin
    if (((tmp_read_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        count_out_ap_vld = 1'b1;
    end else begin
        count_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_read_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        simple_counter_aux_V_ap_vld = 1'b1;
    end else begin
        simple_counter_aux_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign count_out = v_V_fu_98_p2;

assign simple_counter_aux_V = v_V_fu_98_p2;

assign tmp_read_fu_84_p2 = start;

assign v_V_fu_98_p2 = (v_V_1_fu_64 + 10'd1);

endmodule //simple_counter_counting
