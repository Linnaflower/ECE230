`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 10:55:59 AM
// Design Name: 
// Module Name: EX4_tb
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


module EX4_tb;
    reg A, B, C;
    wire X;
    EX4 inst0(.a(A), .b(B), .c(C), .x(X));
    initial begin C = 0; B = 0; A = 0; end
    always begin
    #10 C=~C;
    end
    always begin
    #20 B=~B;
    end
    always begin
    #40 A=~A;
    end
endmodule
