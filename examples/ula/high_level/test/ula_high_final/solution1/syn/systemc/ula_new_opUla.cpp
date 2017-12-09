// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ula_new_opUla.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const bool ula_new_opUla::ap_const_boolean_1 = true;
const sc_lv<3> ula_new_opUla::ap_const_lv3_5 = "101";
const sc_lv<3> ula_new_opUla::ap_const_lv3_4 = "100";
const sc_lv<3> ula_new_opUla::ap_const_lv3_3 = "11";
const sc_lv<3> ula_new_opUla::ap_const_lv3_2 = "10";
const sc_lv<3> ula_new_opUla::ap_const_lv3_1 = "1";
const sc_lv<16> ula_new_opUla::ap_const_lv16_0 = "0000000000000000";
const sc_logic ula_new_opUla::ap_const_logic_0 = sc_dt::Log_0;
const sc_logic ula_new_opUla::ap_const_logic_1 = sc_dt::Log_1;

ula_new_opUla::ula_new_opUla(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ula_new_mul_mul_1bkb_U1 = new ula_new_mul_mul_1bkb<1,1,16,16,16>("ula_new_mul_mul_1bkb_U1");
    ula_new_mul_mul_1bkb_U1->din0(B);
    ula_new_mul_mul_1bkb_U1->din1(A);
    ula_new_mul_mul_1bkb_U1->dout(aux_V_2_fu_136_p2);

    SC_METHOD(thread_C);
    sensitive << ( ap_phi_mux_v_V_phi_fu_88_p12 );

    SC_METHOD(thread_C_ap_vld);

    SC_METHOD(thread_ap_phi_mux_v_V_phi_fu_88_p12);
    sensitive << ( aux_V_3_fu_104_p2 );
    sensitive << ( val_V_read_fu_60_p2 );
    sensitive << ( p_s_fu_117_p1 );
    sensitive << ( aux_V_2_fu_136_p2 );
    sensitive << ( aux_V_1_fu_122_p2 );
    sensitive << ( aux_V_fu_129_p2 );

    SC_METHOD(thread_aux_V_1_fu_122_p2);
    sensitive << ( A );
    sensitive << ( B );

    SC_METHOD(thread_aux_V_3_fu_104_p2);
    sensitive << ( A );
    sensitive << ( B );

    SC_METHOD(thread_aux_V_fu_129_p2);
    sensitive << ( A );
    sensitive << ( B );

    SC_METHOD(thread_p_s_fu_117_p1);
    sensitive << ( tmp_2_fu_111_p2 );

    SC_METHOD(thread_tmp_2_fu_111_p2);
    sensitive << ( A );
    sensitive << ( B );
    sensitive << ( val_V_read_fu_60_p2 );

    SC_METHOD(thread_val_V_read_fu_60_p2);
    sensitive << ( op );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ula_new_opUla_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, A, "(port)A");
    sc_trace(mVcdFile, B, "(port)B");
    sc_trace(mVcdFile, op, "(port)op");
    sc_trace(mVcdFile, C, "(port)C");
    sc_trace(mVcdFile, C_ap_vld, "(port)C_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, aux_V_3_fu_104_p2, "aux_V_3_fu_104_p2");
    sc_trace(mVcdFile, ap_phi_mux_v_V_phi_fu_88_p12, "ap_phi_mux_v_V_phi_fu_88_p12");
    sc_trace(mVcdFile, val_V_read_fu_60_p2, "val_V_read_fu_60_p2");
    sc_trace(mVcdFile, p_s_fu_117_p1, "p_s_fu_117_p1");
    sc_trace(mVcdFile, aux_V_2_fu_136_p2, "aux_V_2_fu_136_p2");
    sc_trace(mVcdFile, aux_V_1_fu_122_p2, "aux_V_1_fu_122_p2");
    sc_trace(mVcdFile, aux_V_fu_129_p2, "aux_V_fu_129_p2");
    sc_trace(mVcdFile, tmp_2_fu_111_p2, "tmp_2_fu_111_p2");
#endif

    }
}

ula_new_opUla::~ula_new_opUla() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ula_new_mul_mul_1bkb_U1;
}

void ula_new_opUla::thread_C() {
    C = ap_phi_mux_v_V_phi_fu_88_p12.read();
}

void ula_new_opUla::thread_C_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
        C_ap_vld = ap_const_logic_1;
    } else {
        C_ap_vld = ap_const_logic_0;
    }
}

void ula_new_opUla::thread_ap_phi_mux_v_V_phi_fu_88_p12() {
    if ((!esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_5) && 
         !esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_4) && 
         !esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_3) && 
         !esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_2) && 
         !esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_1))) {
        ap_phi_mux_v_V_phi_fu_88_p12 = ap_const_lv16_0;
    } else if (esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_1)) {
        ap_phi_mux_v_V_phi_fu_88_p12 = aux_V_fu_129_p2.read();
    } else if (esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_2)) {
        ap_phi_mux_v_V_phi_fu_88_p12 = aux_V_1_fu_122_p2.read();
    } else if (esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_3)) {
        ap_phi_mux_v_V_phi_fu_88_p12 = aux_V_2_fu_136_p2.read();
    } else if (esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_4)) {
        ap_phi_mux_v_V_phi_fu_88_p12 = p_s_fu_117_p1.read();
    } else if (esl_seteq<1,3,3>(val_V_read_fu_60_p2.read(), ap_const_lv3_5)) {
        ap_phi_mux_v_V_phi_fu_88_p12 = aux_V_3_fu_104_p2.read();
    } else {
        ap_phi_mux_v_V_phi_fu_88_p12 = "XXXXXXXXXXXXXXXX";
    }
}

void ula_new_opUla::thread_aux_V_1_fu_122_p2() {
    aux_V_1_fu_122_p2 = (!A.read().is_01() || !B.read().is_01())? sc_lv<16>(): (sc_biguint<16>(A.read()) - sc_biguint<16>(B.read()));
}

void ula_new_opUla::thread_aux_V_3_fu_104_p2() {
    aux_V_3_fu_104_p2 = (B.read() & A.read());
}

void ula_new_opUla::thread_aux_V_fu_129_p2() {
    aux_V_fu_129_p2 = (!B.read().is_01() || !A.read().is_01())? sc_lv<16>(): (sc_biguint<16>(B.read()) + sc_biguint<16>(A.read()));
}

void ula_new_opUla::thread_p_s_fu_117_p1() {
    p_s_fu_117_p1 = esl_zext<16,1>(tmp_2_fu_111_p2.read());
}

void ula_new_opUla::thread_tmp_2_fu_111_p2() {
    tmp_2_fu_111_p2 = (!A.read().is_01() || !B.read().is_01())? sc_lv<1>(): (sc_bigint<16>(A.read()) > sc_bigint<16>(B.read()));
}

void ula_new_opUla::thread_val_V_read_fu_60_p2() {
    val_V_read_fu_60_p2 = op.read();
}

}
