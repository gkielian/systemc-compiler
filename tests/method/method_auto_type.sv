//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.18
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
);

// Variables generated for SystemC signals
logic bsig;
logic signed [31:0] isig;
logic [31:0] usig;
logic signed [7:0] scisig;
logic [7:0] scusig;
logic signed [65:0] int_sig;
logic [65:0] uint_sig;

//------------------------------------------------------------------------------
// Method process: cpp_types_to_auto (test_auto_type.cpp:32:5) 

always_comb 
begin : cpp_types_to_auto     // test_auto_type.cpp:32:5
    logic signed [15:0] a;
    logic [15:0] c;
    logic b1;
    integer b2;
    integer b3;
    integer b4;
    logic signed [63:0] b5;
    logic signed [6:0] b6;
    integer unsigned b7;
    integer unsigned b8;
    logic [63:0] b9;
    logic [6:0] b10;
    a = 0;
    c = 0;
    b1 = bsig;
    b2 = bsig ^ 1;
    b3 = isig;
    b4 = isig * 3;
    b5 = isig - a;
    b6 = 7'(isig);
    b7 = usig;
    b8 = usig + 2;
    b9 = usig + c;
    b10 = 7'(usig);
end

//------------------------------------------------------------------------------
// Method process: sc_types_to_auto (test_auto_type.cpp:49:5) 

always_comb 
begin : sc_types_to_auto     // test_auto_type.cpp:49:5
    logic signed [7:0] b1;
    logic signed [15:0] b2;
    logic [15:0] b3;
    logic [7:0] b4;
    logic signed [15:0] b5;
    logic [15:0] b6;
    b1 = scisig;
    b2 = 16'(scisig);
    b3 = 16'(scisig);
    b4 = scusig;
    b5 = 16'(scusig);
    b6 = 16'(scusig);
end

//------------------------------------------------------------------------------
// Method process: sc_signed_to_auto (test_auto_type.cpp:60:5) 

always_comb 
begin : sc_signed_to_auto     // test_auto_type.cpp:60:5
    logic signed [65:0] a;
    logic signed [65:0] b1;
    logic signed [66:0] b2;
    logic signed [65:0] b3;
    logic signed [66:0] b4;
    logic signed [66:0] b5;
    logic [66:0] b6;
    a = 0;
    b1 = int_sig;
    b2 = int_sig + 1;
    b3 = a;
    b4 = a + 1;
    b5 = 67'(a + 1);
    b6 = 67'(a + 1);
end

//------------------------------------------------------------------------------
// Method process: sc_unsigned_to_auto (test_auto_type.cpp:71:5) 

always_comb 
begin : sc_unsigned_to_auto     // test_auto_type.cpp:71:5
    logic [65:0] a;
    logic [65:0] b1;
    logic signed [66:0] b2;
    logic [66:0] b2a;
    logic [65:0] b3;
    logic [65:0] b4;
    logic [66:0] b5;
    logic signed [66:0] b6;
    a = 0;
    b1 = uint_sig;
    b2 = signed'({1'b0, uint_sig}) + 1;
    b2a = uint_sig + 1;
    b3 = a;
    b4 = a >>> 2;
    b5 = 67'(a >>> 2);
    b6 = 67'(a >>> 2);
end

endmodule


