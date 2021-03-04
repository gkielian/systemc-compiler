//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic a;
logic b;
logic clk;
logic nrst;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .nrst(nrst),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_read_defined_0.cpp:346:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst,
    input logic a,
    output logic b
);

// SystemC signals
logic c;
logic d;
logic e;
logic f;
logic ca[3];
logic pca[3];
logic ppca[3][2];
logic signed [31:0] ms_sig;
logic ms_bsig;
logic signed [31:0] sig;

//------------------------------------------------------------------------------
// Method process: array_of_pointers (test_cthread_read_defined_0.cpp:125:5) 

// Process-local variables
logic signed [31:0] pa[3];

always_comb 
begin : array_of_pointers     // test_cthread_read_defined_0.cpp:125:5
    integer i;
    pa[0] = 1;
    i = pa[1];
end

//------------------------------------------------------------------------------
// Method process: array_of_channels (test_cthread_read_defined_0.cpp:133:5) 

always_comb 
begin : array_of_channels     // test_cthread_read_defined_0.cpp:133:5
    integer i;
    integer j;
    integer k_1;
    i = ca[1];
    j = pca[1];
    k_1 = ppca[1][0];
end

//------------------------------------------------------------------------------
// Method process: if1 (test_cthread_read_defined_0.cpp:161:5) 

// Process-local variables
logic signed [31:0] n4;
logic signed [31:0] m4;
logic signed [31:0] k4;

always_comb 
begin : if1     // test_cthread_read_defined_0.cpp:161:5
    if (a)
    begin
        n4 = m4 + k4;
        m4 = k4 - 1;
    end else begin
        k4 = m4;
        n4 = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: latch1 (test_cthread_read_defined_0.cpp:179:5) 

always_latch 
begin : latch1     // test_cthread_read_defined_0.cpp:179:5
    if (a)
    begin
        c = 1;
        d = 1;
        e = f;
    end else begin
        d = 1;
    end
    e = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: multistate (test_cthread_read_defined_0.cpp:202:5) 

// Thread-local variables
logic [3:0] multistate_WAIT_N_COUNTER;
logic [3:0] multistate_WAIT_N_COUNTER_next;
logic signed [31:0] ms_sig_next;
logic signed [31:0] global_register;
logic signed [31:0] global_register_next;
logic signed [31:0] ms_array[10];
logic signed [31:0] ms_array_next[10];
logic signed [31:0] ms_loc_reg;
logic signed [31:0] ms_loc_reg_next;
logic signed [31:0] global_comb;
logic [1:0] multistate_PROC_STATE;
logic [1:0] multistate_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : multistate_comb     // test_cthread_read_defined_0.cpp:202:5
    multistate_func;
end
function void multistate_func;
    integer ms_loc_comb;
    global_register_next = global_register;
    ms_array_next = ms_array;
    ms_loc_reg_next = ms_loc_reg;
    ms_sig_next = ms_sig;
    multistate_WAIT_N_COUNTER_next = multistate_WAIT_N_COUNTER;
    multistate_PROC_STATE_next = multistate_PROC_STATE;
    
    case (multistate_PROC_STATE)
        0: begin
            ms_sig_next = 0;
            global_register_next = global_register_next + 1;
            global_comb = 1;
            ms_sig_next = ms_array_next[2];
            if (ms_bsig)
            begin
                ms_loc_comb = 1;
                ms_loc_reg_next = 12;
            end else begin
                ms_loc_comb = 2;
            end
            ms_sig_next = ms_loc_comb + ms_loc_reg_next + global_comb;
            multistate_PROC_STATE_next = 1; return;    // test_cthread_read_defined_0.cpp:227:13;
        end
        1: begin
            multistate_WAIT_N_COUNTER_next = 10;
            multistate_PROC_STATE_next = 2; return;    // test_cthread_read_defined_0.cpp:228:13;
        end
        2: begin
            if (multistate_WAIT_N_COUNTER != 1) begin
                multistate_WAIT_N_COUNTER_next = multistate_WAIT_N_COUNTER - 1;
                multistate_PROC_STATE_next = 2; return;    // test_cthread_read_defined_0.cpp:228:13;
            end;
            global_register_next = global_register_next + 1;
            global_comb = 1;
            ms_sig_next = ms_array_next[2];
            if (ms_bsig)
            begin
                ms_loc_comb = 1;
                ms_loc_reg_next = 12;
            end else begin
                ms_loc_comb = 2;
            end
            ms_sig_next = ms_loc_comb + ms_loc_reg_next + global_comb;
            multistate_PROC_STATE_next = 1; return;    // test_cthread_read_defined_0.cpp:227:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multistate_ff
    if ( ~nrst ) begin
        integer ms_loc_comb;
        ms_loc_comb = 0;
        global_register <= 0;
        ms_sig <= 0;
        ms_loc_reg <= 1;
        ms_array[1] <= 10;
        multistate_PROC_STATE <= 0;    // test_cthread_read_defined_0.cpp:210:9;
        multistate_WAIT_N_COUNTER <= 0;
    end
    else begin
        multistate_WAIT_N_COUNTER <= multistate_WAIT_N_COUNTER_next;
        ms_sig <= ms_sig_next;
        global_register <= global_register_next;
        ms_array <= ms_array_next;
        ms_loc_reg <= ms_loc_reg_next;
        multistate_PROC_STATE <= multistate_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: func_call (test_cthread_read_defined_0.cpp:254:5) 

// Thread-local variables
logic func_call_PROC_STATE;
logic func_call_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : func_call_comb     // test_cthread_read_defined_0.cpp:254:5
    func_call_func;
end
function void func_call_func;
    integer aa;
    integer par;
    integer cc;
    logic b_1;
    integer dd;
    func_call_PROC_STATE_next = func_call_PROC_STATE;
    
    case (func_call_PROC_STATE)
        default : begin
            par = aa;
            // Call func_int_read() begin
            b_1 = cc == 0;
            // Call func_int_read() end
            // Call func_int_defined() begin
            dd = 0;
            // Call func_int_defined() end
            func_call_PROC_STATE_next = 0; return;    // test_cthread_read_defined_0.cpp:271:9;
        end
        0: begin
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : func_call_ff
    begin
        func_call_PROC_STATE <= func_call_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: func_call_sc_type (test_cthread_read_defined_0.cpp:274:5) 

// Thread-local variables
logic func_call_sc_type_PROC_STATE;
logic func_call_sc_type_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : func_call_sc_type_comb     // test_cthread_read_defined_0.cpp:274:5
    func_call_sc_type_func;
end
function void func_call_sc_type_func;
    logic signed [1:0] cc;
    logic signed [1:0] par;
    logic signed [1:0] dd;
    logic signed [1:0] ee;
    logic b_1;
    func_call_sc_type_PROC_STATE_next = func_call_sc_type_PROC_STATE;
    
    case (func_call_sc_type_PROC_STATE)
        default : begin
            cc = 0;
            par = cc;
            dd = 0;
            ee = 0;
            // Call func_sc_read() begin
            b_1 = ee == 0;
            // Call func_sc_read() end
            func_call_sc_type_PROC_STATE_next = 0; return;    // test_cthread_read_defined_0.cpp:287:9;
        end
        0: begin
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : func_call_sc_type_ff
    begin
        func_call_sc_type_PROC_STATE <= func_call_sc_type_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: func_call_arr (test_cthread_read_defined_0.cpp:297:5) 

// Thread-local variables
logic func_call_arr_PROC_STATE;
logic func_call_arr_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : func_call_arr_comb     // test_cthread_read_defined_0.cpp:297:5
    func_call_arr_func;
end
function void func_call_arr_func;
    func_call_arr_PROC_STATE_next = func_call_arr_PROC_STATE;
    
    case (func_call_arr_PROC_STATE)
        default : begin
            func_call_arr_PROC_STATE_next = 0; return;    // test_cthread_read_defined_0.cpp:308:9;
        end
        0: begin
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : func_call_arr_ff
    begin
        func_call_arr_PROC_STATE <= func_call_arr_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: func_call_arr2 (test_cthread_read_defined_0.cpp:322:5) 

// Thread-local variables
logic signed [31:0] bb[3];
logic signed [31:0] bb_next[3];
logic signed [31:0] cc[2][2];
logic signed [31:0] cc_next[2][2];
logic func_call_arr2_PROC_STATE;
logic func_call_arr2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : func_call_arr2_comb     // test_cthread_read_defined_0.cpp:322:5
    func_call_arr2_func;
end
function void func_call_arr2_func;
    integer aa[3];
    integer ii;
    integer ii_1;
    integer ii_2;
    bb_next = bb;
    cc_next = cc;
    func_call_arr2_PROC_STATE_next = func_call_arr2_PROC_STATE;
    
    case (func_call_arr2_PROC_STATE)
        default : begin
            // Call func_arr1a() begin
            ii = aa[1];
            // Call func_arr1a() end
            // Call func_arr2a() begin
            ii_1 = bb_next[sig];
            // Call func_arr2a() end
            // Call func_arr3a() begin
            ii_2 = cc_next[sig][1];
            // Call func_arr3a() end
            func_call_arr2_PROC_STATE_next = 0; return;    // test_cthread_read_defined_0.cpp:333:9;
        end
        0: begin
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : func_call_arr2_ff
    begin
        bb <= bb_next;
        cc <= cc_next;
        func_call_arr2_PROC_STATE <= func_call_arr2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: return_value (test_cthread_read_defined_0.cpp:150:5) 

always_comb 
begin : return_value     // test_cthread_read_defined_0.cpp:150:5
    integer TMP_0;
    integer i;
    integer j;
    // Call ret_func() begin
    i = 1;
    TMP_0 = i;
    // Call ret_func() end
    j = TMP_0;
end

endmodule

