`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:22:00 PM
// Design Name: 
// Module Name: top_lab9
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


module top_lab9(
    input btnU,
    input btnD,
    input btnC,
    input [11:0] sw,
    input clk,
    output [15:0] led
    );
    
    wire [7:0] my_register1_out;
    wire [7:0] my_alu_out;
    wire [7:0] my_register2_out;
    
    register #(.N(8)) my_register1(
        .D(sw[7:0]),
        .clk(clk),
        .en(btnD),
        .rst(btnC),
        .Q(my_register1_out)
    );
    
    alu #(.N(8)) my_alu (
        .in0(sw[7:0]),
        .in1(my_register1_out),
        .op(sw[11:8]),
        .out(my_alu_out)
    );
    
    register #(.N(8)) my_register2(
        .D(my_alu_out),
        .clk(clk),
        .en(btnU),
        .rst(btnC),
        .Q(my_register2_out)
    );
    
    assign led = {my_register2_out, my_register1_out};
endmodule
