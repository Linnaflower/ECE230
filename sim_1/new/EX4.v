`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 10:43:49 AM
// Design Name: 
// Module Name: EX4
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


module EX4(
    input a,
    input b,
    input c,
    input x
    );
    assign x = ((~a & ~b & ~c)|(~a & ~b & c)|(a & ~b & ~c))|((a & ~b & c)|(a & b & ~c)|(a & b & c));
endmodule
