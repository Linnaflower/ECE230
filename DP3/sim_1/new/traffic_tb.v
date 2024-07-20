`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 07:40:14 PM
// Design Name: 
// Module Name: traffic_tb
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


module traffic_tb;
    reg POW, STR, CLK;
    wire G, Y, R;
    wire [1:0] C_STATE;
    
    traffic i0(.pow(POW), .str(STR), .clk(CLK), .g(G), .y(Y), .r(R), .c_state(C_STATE));
    
    initial begin POW=0; STR=0; CLK=0; end
        always # 10 CLK = ~CLK;
    initial begin
        #30 POW = 1; //turn on
        #60 STR = 1; //begin next light cycle
        #20 STR = 0; //reset start signal
        #60 STR = 1; //check another light cycle
        #20 STR = 0; //reset start signal
        #20 POW = 0; //test power down
        #30 POW = 1; //test start after power down
        #50 POW = 0; //test power down from different state
        #30 POW = 1;
        end
    initial #300 $finish;
endmodule
