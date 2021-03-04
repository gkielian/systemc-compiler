//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
);

// SystemC signals
logic clk;
logic arstn;
logic signed [31:0] out;

//------------------------------------------------------------------------------
// Clocked THREAD: comb_arr_in_reset (test_cthread_comb_arr.cpp:75:5) 

// Thread-local variables
logic [1:0] arr[2];

// Next-state combinational logic
always_comb begin : comb_arr_in_reset_comb     // test_cthread_comb_arr.cpp:75:5
    comb_arr_in_reset_func;
end
function void comb_arr_in_reset_func;
    arr[1] = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_arr_in_reset_ff
    if ( ~arstn ) begin
        logic [1:0] arr[2];
        arr[0] = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_arr_in_reset1 (test_cthread_comb_arr.cpp:87:5) 

// Thread-local variables
logic [1:0] arr1[2];
logic [1:0] arr1_next[2];
logic signed [31:0] out_next;

// Next-state combinational logic
always_comb begin : comb_arr_in_reset1_comb     // test_cthread_comb_arr.cpp:87:5
    comb_arr_in_reset1_func;
end
function void comb_arr_in_reset1_func;
    arr1_next = arr1;
    out_next = out;
    arr1_next[1] = 3;
    out_next = arr1_next[0];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_arr_in_reset1_ff
    if ( ~arstn ) begin
        arr1[0] <= 0;
    end
    else begin
        arr1 <= arr1_next;
        out <= out_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_arr_in_reset1a (test_cthread_comb_arr.cpp:99:5) 

// Thread-local variables
logic [1:0] arr2[2];
logic [1:0] arr2_next[2];
logic signed [31:0] out_next0;
logic comb_arr_in_reset1a_PROC_STATE;
logic comb_arr_in_reset1a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : comb_arr_in_reset1a_comb     // test_cthread_comb_arr.cpp:99:5
    comb_arr_in_reset1a_func;
end
function void comb_arr_in_reset1a_func;
    arr2_next = arr2;
    out_next0 = out;
    comb_arr_in_reset1a_PROC_STATE_next = comb_arr_in_reset1a_PROC_STATE;
    
    case (comb_arr_in_reset1a_PROC_STATE)
        0: begin
            comb_arr_in_reset1a_PROC_STATE_next = 1; return;    // test_cthread_comb_arr.cpp:105:13;
        end
        1: begin
            out_next0 = arr2_next[1];
            comb_arr_in_reset1a_PROC_STATE_next = 1; return;    // test_cthread_comb_arr.cpp:105:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_arr_in_reset1a_ff
    if ( ~arstn ) begin
        arr2[0] <= 0;
        arr2[1] <= 1;
        comb_arr_in_reset1a_PROC_STATE <= 0;    // test_cthread_comb_arr.cpp:102:9;
    end
    else begin
        arr2 <= arr2_next;
        out <= out_next0;
        comb_arr_in_reset1a_PROC_STATE <= comb_arr_in_reset1a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_arr_in_reset2 (test_cthread_comb_arr.cpp:111:5) 

// Thread-local variables
logic signed [31:0] out_next1;
logic [1:0] arr3[2];

// Next-state combinational logic
always_comb begin : comb_arr_in_reset2_comb     // test_cthread_comb_arr.cpp:111:5
    comb_arr_in_reset2_func;
end
function void comb_arr_in_reset2_func;
    out_next1 = out;
    arr3[0] = 3;
    out_next1 = arr3[0];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_arr_in_reset2_ff
    if ( ~arstn ) begin
        logic [1:0] arr3[2];
        arr3[0] = 0;
    end
    else begin
        out <= out_next1;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_arr_in_reset2D (test_cthread_comb_arr.cpp:124:5) 

// Thread-local variables
logic [2:0] arr4[3][4];

// Next-state combinational logic
always_comb begin : comb_arr_in_reset2D_comb     // test_cthread_comb_arr.cpp:124:5
    comb_arr_in_reset2D_func;
end
function void comb_arr_in_reset2D_func;
    arr4[1][2] = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_arr_in_reset2D_ff
    if ( ~arstn ) begin
        logic [2:0] arr4[3][4];
        arr4[0][1] = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_ptr_in_reset (test_cthread_comb_arr.cpp:136:5) 

// Thread-local variables
logic [8:0] p;

// Next-state combinational logic
always_comb begin : comb_ptr_in_reset_comb     // test_cthread_comb_arr.cpp:136:5
    comb_ptr_in_reset_func;
end
function void comb_ptr_in_reset_func;
    p = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_ptr_in_reset_ff
    if ( ~arstn ) begin
        logic [8:0] p;
        p = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: init_list1 (test_cthread_comb_arr.cpp:149:5) 

// Thread-local variables
logic signed [31:0] m;
logic signed [31:0] m_next;
logic signed [31:0] n;
logic signed [31:0] n_next;
logic signed [31:0] l1[2];
logic signed [31:0] l1_next[2];
logic signed [31:0] out_next2;
logic init_list1_PROC_STATE;
logic init_list1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : init_list1_comb     // test_cthread_comb_arr.cpp:149:5
    init_list1_func;
end
function void init_list1_func;
    integer l2[2];
    l1_next = l1;
    m_next = m;
    n_next = n;
    out_next2 = out;
    init_list1_PROC_STATE_next = init_list1_PROC_STATE;
    
    case (init_list1_PROC_STATE)
        0: begin
            l2[0] = m_next; l2[1] = n_next;
            out_next2 = l1_next[1] + l2[0];
            init_list1_PROC_STATE_next = 1; return;    // test_cthread_comb_arr.cpp:160:13;
        end
        1: begin
            n_next = m_next;
            l2[0] = m_next; l2[1] = n_next;
            out_next2 = l1_next[1] + l2[0];
            init_list1_PROC_STATE_next = 1; return;    // test_cthread_comb_arr.cpp:160:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : init_list1_ff
    if ( ~arstn ) begin
        n <= 0;
        m <= 1;
        l1[0] <= 0; l1[1] <= m;
        init_list1_PROC_STATE <= 0;    // test_cthread_comb_arr.cpp:154:9;
    end
    else begin
        m <= m_next;
        n <= n_next;
        l1 <= l1_next;
        out <= out_next2;
        init_list1_PROC_STATE <= init_list1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: init_list2 (test_cthread_comb_arr.cpp:166:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] out_next3;

// Next-state combinational logic
always_comb begin : init_list2_comb     // test_cthread_comb_arr.cpp:166:5
    init_list2_func;
end
function void init_list2_func;
    integer ll2[3];
    j_next = j;
    out_next3 = out;
    ll2[0] = 3; ll2[1] = 2; ll2[2] = j_next;
    out_next3 = ll2[2];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : init_list2_ff
    if ( ~arstn ) begin
        integer ll1[2];
        ll1[0] = 0; ll1[1] = 1;
        j <= ll1[1];
    end
    else begin
        j <= j_next;
        out <= out_next3;
    end
end

endmodule

