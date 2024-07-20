`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 04:11:37 PM
// Design Name: 
// Module Name: combo2_tb
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


module combo2_tb; 
    reg A, B, C;
    wire SUM, CO, MO;
    combo2 inst0 (.a(A), .b(B), .c(C), .sum(SUM), .co(CO), .mo(MO));
    initial begin A=0; B=0; C=0; end
        always #50 B=~B;
        always #100 A=~A;
        always #200 C=~C;
        initial #400 $finish;
endmodule
