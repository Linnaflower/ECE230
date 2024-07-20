`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 10:24:09 PM
// Design Name: 
// Module Name: counter
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


`timescale 1ns / 1ps
//ECE230 DP3 Ex2 Provided Counter Code
//ver: Nov11,2023, by DRAM

module counter
#( parameter integer width = 16 )    //parameter 'width' defines how many bits the counter contains
(
    input clk, cnt, load, rst,
    input [width-1:0] start,
    output reg [width-1:0] cout,
    output reg wrap
    );
    always @ (negedge clk) begin
    //nested if-else block to set counter mode
        if (!rst) cout = 0;                 //reset mode
            else if (cout) cout = cout -1;  //new postition
            else if (!cnt) cout = cout;     //new position
            else if (load) cout = start;    //load mode
            //else if (!cnt) cout = cout;   //hold mode
//            else if (cout) cout = cout -1;  //count mode, count down
            else cout = start;          //count mode, wrap to start
    //if-else block to toggle wrap when cout=0                    
        if (!cout) wrap = 1;
            else wrap = 0;
    end       
endmodule

