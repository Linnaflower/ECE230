`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 12:09:56 PM
// Design Name: 
// Module Name: DFFr
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


module DFFr(d, clk, rst, q, qbar);
    input d,clk ,rst;
    output reg q, qbar;
    always @ (posedge clk, posedge rst) begin
        // if rst == 1 then set eqal to zero
        // else store d in q and not d in qbar
        if (rst) begin
        q = 0;
        qbar = 1;
        end else begin
        q = d;
        qbar = ~d;
        end
    end
endmodule
