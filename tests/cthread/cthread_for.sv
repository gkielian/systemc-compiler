//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.18
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

// Variables generated for SystemC signals
logic arstn;
logic signed [31:0] in;
logic signed [31:0] out;

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait1 (test_cthread_for.cpp:64:5) 

// Next-state combinational logic
always_comb begin : for_stmt_no_wait1_comb     // test_cthread_for.cpp:64:5
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

// Synchronous register update
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
// Clocked THREAD: for_stmt_no_wait2 (test_cthread_for.cpp:80:5) 

// Thread-local variables
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic for_stmt_no_wait2_PROC_STATE;
logic for_stmt_no_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_no_wait2_comb     // test_cthread_for.cpp:80:5
    for_stmt_no_wait2_func;
end
function void for_stmt_no_wait2_func;
    k_next = k0;
    for_stmt_no_wait2_PROC_STATE_next = for_stmt_no_wait2_PROC_STATE;
    
    case (for_stmt_no_wait2_PROC_STATE)
        0: begin
            k_next = 0;
            for (integer i = 0; i < 4; i++)
            begin
                k_next--;
            end
            for_stmt_no_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:92:13;
        end
        1: begin
            for (integer i_1 = 0; i_1 < 10; i_1++)
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
            for_stmt_no_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:92:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait2_ff
    if ( ~arstn ) begin
        for_stmt_no_wait2_PROC_STATE <= 0;    // test_cthread_for.cpp:82:9;
    end
    else begin
        k0 <= k_next;
        for_stmt_no_wait2_PROC_STATE <= for_stmt_no_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait3 (test_cthread_for.cpp:105:5) 

// Next-state combinational logic
always_comb begin : for_stmt_no_wait3_comb     // test_cthread_for.cpp:105:5
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

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait3_ff
    if ( ~arstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_no_wait4 (test_cthread_for.cpp:123:5) 

// Thread-local variables
logic signed [31:0] n;
logic signed [31:0] n_next;
logic [31:0] m;
logic [31:0] m_next;
logic for_stmt_no_wait4_PROC_STATE;
logic for_stmt_no_wait4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_no_wait4_comb     // test_cthread_for.cpp:123:5
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
            for_stmt_no_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:140:13;
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
            for_stmt_no_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:140:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_no_wait4_ff
    if ( ~arstn ) begin
        n <= 1;
        m <= 0;
        for_stmt_no_wait4_PROC_STATE <= 0;    // test_cthread_for.cpp:127:9;
    end
    else begin
        n <= n_next;
        m <= m_next;
        for_stmt_no_wait4_PROC_STATE <= for_stmt_no_wait4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait0 (test_cthread_for.cpp:148:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic [1:0] for_stmt_wait0_PROC_STATE;
logic [1:0] for_stmt_wait0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait0_comb     // test_cthread_for.cpp:148:5
    for_stmt_wait0_func;
end
function void for_stmt_wait0_func;
    integer k;
    i_next = i0;
    for_stmt_wait0_PROC_STATE_next = for_stmt_wait0_PROC_STATE;
    
    case (for_stmt_wait0_PROC_STATE)
        0: begin
            k = 1;
            for_stmt_wait0_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:155:13;
        end
        1: begin
            i_next = 0;
            k = 2;
            for_stmt_wait0_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:159:17;
        end
        2: begin
            i_next++;
            if (i_next < 2)
            begin
                k = 2;
                for_stmt_wait0_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:159:17;
            end
            k = 3;
            k = 1;
            for_stmt_wait0_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:155:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait0_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait0_PROC_STATE <= 0;    // test_cthread_for.cpp:151:9;
    end
    else begin
        i0 <= i_next;
        for_stmt_wait0_PROC_STATE <= for_stmt_wait0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait1 (test_cthread_for.cpp:165:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic for_stmt_wait1_PROC_STATE;
logic for_stmt_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait1_comb     // test_cthread_for.cpp:165:5
    for_stmt_wait1_func;
end
function void for_stmt_wait1_func;
    integer k;
    i_next0 = i1;
    for_stmt_wait1_PROC_STATE_next = for_stmt_wait1_PROC_STATE;
    
    case (for_stmt_wait1_PROC_STATE)
        0: begin
            i_next0 = 0;
            k = 1;
            for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:173:17;
        end
        1: begin
            i_next0++;
            if (i_next0 < 2)
            begin
                k = 1;
                for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:173:17;
            end
            k = 2;
            i_next0 = 0;
            k = 1;
            for_stmt_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:173:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait1_PROC_STATE <= 0;    // test_cthread_for.cpp:168:9;
    end
    else begin
        i1 <= i_next0;
        for_stmt_wait1_PROC_STATE <= for_stmt_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait2 (test_cthread_for.cpp:179:5) 

// Thread-local variables
logic signed [31:0] i2;
logic signed [31:0] i_next1;
logic [1:0] for_stmt_wait2_PROC_STATE;
logic [1:0] for_stmt_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait2_comb     // test_cthread_for.cpp:179:5
    for_stmt_wait2_func;
end
function void for_stmt_wait2_func;
    integer k;
    i_next1 = i2;
    for_stmt_wait2_PROC_STATE_next = for_stmt_wait2_PROC_STATE;
    
    case (for_stmt_wait2_PROC_STATE)
        0: begin
            i_next1 = 0;
            k = 1;
            for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:187:17;
        end
        1: begin
            i_next1++;
            if (i_next1 < 2)
            begin
                k = 1;
                for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:187:17;
            end
            k = 2;
            for_stmt_wait2_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:190:13;
        end
        2: begin
            k = 3;
            i_next1 = 0;
            k = 1;
            for_stmt_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:187:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait2_PROC_STATE <= 0;    // test_cthread_for.cpp:182:9;
    end
    else begin
        i2 <= i_next1;
        for_stmt_wait2_PROC_STATE <= for_stmt_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait3 (test_cthread_for.cpp:197:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] i3;
logic signed [31:0] i_next2;
logic [1:0] for_stmt_wait3_PROC_STATE;
logic [1:0] for_stmt_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait3_comb     // test_cthread_for.cpp:197:5
    for_stmt_wait3_func;
end
function void for_stmt_wait3_func;
    integer k;
    i_next2 = i3;
    j_next = j0;
    for_stmt_wait3_PROC_STATE_next = for_stmt_wait3_PROC_STATE;
    
    case (for_stmt_wait3_PROC_STATE)
        0: begin
            i_next2 = 0;
            k = 1;
            j_next = 0;
            k = 2;
            for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:207:21;
        end
        1: begin
            j_next++;
            if (j_next < 3)
            begin
                k = 2;
                for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:207:21;
            end
            if (|in)
            begin
                // break begin
                k = 3;
                for_stmt_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:212:13;
                // break end
            end
            i_next2++;
            if (i_next2 < 2)
            begin
                k = 1;
                j_next = 0;
                k = 2;
                for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:207:21;
            end
            k = 3;
            for_stmt_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:212:13;
        end
        2: begin
            i_next2 = 0;
            k = 1;
            j_next = 0;
            k = 2;
            for_stmt_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:207:21;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait3_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_stmt_wait3_PROC_STATE <= 0;    // test_cthread_for.cpp:200:9;
    end
    else begin
        j0 <= j_next;
        i3 <= i_next2;
        for_stmt_wait3_PROC_STATE <= for_stmt_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait4 (test_cthread_for.cpp:217:5) 

// Thread-local variables
logic signed [31:0] k1;
logic signed [31:0] k_next0;
logic signed [31:0] i4;
logic signed [31:0] i_next3;
logic for_stmt_wait4_PROC_STATE;
logic for_stmt_wait4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_stmt_wait4_comb     // test_cthread_for.cpp:217:5
    for_stmt_wait4_func;
end
function void for_stmt_wait4_func;
    i_next3 = i4;
    k_next0 = k1;
    for_stmt_wait4_PROC_STATE_next = for_stmt_wait4_PROC_STATE;
    
    case (for_stmt_wait4_PROC_STATE)
        0: begin
            i_next3 = 0;
            for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:224:17;
        end
        1: begin
            if (in == 42)
            begin
                // continue begin
                i_next3++;
                if (i_next3 < 2)
                begin
                    for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:224:17;
                end
                i_next3 = 0;
                for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:224:17;
                // continue end
            end
            for (integer j = 0; j < 3; j++)
            begin
                k_next0++;
            end
            i_next3++;
            if (i_next3 < 2)
            begin
                for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:224:17;
            end
            i_next3 = 0;
            for_stmt_wait4_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:224:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait4_ff
    if ( ~arstn ) begin
        k1 <= 0;
        for_stmt_wait4_PROC_STATE <= 0;    // test_cthread_for.cpp:220:9;
    end
    else begin
        k1 <= k_next0;
        i4 <= i_next3;
        for_stmt_wait4_PROC_STATE <= for_stmt_wait4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_stmt_wait_noiter (test_cthread_for.cpp:236:5) 

// Next-state combinational logic
always_comb begin : for_stmt_wait_noiter_comb     // test_cthread_for.cpp:236:5
    for_stmt_wait_noiter_func;
end
function void for_stmt_wait_noiter_func;
    integer k;
    k = 1;
    k = 3;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_stmt_wait_noiter_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_multi_wait1 (test_cthread_for.cpp:254:5) 

// Thread-local variables
logic signed [31:0] i5;
logic signed [31:0] i_next4;
logic [2:0] for_multi_wait1_PROC_STATE;
logic [2:0] for_multi_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_multi_wait1_comb     // test_cthread_for.cpp:254:5
    for_multi_wait1_func;
end
function void for_multi_wait1_func;
    integer k;
    i_next4 = i5;
    for_multi_wait1_PROC_STATE_next = for_multi_wait1_PROC_STATE;
    
    case (for_multi_wait1_PROC_STATE)
        0: begin
            k = 1;
            i_next4 = 0;
            k = 2;
            for_multi_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:263:17;
        end
        1: begin
            k = 3;
            for_multi_wait1_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:266:17;
        end
        2: begin
            if (|in)
            begin
                k = 4;
                for_multi_wait1_PROC_STATE_next = 3; return;    // test_cthread_for.cpp:270:21;
            end
            i_next4++;
            if (i_next4 < 10)
            begin
                k = 2;
                for_multi_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:263:17;
            end
            for_multi_wait1_PROC_STATE_next = 4; return;    // test_cthread_for.cpp:273:13;
        end
        3: begin
            i_next4++;
            if (i_next4 < 10)
            begin
                k = 2;
                for_multi_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:263:17;
            end
            for_multi_wait1_PROC_STATE_next = 4; return;    // test_cthread_for.cpp:273:13;
        end
        4: begin
            k = 1;
            i_next4 = 0;
            k = 2;
            for_multi_wait1_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:263:17;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_multi_wait1_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_multi_wait1_PROC_STATE <= 0;    // test_cthread_for.cpp:257:9;
    end
    else begin
        i5 <= i_next4;
        for_multi_wait1_PROC_STATE <= for_multi_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_multi_wait2 (test_cthread_for.cpp:277:5) 

// Thread-local variables
logic signed [31:0] i6;
logic signed [31:0] i_next5;
logic [1:0] for_multi_wait2_PROC_STATE;
logic [1:0] for_multi_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_multi_wait2_comb     // test_cthread_for.cpp:277:5
    for_multi_wait2_func;
end
function void for_multi_wait2_func;
    integer k;
    i_next5 = i6;
    for_multi_wait2_PROC_STATE_next = for_multi_wait2_PROC_STATE;
    
    case (for_multi_wait2_PROC_STATE)
        0: begin
            k = 1;
            for_multi_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:284:13;
        end
        1: begin
            if (!(|in))
            begin
                for_multi_wait2_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:287:17;
            end
            k = 1;
            for_multi_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:284:13;
        end
        2: begin
            i_next5 = 0;
            k = 2;
            for_multi_wait2_PROC_STATE_next = 3; return;    // test_cthread_for.cpp:291:21;
        end
        3: begin
            ++i_next5;
            if (i_next5 < 3)
            begin
                k = 2;
                for_multi_wait2_PROC_STATE_next = 3; return;    // test_cthread_for.cpp:291:21;
            end
            if (!(|in))
            begin
                for_multi_wait2_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:287:17;
            end
            k = 1;
            for_multi_wait2_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:284:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_multi_wait2_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_multi_wait2_PROC_STATE <= 0;    // test_cthread_for.cpp:280:9;
    end
    else begin
        i6 <= i_next5;
        for_multi_wait2_PROC_STATE <= for_multi_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_multi_wait3 (test_cthread_for.cpp:297:5) 

// Thread-local variables
logic signed [31:0] i7;
logic signed [31:0] i_next6;
logic [2:0] for_multi_wait3_PROC_STATE;
logic [2:0] for_multi_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_multi_wait3_comb     // test_cthread_for.cpp:297:5
    for_multi_wait3_func;
end
function void for_multi_wait3_func;
    integer k;
    i_next6 = i7;
    for_multi_wait3_PROC_STATE_next = for_multi_wait3_PROC_STATE;
    
    case (for_multi_wait3_PROC_STATE)
        0: begin
            k = 1;
            for_multi_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:304:13;
        end
        1: begin
            i_next6 = 0;
            k = 2;
            for_multi_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:309:21;
        end
        2: begin
            ++i_next6;
            if (i_next6 < 3)
            begin
                k = 2;
                for_multi_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:309:21;
            end
            for_multi_wait3_PROC_STATE_next = 3; return;    // test_cthread_for.cpp:312:17;
        end
        3: begin
            if (|out)
            begin
                for_multi_wait3_PROC_STATE_next = 4; return;    // test_cthread_for.cpp:315:21;
            end
            if (in != 42)
            begin
                i_next6 = 0;
                k = 2;
                for_multi_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:309:21;
            end
            k = 1;
            for_multi_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:304:13;
        end
        4: begin
            k = 3;
            if (in != 42)
            begin
                i_next6 = 0;
                k = 2;
                for_multi_wait3_PROC_STATE_next = 2; return;    // test_cthread_for.cpp:309:21;
            end
            k = 1;
            for_multi_wait3_PROC_STATE_next = 1; return;    // test_cthread_for.cpp:304:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : for_multi_wait3_ff
    if ( ~arstn ) begin
        integer k;
        k = 0;
        for_multi_wait3_PROC_STATE <= 0;    // test_cthread_for.cpp:300:9;
    end
    else begin
        i7 <= i_next6;
        for_multi_wait3_PROC_STATE <= for_multi_wait3_PROC_STATE_next;
    end
end

endmodule


