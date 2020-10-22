`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 11:53:22 AM
// Design Name: 
// Module Name: alu_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_test();
    
    reg [3:0] out_t;
    reg [3:0] in0_t;
    reg [3:0] in1_t;
    reg [3:0] op_t;
    
    alu #(.N(4)) dut (
        .out(out_t),
        .in0(in0_t),
        .in1(in1_t),
        .op(op_t)
    );
    
    initial begin
        in0_t = 4'h7; in1_t = 4'h1; op_t = 0; #10;
        in0_t = 4'h7; in1_t = 4'h1; op_t = 1; #10;
        in0_t = 4'h7; in1_t = 4'h1; op_t = 2; #10;
        in0_t = 4'h7; in1_t = 4'h1; op_t = 3; #10;
        in0_t = 4'h7; in1_t = 4'h1; op_t = 4; #10;
        in0_t = 4'h7; in1_t = 4'h1; op_t = 5; #10;
        $finish;
    end 
endmodule
