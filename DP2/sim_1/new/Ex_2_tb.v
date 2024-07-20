`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 02:33:30 PM
// Design Name: 
// Module Name: Ex_2_tb
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


module Ex_2_tb;
    reg A, B;
    wire W, X, Y, Z;
    Ex_2 inst0(.a(A), .b(B), .w(W), .x(X), .y(Y), .z(Z));
    initial
    begin 
        #0 A = 0; B = 0;
        #100 A = 0; B = 1;
        #100 A = 1; B = 0;
        #100 A = 1; B = 1;
    end
endmodule
