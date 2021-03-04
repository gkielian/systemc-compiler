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
logic c;
logic signed [31:0] d;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c),
  .d(d)
);

endmodule



//==============================================================================
//
// Module: A (test_empty_sensvty.cpp:101:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c,
    output logic signed [31:0] d
);

// SystemC signals
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;
logic signed [31:0] s4;
logic [3:0] s5;
logic signed [31:0] s6;
logic signed [31:0] s7;
logic [3:0] s8;

// C++ data variables
localparam logic [31:0] CONST_A = 'd1;
localparam logic [31:0] CONST_Z = 'd0;

//------------------------------------------------------------------------------
// Method process: empty_decl (test_empty_sensvty.cpp:42:5) 

integer i;
logic [3:0] j;
assign i = 0;
assign j = 1;
assign s5 = j - 1;
assign s6 = i + 1;

//------------------------------------------------------------------------------
// Method process: empty_cond (test_empty_sensvty.cpp:50:5) 

logic [3:0] i_1;
logic [3:0] j_1;
assign i_1 = 1;
assign j_1 = 2;
assign s7 = 1;
assign s8 = i_1;

//------------------------------------------------------------------------------
// Method process: empty_if1 (test_empty_sensvty.cpp:58:5) 

logic signed [7:0] i_2;
assign s1 = 1;
assign c = 0;
assign s2 = 3;
assign i_2 = 1;

//------------------------------------------------------------------------------
// Method process: empty_if2 (test_empty_sensvty.cpp:75:5) 

assign b = 1;
assign d = 2;
assign s3 = 1;
assign s4 = 2;

endmodule

