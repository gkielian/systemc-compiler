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
logic clk;

assign clk = clk_gen;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_varname.cpp:202:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst
);

// SystemC signals
logic a;
logic b;
logic c;
logic s1;
logic s2;

//------------------------------------------------------------------------------
// Method process: local_varname (test_cthread_varname.cpp:56:5) 

always_comb 
begin : local_varname     // test_cthread_varname.cpp:56:5
    integer m_1;
    integer k_1;
    integer a_1;
    m_1 = 1;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_func (test_cthread_varname.cpp:71:5) 

// Thread-local variables
logic signed [31:0] m1;
logic signed [31:0] m1_next;
logic [2:0] check_hiwait_delay;
logic [2:0] check_hiwait_delay_next;
logic signed [31:0] k;
logic signed [31:0] m;
logic [1:0] doble_varname_func_PROC_STATE;
logic [1:0] doble_varname_func_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_func_comb     // test_cthread_varname.cpp:71:5
    doble_varname_func_func;
end
function void doble_varname_func_func;
    logic [1:0] check_hiwait_delay_1;
    check_hiwait_delay_next = check_hiwait_delay;
    m1_next = m1;
    doble_varname_func_PROC_STATE_next = doble_varname_func_PROC_STATE;
    
    case (doble_varname_func_PROC_STATE)
        0: begin
            check_hiwait_delay_1 = 1;
            m1_next = check_hiwait_delay_1;
            // Call syncWaiting() begin
            check_hiwait_delay_next = a ? b : c;
            doble_varname_func_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:68:9;
            // Call syncWaiting() end
        end
        1: begin
            // Call syncWaiting() begin
            m = check_hiwait_delay_next;
            // Call syncWaiting() end
            doble_varname_func_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:81:13;
        end
        2: begin
            k = m1_next;
            check_hiwait_delay_1 = 1;
            m1_next = check_hiwait_delay_1;
            // Call syncWaiting() begin
            check_hiwait_delay_next = a ? b : c;
            doble_varname_func_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:68:9;
            // Call syncWaiting() end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_func_ff
    if (rst ) begin
        doble_varname_func_PROC_STATE <= 0;    // test_cthread_varname.cpp:73:9;
    end
    else begin
        m1 <= m1_next;
        check_hiwait_delay <= check_hiwait_delay_next;
        doble_varname_func_PROC_STATE <= doble_varname_func_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope (test_cthread_varname.cpp:87:5) 

// Thread-local variables
logic [2:0] acheck_hiwait_delay;
logic [2:0] acheck_hiwait_delay_next;
logic signed [31:0] m2;
logic [1:0] doble_varname_scope_PROC_STATE;
logic [1:0] doble_varname_scope_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_scope_comb     // test_cthread_varname.cpp:87:5
    doble_varname_scope_func;
end
function void doble_varname_scope_func;
    logic [1:0] acheck_hiwait_delay_1;
    acheck_hiwait_delay_next = acheck_hiwait_delay;
    doble_varname_scope_PROC_STATE_next = doble_varname_scope_PROC_STATE;
    
    case (doble_varname_scope_PROC_STATE)
        0: begin
            acheck_hiwait_delay_1 = 1;
            m2 = acheck_hiwait_delay_1;
            if (a)
            begin
                acheck_hiwait_delay_next = 1;
                doble_varname_scope_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:98:17;
            end
            doble_varname_scope_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:102:13;
        end
        1: begin
            m2 = acheck_hiwait_delay_next;
            doble_varname_scope_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:102:13;
        end
        2: begin
            acheck_hiwait_delay_1 = 1;
            m2 = acheck_hiwait_delay_1;
            if (a)
            begin
                acheck_hiwait_delay_next = 1;
                doble_varname_scope_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:98:17;
            end
            doble_varname_scope_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:102:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_ff
    if (rst ) begin
        doble_varname_scope_PROC_STATE <= 0;    // test_cthread_varname.cpp:89:9;
    end
    else begin
        acheck_hiwait_delay <= acheck_hiwait_delay_next;
        doble_varname_scope_PROC_STATE <= doble_varname_scope_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope_reg (test_cthread_varname.cpp:107:5) 

// Thread-local variables
logic [1:0] bcheck_hiwait_delay;
logic [1:0] bcheck_hiwait_delay_next;
logic [2:0] bcheck_hiwait_delay0;
logic [2:0] bcheck_hiwait_delay_next0;
logic signed [31:0] m3;
logic [1:0] doble_varname_scope_reg_PROC_STATE;
logic [1:0] doble_varname_scope_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : doble_varname_scope_reg_comb     // test_cthread_varname.cpp:107:5
    doble_varname_scope_reg_func;
end
function void doble_varname_scope_reg_func;
    bcheck_hiwait_delay_next = bcheck_hiwait_delay;
    bcheck_hiwait_delay_next0 = bcheck_hiwait_delay0;
    doble_varname_scope_reg_PROC_STATE_next = doble_varname_scope_reg_PROC_STATE;
    
    case (doble_varname_scope_reg_PROC_STATE)
        0: begin
            bcheck_hiwait_delay_next = 1;
            doble_varname_scope_reg_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:113:13;
        end
        1: begin
            m3 = bcheck_hiwait_delay_next;
            if (a)
            begin
                bcheck_hiwait_delay_next0 = 1;
                doble_varname_scope_reg_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:119:17;
            end
            doble_varname_scope_reg_PROC_STATE_next = 3; return;    // test_cthread_varname.cpp:123:13;
        end
        2: begin
            m3 = bcheck_hiwait_delay_next0;
            doble_varname_scope_reg_PROC_STATE_next = 3; return;    // test_cthread_varname.cpp:123:13;
        end
        3: begin
            bcheck_hiwait_delay_next = 1;
            doble_varname_scope_reg_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:113:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_reg_ff
    if (rst ) begin
        doble_varname_scope_reg_PROC_STATE <= 0;    // test_cthread_varname.cpp:109:9;
    end
    else begin
        bcheck_hiwait_delay <= bcheck_hiwait_delay_next;
        bcheck_hiwait_delay0 <= bcheck_hiwait_delay_next0;
        doble_varname_scope_reg_PROC_STATE <= doble_varname_scope_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: doble_varname_scope_comb (test_cthread_varname.cpp:128:5) 

// Thread-local variables
logic signed [31:0] m4;

// Next-state combinational logic
always_comb begin : doble_varname_scope_comb_comb     // test_cthread_varname.cpp:128:5
    doble_varname_scope_comb_func;
end
function void doble_varname_scope_comb_func;
    logic [1:0] ccheck_hiwait_delay;
    logic [2:0] ccheck_hiwait_delay_1;
    ccheck_hiwait_delay = 1;
    m4 = ccheck_hiwait_delay;
    if (a)
    begin
        ccheck_hiwait_delay_1 = 1;
        m4 = ccheck_hiwait_delay_1;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : doble_varname_scope_comb_ff
    if (rst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: double_reg1 (test_cthread_varname.cpp:150:5) 

// Thread-local variables
logic s1_next;
logic varC;
logic varC_next;
logic [2:0] varA;
logic [2:0] varA_next;
logic signed [3:0] varB;
logic signed [3:0] varB_next;
logic [1:0] double_reg1_PROC_STATE;
logic [1:0] double_reg1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : double_reg1_comb     // test_cthread_varname.cpp:150:5
    double_reg1_func;
end
function void double_reg1_func;
    s1_next = s1;
    varA_next = varA;
    varB_next = varB;
    varC_next = varC;
    double_reg1_PROC_STATE_next = double_reg1_PROC_STATE;
    
    case (double_reg1_PROC_STATE)
        0: begin
            varB_next = 1;
            if (a)
            begin
                varC_next = b;
                double_reg1_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:161:17;
            end
            double_reg1_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:165:13;
        end
        1: begin
            s1_next = |(varC_next ? varA_next : varB_next);
            varB_next = 3;
            double_reg1_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:165:13;
        end
        2: begin
            varA_next = varB_next;
            double_reg1_PROC_STATE_next = 3; return;    // test_cthread_varname.cpp:168:13;
        end
        3: begin
            varB_next = 1;
            if (a)
            begin
                varC_next = b;
                double_reg1_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:161:17;
            end
            double_reg1_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:165:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : double_reg1_ff
    if (rst ) begin
        s1 <= 1;
        varA <= 0;
        double_reg1_PROC_STATE <= 0;    // test_cthread_varname.cpp:154:9;
    end
    else begin
        s1 <= s1_next;
        varC <= varC_next;
        varA <= varA_next;
        varB <= varB_next;
        double_reg1_PROC_STATE <= double_reg1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: double_reg2 (test_cthread_varname.cpp:173:5) 

// Thread-local variables
logic s2_next;
logic [2:0] varA0;
logic [2:0] varA_next0;
logic signed [31:0] varC0;
logic signed [31:0] varC_next0;
logic signed [3:0] varB0;
logic signed [3:0] varB_next0;
logic [1:0] double_reg2_PROC_STATE;
logic [1:0] double_reg2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : double_reg2_comb     // test_cthread_varname.cpp:173:5
    double_reg2_func;
end
function void double_reg2_func;
    s2_next = s2;
    varA_next0 = varA0;
    varB_next0 = varB0;
    varC_next0 = varC0;
    double_reg2_PROC_STATE_next = double_reg2_PROC_STATE;
    
    case (double_reg2_PROC_STATE)
        0: begin
            if (b)
            begin
                varB_next0 = a ? 1 : 2;
                double_reg2_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:182:17;
            end
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:187:13;
        end
        1: begin
            s2_next = |varB_next0;
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:187:13;
        end
        2: begin
            varA_next0++;
            s2_next = |varC_next0;
            if (b)
            begin
                varB_next0 = a ? 1 : 2;
                double_reg2_PROC_STATE_next = 1; return;    // test_cthread_varname.cpp:182:17;
            end
            varC_next0 = varA_next0 + 1;
            double_reg2_PROC_STATE_next = 2; return;    // test_cthread_varname.cpp:187:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : double_reg2_ff
    if (rst ) begin
        s2 <= 0;
        varA0 <= 1;
        double_reg2_PROC_STATE <= 0;    // test_cthread_varname.cpp:177:9;
    end
    else begin
        s2 <= s2_next;
        varA0 <= varA_next0;
        varC0 <= varC_next0;
        varB0 <= varB_next0;
        double_reg2_PROC_STATE <= double_reg2_PROC_STATE_next;
    end
end

endmodule

