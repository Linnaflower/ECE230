`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 04:07:50 PM
// Design Name: 
// Module Name: combo2
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


module combo2(
    input a,
    input b,
    input c,
    output sum,
    output co,
    output mo
    );
    assign sum = a ^ b ^ c;
    assign co  = (a & b) | ( c & (a^b));
    assign mo = b & (~c) | (a & c);
endmodule
