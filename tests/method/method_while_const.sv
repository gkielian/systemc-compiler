//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.18
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

// Variables generated for SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_while_const.cpp:289:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1 (test_while_const.cpp:52:5) 

always_comb 
begin : while_with_binary_oper1     // test_while_const.cpp:52:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = |s;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = |s;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1a (test_while_const.cpp:66:5) 

always_comb 
begin : while_with_binary_oper1a     // test_while_const.cpp:66:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = |s;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = |s;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1b (test_while_const.cpp:80:5) 

always_comb 
begin : while_with_binary_oper1b     // test_while_const.cpp:80:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1c (test_while_const.cpp:92:5) 

always_comb 
begin : while_with_binary_oper1c     // test_while_const.cpp:92:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 1;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1d (test_while_const.cpp:106:5) 

always_comb 
begin : while_with_binary_oper1d     // test_while_const.cpp:106:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 1;
    b3 = 0;
    k_1 = 0;
    while (b1 || b2 || b3)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1e (test_while_const.cpp:121:5) 

always_comb 
begin : while_with_binary_oper1e     // test_while_const.cpp:121:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 0;
    b3 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1f (test_while_const.cpp:133:5) 

always_comb 
begin : while_with_binary_oper1f     // test_while_const.cpp:133:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 0;
    b3 = 1;
    k_1 = 0;
    while (1)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1g (test_while_const.cpp:144:5) 

always_comb 
begin : while_with_binary_oper1g     // test_while_const.cpp:144:5
    logic b1;
    integer k_1;
    b1 = |s;
    k_1 = 0;
    while (b1 || 0)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2 (test_while_const.cpp:157:5) 

always_comb 
begin : while_with_binary_oper2     // test_while_const.cpp:157:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = |s;
    k_1 = 0;
    while (b1 && b2)
    begin
        k_1 = 1;
        b1 = |s;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2a (test_while_const.cpp:169:5) 

always_comb 
begin : while_with_binary_oper2a     // test_while_const.cpp:169:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = |s;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2b (test_while_const.cpp:181:5) 

always_comb 
begin : while_with_binary_oper2b     // test_while_const.cpp:181:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2c (test_while_const.cpp:193:5) 

always_comb 
begin : while_with_binary_oper2c     // test_while_const.cpp:193:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 1;
    k_1 = 0;
    while (b1 && b2)
    begin
        k_1 = 1;
        b1 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2d (test_while_const.cpp:205:5) 

always_comb 
begin : while_with_binary_oper2d     // test_while_const.cpp:205:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 0;
    b3 = 1;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2e (test_while_const.cpp:216:5) 

always_comb 
begin : while_with_binary_oper2e     // test_while_const.cpp:216:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (b1 && b2 && b3)
    begin
        k_1 = 1;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2f (test_while_const.cpp:228:5) 

always_comb 
begin : while_with_binary_oper2f     // test_while_const.cpp:228:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (1)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2g (test_while_const.cpp:239:5) 

always_comb 
begin : while_with_binary_oper2g     // test_while_const.cpp:239:5
    logic b1;
    integer k_1;
    b1 = |s;
    k_1 = 0;
    while (b1 && 1)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper3 (test_while_const.cpp:252:5) 

always_comb 
begin : while_with_binary_oper3     // test_while_const.cpp:252:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (b1 && 1)
    begin
        k_1 = 1;
        b1 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper4 (test_while_const.cpp:265:5) 

always_comb 
begin : while_with_binary_oper4     // test_while_const.cpp:265:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while ((b1 && b2) || b3)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end
    k_1 = 2;
end

endmodule


