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
logic rst;
logic clk_gen;
logic in;
logic out;
logic [31:0] a;
logic [31:0] b;
logic clk;

assign clk = clk_gen;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .rst(rst),
  .in(in),
  .out(out),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_simple.cpp:203:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst,
    input logic in,
    output logic out,
    input logic [31:0] a,
    output logic [31:0] b
);

// SystemC signals
logic d;
logic ps;
logic o;

//------------------------------------------------------------------------------
// Method process: concat_meth (test_cthread_simple.cpp:62:5) 

always_comb 
begin : concat_meth     // test_cthread_simple.cpp:62:5
    logic [1:0] c;
    c = {1'(ps), 1'd0};
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_concat (test_cthread_simple.cpp:67:5) 

// Next-state combinational logic
always_comb begin : simple_concat_comb     // test_cthread_simple.cpp:67:5
    simple_concat_func;
end
function void simple_concat_func;
    logic [1:0] c;
    c = {1'(ps), 1'd0};
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : simple_concat_ff
    if ( ~rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_reg_ro (test_cthread_simple.cpp:76:5) 

// Next-state combinational logic
always_comb begin : simple_reg_ro_comb     // test_cthread_simple.cpp:76:5
    simple_reg_ro_func;
end
function void simple_reg_ro_func;
    logic b_1;
    b_1 = d;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : simple_reg_ro_ff
    if ( ~rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_thread (test_cthread_simple.cpp:85:5) 

// Next-state combinational logic
always_comb begin : simple_thread_comb     // test_cthread_simple.cpp:85:5
    simple_thread_func;
end
function void simple_thread_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : simple_thread_ff
    if (rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_reg (test_cthread_simple.cpp:92:5) 

// Thread-local variables
logic o_next;

// Next-state combinational logic
always_comb begin : simple_reg_comb     // test_cthread_simple.cpp:92:5
    simple_reg_func;
end
function void simple_reg_func;
    logic [3:0] l;
    o_next = o;
    l = 1;
    o_next = |(l + d + 1);
    l = o;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : simple_reg_ff
    if ( ~rst ) begin
        logic [3:0] l;
        o <= 0;
        l = 0;
    end
    else begin
        o <= o_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_thread_wo_reset1 (test_cthread_simple.cpp:105:5) 

// Thread-local variables
logic simple_thread_wo_reset1_PROC_STATE;
logic simple_thread_wo_reset1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple_thread_wo_reset1_comb     // test_cthread_simple.cpp:105:5
    simple_thread_wo_reset1_func;
end
function void simple_thread_wo_reset1_func;
    integer i;
    simple_thread_wo_reset1_PROC_STATE_next = simple_thread_wo_reset1_PROC_STATE;
    
    case (simple_thread_wo_reset1_PROC_STATE)
        default : begin
            i = 0;
            simple_thread_wo_reset1_PROC_STATE_next = 0; return;    // test_cthread_simple.cpp:108:13;
        end
        0: begin
            i = 0;
            simple_thread_wo_reset1_PROC_STATE_next = 0; return;    // test_cthread_simple.cpp:108:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : simple_thread_wo_reset1_ff
    begin
        simple_thread_wo_reset1_PROC_STATE <= simple_thread_wo_reset1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_thread_wo_reset2 (test_cthread_simple.cpp:112:5) 

// Thread-local variables
logic simple_thread_wo_reset2_PROC_STATE;
logic simple_thread_wo_reset2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple_thread_wo_reset2_comb     // test_cthread_simple.cpp:112:5
    simple_thread_wo_reset2_func;
end
function void simple_thread_wo_reset2_func;
    integer i;
    simple_thread_wo_reset2_PROC_STATE_next = simple_thread_wo_reset2_PROC_STATE;
    
    case (simple_thread_wo_reset2_PROC_STATE)
        default : begin
            i = 0;
            i = 1;
            simple_thread_wo_reset2_PROC_STATE_next = 0; return;    // test_cthread_simple.cpp:116:13;
        end
        0: begin
            i = 1;
            simple_thread_wo_reset2_PROC_STATE_next = 0; return;    // test_cthread_simple.cpp:116:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : simple_thread_wo_reset2_ff
    begin
        simple_thread_wo_reset2_PROC_STATE <= simple_thread_wo_reset2_PROC_STATE_next;
    end
end

endmodule

