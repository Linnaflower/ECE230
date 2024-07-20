`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2024 01:57:06 PM
// Design Name: 
// Module Name: beh_mux
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


module beh_mux(
    input [3:0] in,
    input [1:0] s,
    output reg y
    );
    always @ (in or s)
    case (s)
        0: y = in[0];
        1: y = in[1];
        2: y = in[2];
        3: y = in[3];
    endcase
endmodule
