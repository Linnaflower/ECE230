`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 01:57:51 PM
// Design Name: 
// Module Name: beh_mux_tb
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


module beh_mux_tb;
    reg [3:0] IN;
    reg [1:0] S;
    wire Y;
    //instantiate test module
    beh_mux i1 (IN, S, Y);
    //define input signals to test
    initial begin IN=0; S=0; end
    always #5 IN[0]=~IN[0];
    always #10 IN[1]=~IN[1];
    always #20 IN[2]=~IN[2];
    always #40 IN[3]=~IN[3];
    always #160 S[0]=~S[0];
    always #320 S[1]=~S[1];
    //end simulation after all 4 values of s have been tested
    initial #640 $finish;
endmodule
