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
logic in2;
logic signed [31:0] out;
logic [3:0] s;
logic sb;

// Local parameters generated for C++ constants
localparam logic [6:0] e = 0;

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_use_def (test_cthread_sel_bit.cpp:68:5) 

// Thread-local variables
logic [4:0] z;
logic [4:0] z_next;

// Next-state combinational logic
always_comb begin : bit_select_use_def_comb     // test_cthread_sel_bit.cpp:68:5
    bit_select_use_def_func;
end
function void bit_select_use_def_func;
    z_next = z;
    z_next[1] = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_use_def_ff
    if ( ~arstn ) begin
        z <= 0;
    end
    else begin
        z <= z_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_use_def0 (test_cthread_sel_bit.cpp:68:5) 

// Thread-local variables
logic [4:0] z0;
logic [4:0] z_next0;

// Next-state combinational logic
always_comb begin : bit_select_use_def0_comb     // test_cthread_sel_bit.cpp:68:5
    bit_select_use_def0_func;
end
function void bit_select_use_def0_func;
    z_next0 = z0;
    z_next0[1] = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_use_def0_ff
    if ( ~arstn ) begin
        z0 <= 0;
    end
    else begin
        z0 <= z_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs1 (test_cthread_sel_bit.cpp:81:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic [2:0] x;
logic [2:0] x_next;
logic [2:0] a;
logic [2:0] a_next;

// Next-state combinational logic
always_comb begin : bit_select_lhs1_comb     // test_cthread_sel_bit.cpp:81:5
    bit_select_lhs1_func;
end
function void bit_select_lhs1_func;
    a_next = a;
    out_next = out;
    x_next = x;
    x_next[1] = 1;
    a_next[2] = x_next[1];
    out_next = x_next[1] + a_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs1_ff
    if ( ~arstn ) begin
        out <= 0;
        x <= 0;
        a <= 3;
    end
    else begin
        out <= out_next;
        x <= x_next;
        a <= a_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs1a (test_cthread_sel_bit.cpp:98:5) 

// Thread-local variables
logic signed [31:0] out_next0;
logic [2:0] x0;
logic [2:0] x_next0;

// Next-state combinational logic
always_comb begin : bit_select_lhs1a_comb     // test_cthread_sel_bit.cpp:98:5
    bit_select_lhs1a_func;
end
function void bit_select_lhs1a_func;
    out_next0 = out;
    x_next0 = x0;
    x_next0[0] = 1;
    x_next0[1] = 0;
    x_next0[2] = x_next0[1] != in2;
    out_next0 = (x_next0[2] == in2) ? x_next0[1] + 1 : x_next0[0] * 2;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs1a_ff
    if ( ~arstn ) begin
        out <= 0;
        x0 <= 0;
    end
    else begin
        out <= out_next0;
        x0 <= x_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs2 (test_cthread_sel_bit.cpp:113:5) 

// Thread-local variables
logic signed [31:0] out_next1;
logic [3:0] b;
logic [3:0] b_next;

// Next-state combinational logic
always_comb begin : bit_select_lhs2_comb     // test_cthread_sel_bit.cpp:113:5
    bit_select_lhs2_func;
end
function void bit_select_lhs2_func;
    b_next = b;
    out_next1 = out;
    b_next[2] = 1;
    out_next1 = b_next;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs2_ff
    if ( ~arstn ) begin
        out <= 0;
    end
    else begin
        out <= out_next1;
        b <= b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs3 (test_cthread_sel_bit.cpp:126:5) 

// Thread-local variables
logic [4:0] c;

// Next-state combinational logic
always_comb begin : bit_select_lhs3_comb     // test_cthread_sel_bit.cpp:126:5
    bit_select_lhs3_func;
end
function void bit_select_lhs3_func;
    c = 3;
    c[2] = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs3_ff
    if ( ~arstn ) begin
        logic [4:0] c;
        c = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs4 (test_cthread_sel_bit.cpp:139:5) 

// Thread-local variables
logic [5:0] d;
logic [5:0] d_next;

// Next-state combinational logic
always_comb begin : bit_select_lhs4_comb     // test_cthread_sel_bit.cpp:139:5
    bit_select_lhs4_func;
end
function void bit_select_lhs4_func;
    d_next = d;
    d_next[0] = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs4_ff
    if ( ~arstn ) begin
    end
    else begin
        d <= d_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs4a (test_cthread_sel_bit.cpp:150:5) 

// Thread-local variables
logic signed [31:0] out_next2;

// Next-state combinational logic
always_comb begin : bit_select_lhs4a_comb     // test_cthread_sel_bit.cpp:150:5
    bit_select_lhs4a_func;
end
function void bit_select_lhs4a_func;
    out_next2 = out;
    out_next2 = e[2];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs4a_ff
    if ( ~arstn ) begin
        out <= 1;
    end
    else begin
        out <= out_next2;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_logic (test_cthread_sel_bit.cpp:162:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic [6:0] x1;
logic [6:0] x_next1;

// Next-state combinational logic
always_comb begin : bit_select_logic_comb     // test_cthread_sel_bit.cpp:162:5
    bit_select_logic_func;
end
function void bit_select_logic_func;
    integer k;
    logic b_1;
    j_next = j;
    x_next1 = x1;
    k = 0;
    x_next1[j_next] = 1;
    if (x_next1[j_next])
    begin
        k = 1;
    end
    if (x_next1[j_next + 1])
    begin
        k = 2;
    end
    if (x_next1[1] || j_next == 1)
    begin
        if (x_next1[j_next] && j_next == 2)
        begin
            k = 3;
        end
        k = 4;
    end
    b_1 = x_next1[1] || x_next1[2] && x_next1[3] || !x_next1[4];
    b_1 = x_next1[1] || 1 && b_1 && !(0 || x_next1[5] || x_next1[6]);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_logic_ff
    if ( ~arstn ) begin
        j <= s;
        x1 <= 0;
    end
    else begin
        j <= j_next;
        x1 <= x_next1;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_comp_logic (test_cthread_sel_bit.cpp:187:5) 

// Thread-local variables
logic [2:0] x2;
logic [2:0] x_next2;

// Next-state combinational logic
always_comb begin : bit_select_comp_logic_comb     // test_cthread_sel_bit.cpp:187:5
    bit_select_comp_logic_func;
end
function void bit_select_comp_logic_func;
    integer k;
    logic b_1;
    x_next2 = x2;
    k = 0;
    if (1 && x_next2[1])
    begin
        k = 1;
    end
    k = 2;
    b_1 = 1 && x_next2[1];
    b_1 = 1;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_comp_logic_ff
    if ( ~arstn ) begin
        integer j_1;
        j_1 = s;
        x2 <= 0;
        x2[1] = sb;
    end
    else begin
        x2 <= x_next2;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: bit_select_lhs_misc (test_cthread_sel_bit.cpp:207:5) 

// Next-state combinational logic
always_comb begin : bit_select_lhs_misc_comb     // test_cthread_sel_bit.cpp:207:5
    bit_select_lhs_misc_func;
end
function void bit_select_lhs_misc_func;
    logic [2:0] x_1;
    x_1 = in;
    if (x_1[1])
    begin
        x_1[2] = x_1[0];
    end
    for (integer i = 0; i < 3; i++)
    begin
        x_1[i] = |(i % 2);
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge arstn) 
begin : bit_select_lhs_misc_ff
    if ( ~arstn ) begin
        logic [2:0] x_1;
        x_1 = 0;
    end
    else begin
    end
end

endmodule


