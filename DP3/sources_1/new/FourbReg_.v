`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 08:37:07 PM
// Design Name: 
// Module Name: FourbReg_
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


module FourbReg_(d, clk, rst, ld, q);
    input [3:0] d;
    input clk, rst, ld;
    output reg [3:0] q;
    always @ (posedge clk, posedge rst) begin
        if (rst)
            q = 4'b0;
        else if (ld)
            q = d;
    end
endmodule
