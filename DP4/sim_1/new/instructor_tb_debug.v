`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/18/2024 10:08:32 AM
// Design Name:
// Module Name: instructor_tb_debug
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


module instructor_tb_debug;

    reg CLK; //clock
    reg [1:0] ONOFF; // on/off
    reg [7:0] LCN_0; //starting location
    reg [3:0] MTN_SENSOR; //maintenance sensor
    reg [3:0] CMPS; //compass
    reg [3:0] WLL; //wall locations
    
    wire [1:0] TURN;
    wire [3:0] FACINGDIR;
    wire DRIVING;
    wire [7:0] LOCATION;
    wire [2:0] ACTION;
    wire [4:0] STATE;
    
    // Clock generation
    initial begin
        CLK = 0;
        forever #2 CLK = ~CLK;
    end
    
    pipeFSM inst0(.clk(CLK),.onoff(ONOFF),.strt_lcn(LCN_0),.mtn_sensor(MTN_SENSOR),.cmps(CMPS),.wll(WLL),.turn(TURN),.facing_dir(FACINGDIR),.driving(DRIVING),.location(LOCATION),.action(ACTION),.c_state(STATE));

    initial begin
    ONOFF=2'b01; LCN_0=8'b00100000; MTN_SENSOR=4'b0000; CMPS=4'b0000; WLL=3'b000;
    #10 ONOFF=2'b00; LCN_0=8'b00000000; MTN_SENSOR=4'b0000; CMPS=4'b0000; WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b101;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b1000; CMPS=4'b0100; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b0100; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b1000; CMPS=4'b0100; WLL=3'b011;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0010; CMPS=4'b1000; WLL=3'b011;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0010; CMPS=4'b0001; WLL=3'b101;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0100; CMPS=4'b1000; WLL=3'b011;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0010; CMPS=4'b0001; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b0001; WLL=3'b110;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b1000; CMPS=4'b0001; WLL=3'b101;
    #10 WLL=3'b000;
    #40 MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b110;
    #10 WLL=3'b000;
    #40 ONOFF=2'b10; MTN_SENSOR=4'b0001; CMPS=4'b1000; WLL=3'b110;
    #10 ONOFF=2'b00; WLL=3'b000;
    #40 $finish;
    end


endmodule
