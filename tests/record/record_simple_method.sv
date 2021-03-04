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


//------------------------------------------------------------------------------

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_simple_method.cpp:299:5)
//
module A // "b_mod.a_mod"
(
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: record_concat1 (test_simple_method.cpp:62:5) 

// Process-local variables
logic [1:0] scRec_a;
logic [2:0] scRec_b;

always_comb 
begin : record_concat1     // test_simple_method.cpp:62:5
    logic [4:0] c;
    c = {scRec_a, scRec_b};
end

//------------------------------------------------------------------------------
// Method process: record_concat2 (test_simple_method.cpp:67:5) 

always_comb 
begin : record_concat2     // test_simple_method.cpp:67:5
    logic [1:0] scRecLoc_a;
    logic [2:0] scRecLoc_b;
    logic [4:0] c;
    scRecLoc_a = 0;
    scRecLoc_b = 0;
    c = {scRecLoc_a, scRecLoc_b};
end

//------------------------------------------------------------------------------
// Method process: record_local_var1 (test_simple_method.cpp:110:5) 

always_comb 
begin : record_local_var1     // test_simple_method.cpp:110:5
    integer r_x;
    logic signed [1:0] r_y;
    r_y = 1;
    // Call Rec1() begin
    r_x = 1;
    // Call Rec1() end
    r_x = r_y + 2;
end

//------------------------------------------------------------------------------
// Method process: record_local_var2 (test_simple_method.cpp:137:5) 

always_comb 
begin : record_local_var2     // test_simple_method.cpp:137:5
    integer x_;
    integer y_;
    integer c_x;
    logic signed [1:0] c_y;
    logic [7:0] c_z;
    integer c_t;
    integer c_tt;
    integer c_s;
    integer TMP_0;
    integer i;
    integer a;
    x_ = 2; y_ = 3;
    c_x = x_;
    c_y = 0;
    c_z = 3;
    c_t = 4;
    c_tt = 5;
    // Call Rec2() begin
    c_y = y_ - 1;
    // Call Rec2() end
    c_x = 4;
    i = 1;
    // Call f() begin
    TMP_0 = i + 1;
    // Call f() end
    a = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict1 (test_simple_method.cpp:179:5) 

always_comb 
begin : record_loop_conflict1     // test_simple_method.cpp:179:5
    integer r_x[3][3];
    integer TMP_0;
    integer r_res;
    integer a;
    integer TMP_1;
    integer i_2_1;
    // Call loop() begin
    r_res = 0;
    for (integer i = 0; i < 3; i++)
    begin
        r_res = r_res + r_x[0][i];
    end
    TMP_0 = r_res;
    // Call loop() end
    // Call ff1() begin
    for (integer i = 0; i < 3; i++)
    begin
        a = i;
    end
    // Call ff1() end
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        r_res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            r_res = r_res + r_x[i][i_2];
        end
        TMP_1 = r_res;
        // Call loop() end
        i_2_1 = TMP_1;
    end
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict2 (test_simple_method.cpp:192:5) 

// Process-local variables
logic signed [31:0] i_1;
logic signed [31:0] rr_x[3][3];

always_comb 
begin : record_loop_conflict2     // test_simple_method.cpp:192:5
    integer i;
    integer TMP_0;
    integer res;
    integer a;
    integer TMP_2;
    integer i_3_1;
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rr_x[i][i_2];
        end
        TMP_0 = res;
        // Call loop() end
        a = TMP_0;
    end
    i_1 = 0;
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_3 = 0; i_3 < 3; i_3++)
        begin
            res = res + rr_x[i][i_3];
        end
        TMP_2 = res;
        // Call loop() end
        i_1 = i_1 + TMP_2;
    end
    i_3_1 = i_1;
end

//------------------------------------------------------------------------------
// Method process: record_loop_conflict3 (test_simple_method.cpp:207:5) 

// Process-local variables
logic signed [31:0] rrr_x[3][3];

always_comb 
begin : record_loop_conflict3     // test_simple_method.cpp:207:5
    integer TMP_0;
    integer res;
    integer i_2_1;
    integer TMP_2;
    integer a;
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_2 = 0; i_2 < 3; i_2++)
        begin
            res = res + rrr_x[i][i_2];
        end
        TMP_0 = res;
        // Call loop() end
        i_2_1 = TMP_0;
    end
    // Call ff2() begin
    for (integer i = 0; i < 3; i++)
    begin
        // Call loop() begin
        res = 0;
        for (integer i_3 = 0; i_3 < 3; i_3++)
        begin
            res = res + rrr_x[i][i_3];
        end
        TMP_2 = res;
        // Call loop() end
        a = TMP_2;
    end
    // Call ff2() end
end

endmodule

