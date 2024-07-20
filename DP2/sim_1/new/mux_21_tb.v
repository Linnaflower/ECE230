`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 06:56:31 PM
// Design Name: 
// Module Name: mux_21_tb
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


module mux_21_tb;
    reg A, B, S;
    wire Y;
    //instantiate test module
    mux_21 i1 (A, B, S, Y);
    //define input signals to test
    initial begin A=0; B=0; S=0; end
    always #10 B=~B;
    always #40 A=~A;
    always #200 S=~S;
    initial #800 $finish;
endmodule
