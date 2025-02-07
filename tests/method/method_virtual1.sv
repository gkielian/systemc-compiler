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


//------------------------------------------------------------------------------
// Child module instances

C c_mod
(

);

endmodule



//==============================================================================
//
// Module: C (test_virtual1.cpp:75:5)
//
module C // "b_mod.c_mod"
(
);

// Variables generated for SystemC signals

//------------------------------------------------------------------------------
// Method process: virt_call (test_virtual1.cpp:38:5) 

// Process-local variables
logic signed [31:0] m0;

always_comb 
begin : virt_call     // test_virtual1.cpp:38:5
    logic [2:0] u;
    integer TMP_0;
    logic [2:0] val;
    integer i;
    u = 3;
    val = u + 1;
    // Call d() begin
    m0++;
    TMP_0 = val - 1;
    // Call d() end
    // Call f() begin
    m0--;
    // Call f() end
    i = 5;
    // Call f() begin
    m0 = m0 - i;
    // Call f() end
end

endmodule


