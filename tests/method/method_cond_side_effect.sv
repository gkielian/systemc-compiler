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
// Module: A (test_cond_side_effect.cpp:154:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic signed [31:0] k = 0;

//------------------------------------------------------------------------------
// Method process: if_side_effect1 (test_cond_side_effect.cpp:48:5) 

always_comb 
begin : if_side_effect1     // test_cond_side_effect.cpp:48:5
    integer i;
    logic TMP_0;
    i = 0;
    // Call f() begin
    TMP_0 = |k;
    // Call f() end
    if (a && TMP_0)
    begin
        i = 1;
    end
    i = 2;
end

//------------------------------------------------------------------------------
// Method process: if_side_effect2 (test_cond_side_effect.cpp:57:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : if_side_effect2     // test_cond_side_effect.cpp:57:5
    integer i;
    i = 0;
    if (a && |(m++))
    begin
        i = m;
    end
    i = 2;
end

//------------------------------------------------------------------------------
// Method process: binary_side_effect (test_cond_side_effect.cpp:65:5) 

always_comb 
begin : binary_side_effect     // test_cond_side_effect.cpp:65:5
    integer i;
    logic b_1;
    i = 0;
    b_1 = a || |(i++);
    b_1 = a && |(i++);
    b_1 = 1;
    b_1 = 0 || |(i++);
    b_1 = 1 && |(i++);
    b_1 = 0;
end

//------------------------------------------------------------------------------
// Method process: binary_side_effect2 (test_cond_side_effect.cpp:86:5) 

always_comb 
begin : binary_side_effect2     // test_cond_side_effect.cpp:86:5
    integer i;
    logic b_1;
    i = 0;
    b_1 = |(i++) || a;
    b_1 = |(i++) && a;
    b_1 = 1;
    b_1 = 0;
    b_1 = a || |(i++) && 0;
end

//------------------------------------------------------------------------------
// Method process: cond_side_effect (test_cond_side_effect.cpp:105:5) 

always_comb 
begin : cond_side_effect     // test_cond_side_effect.cpp:105:5
    integer i;
    logic res;
    integer j;
    i = 3;
    res = b;
    j = 1;
    res = c;
end

//------------------------------------------------------------------------------
// Method process: cond_fcall (test_cond_side_effect.cpp:124:5) 

always_comb 
begin : cond_fcall     // test_cond_side_effect.cpp:124:5
    integer i;
    integer res;
    i = 3;
    res = 2;
    res = a ? 0 : 1;
    res = 1;
    res = 1 + 1;
    res = 4;    // Call of h()
end

//------------------------------------------------------------------------------
// Method process: binary_unary_fcall (test_cond_side_effect.cpp:135:5) 

always_comb 
begin : binary_unary_fcall     // test_cond_side_effect.cpp:135:5
    integer res;
    res = 2 + 3;
    res = -2'sd1;
    res = 2;
    res = 32'd2;
    res = a ? 2 : 3;
    res = 4'd3;
end

endmodule


