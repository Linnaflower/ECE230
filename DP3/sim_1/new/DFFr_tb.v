`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 12:26:35 PM
// Design Name: 
// Module Name: DFFr_tb
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


module DFFr_tb;
reg D, CLK, RST;
wire Q, QBAR;

DFFr i0 (.d(D), .clk(CLK), .rst(RST), .q(Q), .qbar(QBAR));
    initial begin CLK= 0; D= 0; RST= 0; end
    always #10 CLK= ~CLK;
    always #20 D= ~D;
    always #40 RST = ~RST;
endmodule
