//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.12
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test_enum ()
//
module test_enum // "tenum"
(
);

// SystemC signals

// C++ data variables
localparam logic [7:0] nm = 'd3;
localparam logic [31:0] mode_const = 'd1;
localparam logic [31:0] color_const = 'd2;

//------------------------------------------------------------------------------
// Method process: test_method (test_enum.cpp:28:5) 

// Process-local variables
logic [31:0] color;

always_comb 
begin : test_method     // test_enum.cpp:28:5
    logic [1:0] xcolor;
    logic xmode;
    integer icolor;
    logic [1:0] dir;
    integer x;
    color = 1;
    xcolor = color_const;
    xmode = mode_const;
    icolor = 3;
    xcolor = 3;
    dir = 1;
    x = 0;
    if (1)
    begin
        x = 1;
    end
end

endmodule

