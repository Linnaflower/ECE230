`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 03:54:16 PM
// Design Name: 
// Module Name: mux_21
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

module gand (input x, y, output z);
    assign z = x & y ;
endmodule

module gor (input x, y, output z);
    assign z = x | y;
endmodule

module ginv (input x, output y);
    assign y=~x;
endmodule

module mux_21(a,b,s,y);
    input a,b,s;
    output y;
    wire invZ, and1Z, and2Z;
    ginv i1 (s, invZ);
    gand a1 (invZ, a, and1Z); //top AND in schematic
    gand a2 (b, s, and2Z); //bottom AND in schematic
    gor o1 (and1Z, and2Z, y); // signals j,k,l are placeholders you must complete
endmodule
