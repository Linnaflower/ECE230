`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 11:28:38 PM
// Design Name: 
// Module Name: mux_41
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


module mux_41(a, b, c, d, s00, s01, s1, y);
    input a,b, c, d, s00, s01, s1;
    output y;
    wire m1z, m2z;
    mux_21 i1 (a,b, s00, m1z);
    mux_21 i2 (c,d,s01, m2z);
    mux_21 i3 (m1z, m2z, s1, y);
endmodule
