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
    input logic clk
);

// SystemC signals
logic arstn;
logic signed [31:0] in;

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait1 (test_cthread_for.cpp:55:5) 

// Next-state combinational logic
always_comb begin : for_stmt_no_wait1_comb     // test_cthread_for.cpp:55:5
    for_stmt_no_wait1_func;
end
function void for_stmt_no_wait1_func;
    integer k;
    for (integer i = 0; i < 2; i++)
    begin
        k = 1;
    end
    k = 2;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait2 (test_cthread_for.cpp:71:5) 

// Thread-local variables
logic signed [31:0] k;
logic signed [31:0] k_next;
logic for_stmt_no_wait2_PROC_STATE;
logic for_stmt_no_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_no_wait2_comb     // test_cthread_for.cpp:71:5
    for_stmt_no_wait2_func;
end
function void for_stmt_no_wait2_func;
    k_next = k;
    for_stmt_no_wait2_PROC_STATE_next = for_stmt_no_wait2_PROC_STATE;
    
    case (for_stmt_no_wait2_PROC_STATE)
        0: begin
            k_next = 0;
            for (integer i = 0; i < 4; i++)
            begin
                k_next--;
            end
            for_stmt_no_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:83:13;
        end
        1: begin
            for (integer i = 0; i < 10; i++)
            begin
                if (|in)
                begin
                    for (integer j = 0; j < 4; j++)
                    begin
                        k_next++;
                    end
                end
            end
            k_next = 0;
            for (integer i = 0; i < 4; i++)
            begin
                k_next--;
            end
            for_stmt_no_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:83:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait2_ff
    if ( ~arstn ) begin
        for_stmt_no_wait2_PROC_STATE <= 0;    // test_cthread_for.cpp:73:9;
    end
    else begin
        k <= k_next;
        for_stmt_no_wait2_PROC_STATE <= for_stmt_no_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait3 (test_cthread_for.cpp:96:5) 

// Next-state combinational logic
always_comb begin : for_stmt_no_wait3_comb     // test_cthread_for.cpp:96:5
    for_stmt_no_wait3_func;
end
function void for_stmt_no_wait3_func;
    integer k;
    k = 11;
    for (integer i = 0; i < 4; i++)
    begin
        if (in != k)
        begin
            break;
        end
        k = k * 2;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait3_ff
    if ( ~arstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait4 (test_cthread_for.cpp:114:5) 

// Thread-local variables
logic signed [31:0] n;
logic signed [31:0] n_next;
logic [31:0] m;
logic [31:0] m_next;
logic for_stmt_no_wait4_PROC_STATE;
logic for_stmt_no_wait4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_no_wait4_comb     // test_cthread_for.cpp:114:5
    for_stmt_no_wait4_func;
end
function void for_stmt_no_wait4_func;
    m_next = m;
    n_next = n;
    for_stmt_no_wait4_PROC_STATE_next = for_stmt_no_wait4_PROC_STATE;
    
    case (for_stmt_no_wait4_PROC_STATE)
        0: begin
            for (integer i = 0; i < 4; i++)
            begin
                if (|in)
                begin
                    n_next = n_next + 1;
                end else begin
                    continue;
                end
                m_next = m_next + n_next;
            end
            for_stmt_no_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:131:13;
        end
        1: begin
            m_next = 0;
            for (integer i = 0; i < 4; i++)
            begin
                if (|in)
                begin
                    n_next = n_next + 1;
                end else begin
                    continue;
                end
                m_next = m_next + n_next;
            end
            for_stmt_no_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:131:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait4_ff
    if ( ~arstn ) begin
        n <= 1;
        m <= 0;
        for_stmt_no_wait4_PROC_STATE <= 0;    // test_cthread_for.cpp:118:9;
    end
    else begin
        n <= n_next;
        m <= m_next;
        for_stmt_no_wait4_PROC_STATE <= for_stmt_no_wait4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait0 (test_cthread_for.cpp:139:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic [1:0] for_stmt_wait0_PROC_STATE;
logic [1:0] for_stmt_wait0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait0_comb     // test_cthread_for.cpp:139:5
    for_stmt_wait0_func;
end
function void for_stmt_wait0_func;
    integer k;
    i_next = i;
    for_stmt_wait0_PROC_STATE_next = for_stmt_wait0_PROC_STATE;
    
    case (for_stmt_wait0_PROC_STATE)
        0: begin
            k = 1;
            for_stmt_wait0_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:146:13;
        end
        1: begin
            i_next = 0;
            k = 2;
            for_stmt_wait0_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:150:17;
        end
        2: begin
            i_next++;
            if (i_next < 2)
            begin
                k = 2;
                for_stmt_wait0_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:150:17;
            end
            k = 3;
            k = 1;
            for_stmt_wait0_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:146:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait0_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait0_PROC_STATE <= 0;    // test_cthread_for.cpp:142:9;
    end
    else begin
        i <= i_next;
        for_stmt_wait0_PROC_STATE <= for_stmt_wait0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait1 (test_cthread_for.cpp:156:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic for_stmt_wait1_PROC_STATE;
logic for_stmt_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait1_comb     // test_cthread_for.cpp:156:5
    for_stmt_wait1_func;
end
function void for_stmt_wait1_func;
    integer k;
    i_next0 = i0;
    for_stmt_wait1_PROC_STATE_next = for_stmt_wait1_PROC_STATE;
    
    case (for_stmt_wait1_PROC_STATE)
        0: begin
            i_next0 = 0;
            k = 1;
            for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:164:17;
        end
        1: begin
            i_next0++;
            if (i_next0 < 2)
            begin
                k = 1;
                for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:164:17;
            end
            k = 2;
            i_next0 = 0;
            k = 1;
            for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:164:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait1_PROC_STATE <= 0;    // test_cthread_for.cpp:159:9;
    end
    else begin
        i0 <= i_next0;
        for_stmt_wait1_PROC_STATE <= for_stmt_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait2 (test_cthread_for.cpp:170:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic [1:0] for_stmt_wait2_PROC_STATE;
logic [1:0] for_stmt_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait2_comb     // test_cthread_for.cpp:170:5
    for_stmt_wait2_func;
end
function void for_stmt_wait2_func;
    integer k;
    i_next1 = i1;
    for_stmt_wait2_PROC_STATE_next = for_stmt_wait2_PROC_STATE;
    
    case (for_stmt_wait2_PROC_STATE)
        0: begin
            i_next1 = 0;
            k = 1;
            for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:178:17;
        end
        1: begin
            i_next1++;
            if (i_next1 < 2)
            begin
                k = 1;
                for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:178:17;
            end
            k = 2;
            for_stmt_wait2_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:181:13;
        end
        2: begin
            k = 3;
            i_next1 = 0;
            k = 1;
            for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:178:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait2_PROC_STATE <= 0;    // test_cthread_for.cpp:173:9;
    end
    else begin
        i1 <= i_next1;
        for_stmt_wait2_PROC_STATE <= for_stmt_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait3 (test_cthread_for.cpp:188:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] i2;
logic signed [31:0] i_next2;
logic [1:0] for_stmt_wait3_PROC_STATE;
logic [1:0] for_stmt_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait3_comb     // test_cthread_for.cpp:188:5
    for_stmt_wait3_func;
end
function void for_stmt_wait3_func;
    integer k;
    i_next2 = i2;
    j_next = j;
    for_stmt_wait3_PROC_STATE_next = for_stmt_wait3_PROC_STATE;
    
    case (for_stmt_wait3_PROC_STATE)
        0: begin
            i_next2 = 0;
            k = 1;
            j_next = 0;
            k = 2;
            for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:198:21;
        end
        1: begin
            j_next++;
            if (j_next < 3)
            begin
                k = 2;
                for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:198:21;
            end
            if (|in)
            begin
                // break begin
                k = 3;
                for_stmt_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:203:13;
                // break end
            end
            i_next2++;
            if (i_next2 < 2)
            begin
                k = 1;
                j_next = 0;
                k = 2;
                for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:198:21;
            end
            k = 3;
            for_stmt_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:203:13;
        end
        2: begin
            i_next2 = 0;
            k = 1;
            j_next = 0;
            k = 2;
            for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:198:21;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait3_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait3_PROC_STATE <= 0;    // test_cthread_for.cpp:191:9;
    end
    else begin
        j <= j_next;
        i2 <= i_next2;
        for_stmt_wait3_PROC_STATE <= for_stmt_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait4 (test_cthread_for.cpp:208:5) 

// Thread-local variables
logic signed [31:0] k0;
logic signed [31:0] k_next0;
logic signed [31:0] i3;
logic signed [31:0] i_next3;
logic for_stmt_wait4_PROC_STATE;
logic for_stmt_wait4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait4_comb     // test_cthread_for.cpp:208:5
    for_stmt_wait4_func;
end
function void for_stmt_wait4_func;
    i_next3 = i3;
    k_next0 = k0;
    for_stmt_wait4_PROC_STATE_next = for_stmt_wait4_PROC_STATE;
    
    case (for_stmt_wait4_PROC_STATE)
        0: begin
            i_next3 = 0;
            for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:215:17;
        end
        1: begin
            if (in == 42)
            begin
                // continue begin
                i_next3++;
                if (i_next3 < 2)
                begin
                    for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:215:17;
                end
                i_next3 = 0;
                for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:215:17;
                // continue end
            end
            for (integer j = 0; j < 3; j++)
            begin
                k_next0++;
            end
            i_next3++;
            if (i_next3 < 2)
            begin
                for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:215:17;
            end
            i_next3 = 0;
            for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:215:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait4_ff
    if ( ~arstn ) begin
        k0 <= 0;
        for_stmt_wait4_PROC_STATE <= 0;    // test_cthread_for.cpp:211:9;
    end
    else begin
        k0 <= k_next0;
        i3 <= i_next3;
        for_stmt_wait4_PROC_STATE <= for_stmt_wait4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait_noiter (test_cthread_for.cpp:227:5) 

// Next-state combinational logic
always_comb begin : for_stmt_wait_noiter_comb     // test_cthread_for.cpp:227:5
    for_stmt_wait_noiter_func;
end
function void for_stmt_wait_noiter_func;
    integer k;
    integer i;
    k = 1;
    i = 0;
    k = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait_noiter_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
    end
    else begin
    end
end

endmodule

