`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2024 12:42:08 PM
// Design Name: 
// Module Name: DP1
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


module DP1(
    input a,
    input b,
    input c,
    input x,
    input y,
    input z
    );
    assign x = (~a)&c;
    assign y = ~c&~b|~c&~a;
    assign z = ~b&c|a&c|a&~b;
endmodule
