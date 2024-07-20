`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2024 01:15:52 PM
// Design Name: 
// Module Name: DP1_tb
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


module DP1_tb;
    reg A, B, C;
    wire X, Y, Z;
    DP1 inst0(.a(A), .b(B), .c(C), .x(X), .y(Y), .z(Z));
    initial
    begin
    #0 A=0; B=0; C=0;
    #100 A=0; B=0; C=1;
    #100 A=0; B=1; C=0;
    #100 A=0; B=1; C=1;
    #100 A=1; B=0; C=0;
    #100 A=1; B=0; C=1;
    #100 A=1; B=1; C=0;
    #100 A=1; B=1; C=1; 
    end
endmodule
