`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 11:29:15 PM
// Design Name: 
// Module Name: mux_41_tb
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


module mux_41_tb;
    reg A, B, C, D, S00, S01, S1; 
    wire Y;
    mux_41 i1 (.a(A), .b(B), .c(C), .d(D), .s00(S00), .s01(S01), .s1(S1), .y(Y));
    initial begin A=0; B=0; C =0; D=0; S00=0; S01= 0; S1=0; end
    always #10 B=~B;
    always #40 A=~A;
    always #70 C=~C;
    always #100 D=~D;
    always #200 S00=~S00;
    always #250 S01=~S01;
    always #300 S1=~S1;
    initial #1000 $finish;
endmodule
