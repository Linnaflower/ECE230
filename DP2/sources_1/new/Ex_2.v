`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 02:29:49 PM
// Design Name: 
// Module Name: Ex_2
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


module Ex_2(
    input a,
    input b,
    output w,
    output x,
    output y,
    output z
    );
    assign w = ~(a & b);
    assign x = ~(a | b);
    assign y = a ^ b;
    assign z = ~(a ^ b);
endmodule
