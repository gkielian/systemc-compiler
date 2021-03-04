//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic a,
    output logic b,
    output logic c,
    output logic p,
    input logic [2:0] ip
);

// SystemC signals
logic [1:0] s1[2];
logic [2:0] sp;
logic [1:0] struct_c_out_port;
logic [1:0] struct_c2_out_port;

assign s1[0] = struct_c_out_port;
assign s1[1] = struct_c2_out_port;

//------------------------------------------------------------------------------
// Method process: std_funcs (test_fcall.cpp:431:5) 

always_comb 
begin : std_funcs     // test_fcall.cpp:431:5
    integer unsigned a_1;
    a_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: read_channel_in_cout (test_fcall.cpp:119:5) 

always_comb 
begin : read_channel_in_cout     // test_fcall.cpp:119:5
end

//------------------------------------------------------------------------------
// Method process: func_call_params (test_fcall.cpp:255:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : func_call_params     // test_fcall.cpp:255:5
    integer j;
    integer TMP_0;
    integer i;
    logic b_1;
    logic [2:0] TMP_1;
    integer i_1;
    integer m_1;
    integer arr_arg[3];
    integer TMP_2;
    integer result;
    logic [2:0] arr_arg2[2];
    logic [2:0] TMP_3;
    logic [2:0] result_1;
    // Call f1() begin
    m = m + 1;
    // Call f1() end
    i = 1; b_1 = 1;
    // Call f2() begin
    TMP_0 = i;
    // Call f2() end
    i_1 = 1;
    // Call f3() begin
    i_1 = i_1 + 1;
    TMP_1 = i_1;
    // Call f3() end
    j = TMP_1;
    // Call f4() begin
    j = j + 1;
    // Call f4() end
    // Call f4const() begin
    m_1 = j + 1;
    // Call f4const() end
    arr_arg[0] = 1; arr_arg[1] = 2; arr_arg[2] = 3;
    // Call f5() begin
    result = 0;
    for (integer i = 0; i < 3; i++)
    begin
        result = result + arr_arg[i];
    end
    TMP_2 = result;
    // Call f5() end
    j = TMP_2;
    arr_arg2[0] = 1; arr_arg2[1] = 2;
    // Call f5_sc() begin
    result_1 = 0;
    for (integer i = 0; i < 2; i++)
    begin
        result_1 = result_1 + arr_arg2[i];
    end
    TMP_3 = result_1;
    // Call f5_sc() end
    j = TMP_3;
end

//------------------------------------------------------------------------------
// Method process: child_record_call (test_fcall.cpp:280:5) 

// Process-local variables
logic signed [31:0] struct_c_m;

always_comb 
begin : child_record_call     // test_fcall.cpp:280:5
    integer j;
    logic [2:0] x;
    logic [2:0] y;
    integer k_1;
    integer TMP_0;
    logic [2:0] a_1;
    integer TMP_1;
    integer TMP_2;
    logic [2:0] a_2;
    x = 1;
    y = 2;
    struct_c_m = 1;
    // Call f1() begin
    k_1 = 1;
    struct_c_m = 2;
    // Call f1() end
    a_1 = 2;
    // Call f2() begin
    TMP_0 = a_1 + x;
    // Call f2() end
    j = TMP_0;
    a_1 = 1;
    // Call f2() begin
    TMP_1 = a_1 + x;
    // Call f2() end
    a_2 = 2;
    // Call f2() begin
    TMP_2 = a_2 + y;
    // Call f2() end
    j = TMP_1 - TMP_2;
end

//------------------------------------------------------------------------------
// Method process: port_access_call (test_fcall.cpp:299:5) 

always_comb 
begin : port_access_call     // test_fcall.cpp:299:5
    logic b1;
    logic TMP_0;
    logic [1:0] val;
    // Call f6() begin
    b = !a;
    // Call f6() end
    // Call f7() begin
    c = a;
    TMP_0 = !a;
    // Call f7() end
    b1 = TMP_0;
    val = 3;
    // Call f3() begin
    struct_c_out_port = val;
    // Call f3() end
end

//------------------------------------------------------------------------------
// Method process: included_func_calls (test_fcall.cpp:311:5) 

always_comb 
begin : included_func_calls     // test_fcall.cpp:311:5
    logic [2:0] TMP_0;
    integer val;
    logic [3:0] TMP_1;
    logic [2:0] val_1;
    logic TMP_3;
    integer j;
    integer unsigned TMP_5;
    integer unsigned val_2;
    val = 1;
    // Call f8__() begin
    TMP_0 = val + 1;
    // Call f8__() end
    val_1 = TMP_0;
    // Call f8() begin
    // Call f8_() begin
    TMP_3 = a;
    // Call f8_() end
    if (TMP_3)
    begin
        TMP_1 = 0;
    end else begin
        TMP_1 = a ? val_1 + 1 : val_1 - 1;
    end
    // Call f8() end
    j = TMP_1;
    val_2 = 2;
    // Call f9() begin
    // Call f9_() begin
    val_2++;
    // Call f9_() end
    // Call f9_() begin
    val_2++;
    // Call f9_() end
    TMP_5 = val_2;
    // Call f9() end
    j = TMP_5;
end

//------------------------------------------------------------------------------
// Method process: multiple_returns (test_fcall.cpp:320:5) 

always_comb 
begin : multiple_returns     // test_fcall.cpp:320:5
    integer j;
    integer m_1;
    integer unsigned TMP_0;
    integer unsigned val;
    j = 1;
    // Call f10() begin
    if (1)
    begin
        m_1 = 1;
    end
    // Call f10() end
    val = j + 1;
    // Call f11() begin
    case (2)
    2 : begin
        TMP_0 = 2;
    end
    endcase
    // Call f11() end
    j = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: return_in_loop (test_fcall.cpp:330:5) 

always_comb 
begin : return_in_loop     // test_fcall.cpp:330:5
    integer unsigned TMP_0;
    integer unsigned val;
    integer j;
    for (integer i = 0; i < 3; i++)
    begin
        val = i;
        // Call f11() begin
        case (val)
        1 : begin
            TMP_0 = 1;
        end
        2 : begin
            TMP_0 = 2;
        end
        default : begin
            TMP_0 = 3;
        end
        endcase
        // Call f11() end
        j = TMP_0;
    end
end

//------------------------------------------------------------------------------
// Method process: glob_func_call (test_fcall.cpp:237:5) 

always_comb 
begin : glob_func_call     // test_fcall.cpp:237:5
    integer a_1;
    integer TMP_0;
    integer i;
    integer i_1;
    integer TMP_2;
    // Call globFunc1() begin
    a_1 = 0;
    // Call globFunc1() end
    i = 1;
    // Call globFunc2() begin
    TMP_0 = i;
    // Call globFunc2() end
    i_1 = TMP_0;
    i = i_1;
    // Call globFunc2() begin
    TMP_2 = i;
    // Call globFunc2() end
end

//------------------------------------------------------------------------------
// Method process: static_func_call (test_fcall.cpp:246:5) 

always_comb 
begin : static_func_call     // test_fcall.cpp:246:5
    integer i;
    integer TMP_0;
    integer i_1;
    integer i_2;
    integer TMP_2;
    // Call staticFunc1() begin
    i = 0;
    // Call staticFunc1() end
    i_1 = 1;
    // Call staticFunc2() begin
    TMP_0 = i_1;
    // Call staticFunc2() end
    i_2 = TMP_0;
    i_1 = i_2;
    // Call staticFunc2() begin
    TMP_2 = i_1;
    // Call staticFunc2() end
end

//------------------------------------------------------------------------------
// Method process: included_funcs1 (test_fcall.cpp:356:5) 

always_comb 
begin : included_funcs1     // test_fcall.cpp:356:5
    integer k_1;
    integer k_2;
    integer k_3;
    k_1 = 1;
    if (a)
    begin
        // Call g2() begin
        k_2 = 2;
        // Call g3() begin
        k_3 = 3;
        // Call g3() end
        // Call g2() end
    end
end

//------------------------------------------------------------------------------
// Method process: included_funcs2 (test_fcall.cpp:365:5) 

always_comb 
begin : included_funcs2     // test_fcall.cpp:365:5
    integer k_1;
    integer k_2;
    integer k_3;
    integer k_4;
    k_1 = 1;
    // Call g1() begin
    if (a)
    begin
        // Call g2() begin
        k_2 = 2;
        // Call g3() begin
        k_3 = 3;
        // Call g3() end
        // Call g2() end
    end else begin
        // Call g3() begin
        k_3 = 3;
        // Call g3() end
    end
    k_4 = 4;
    // Call g1() end
end

//------------------------------------------------------------------------------
// Method process: func_double_used (test_fcall.cpp:376:5) 

always_comb 
begin : func_double_used     // test_fcall.cpp:376:5
    logic TMP_0;
    integer i;
    logic b_1;
    i = 1;
    // Call ff() begin
    TMP_0 = i == 1;
    // Call ff() end
    b_1 = 0;
end

//------------------------------------------------------------------------------
// Method process: func_chan_pointer (test_fcall.cpp:393:5) 

always_comb 
begin : func_chan_pointer     // test_fcall.cpp:393:5
    integer j;
    integer TMP_0;
    integer i;
    integer TMP_1;
    integer i_1;
    integer TMP_2;
    integer i_2;
    integer TMP_3;
    integer i_3;
    // Call f_ch_ptr() begin
    i = sp;
    TMP_0 = i;
    // Call f_ch_ptr() end
    j = TMP_0;
    // Call f_ch_ptr2() begin
    i_1 = sp;
    TMP_1 = i_1;
    // Call f_ch_ptr2() end
    j = TMP_1;
    // Call f_ch_ptr() begin
    i_2 = p;
    TMP_2 = i_2;
    // Call f_ch_ptr() end
    j = TMP_2;
    // Call f_ch_ptr() begin
    i_3 = ip;
    TMP_3 = i_3;
    // Call f_ch_ptr() end
    j = TMP_3;
end

//------------------------------------------------------------------------------
// Method process: func_var_pointer (test_fcall.cpp:416:5) 

// Process-local variables
logic [2:0] s;

always_comb 
begin : func_var_pointer     // test_fcall.cpp:416:5
    integer j;
    logic TMP_0;
    logic b_1;
    // Call f_ptr() begin
    b_1 = s[2];
    TMP_0 = b_1;
    // Call f_ptr() end
    j = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: special_funcs (test_fcall.cpp:423:5) 

always_comb 
begin : special_funcs     // test_fcall.cpp:423:5
    integer y;
    y = 0;
end

endmodule

