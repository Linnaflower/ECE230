`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 08:37:37 PM
// Design Name: 
// Module Name: FourbReg_tb
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


module FourbReg_tb;
    reg CLK, RST, LD;
    reg [3:0] D;
    wire [3:0]Q;
    
    FourbReg_ i1(.d(D), .clk(CLK), .rst(RST), .ld(LD), .q(Q));
    initial begin D=0; CLK=0; RST=0; LD=0; end
        always #10 CLK= ~CLK;
        always #40 RST = ~RST;
        always #80 LD= ~LD;
    initial begin #20 D= 4'b1111;
                  #60 D= 4'b0010; end
endmodule
