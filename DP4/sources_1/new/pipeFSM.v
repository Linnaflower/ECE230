`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2024 04:52:17 PM
// Design Name: 
// Module Name: pipeFSM
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


module pipeFSM(clk, c_state, onoff, strt_lcn, mtn_sensor, cmps, wll, turn, driving, location, action, facing_dir);
    input clk;
    input [1:0] onoff;
    input [7:0] strt_lcn;
    input [3:0] mtn_sensor;
    input [3:0] cmps;
    input [3:0] wll;
    
    output reg [1:0] turn;
    output reg [3:0] facing_dir;
    output reg driving;
    output reg [7:0] location;
    output reg [2:0] action;
    output reg [4:0] c_state;
    
    parameter off = 0;
    parameter idle = 1;
    parameter turn_left = 2;
    parameter turn_right = 3;
    parameter comp_lshift = 4;
    parameter comp_pass = 5;
    parameter comp_rshift = 6;
    parameter move = 7;
    parameter hot0 = 8;
    parameter hot1 = 9;
    parameter hot2 = 10;
    parameter plg0 = 11;
    parameter plg1 = 12;
    parameter plg2 = 13;
    parameter plg3 = 14;
    parameter fzn0 = 15;
    parameter fzn1 = 16;
    parameter fzn2 = 17;
    parameter fzn3 = 18;
    parameter fzn4 = 19;
    
    initial begin c_state = off; end
    
    always @ (posedge clk) begin
    //determine the next state
        case (c_state)
            off: 
                begin
                if (onoff == 2'b01 && strt_lcn != 0) c_state = idle; 
                else c_state = c_state;
                end
            idle:
                begin
                if (onoff == 2'b10) c_state = off;
                if (wll == 3'b011) c_state = turn_left;
                else if (wll == 3'b110) c_state = comp_pass;
                else if (wll == 3'b101) c_state = turn_right;
                else if (wll == 3'b000) c_state = c_state;
                end
            turn_left: 
                c_state = comp_lshift;
            turn_right:
                c_state = comp_rshift;
            comp_pass:
                c_state = move;
            comp_lshift:
                c_state = move;
            comp_rshift:
                c_state = move;
            move:
                begin
                if (mtn_sensor == 4'b1000) c_state = fzn0;
                else if (mtn_sensor == 4'b0010) c_state = plg0;
                else if (mtn_sensor == 4'b0100) c_state = hot0;
                else if (mtn_sensor == 4'b0001) c_state = idle;
                end                            
            hot0:
                c_state = hot1;                                           
            hot1:
                c_state = hot2;          
            hot2:
                c_state = idle;
            plg0:
                c_state = plg1; 
            plg1:
                c_state = plg2;             
            plg2:
                c_state = plg3;  
            plg3:
                c_state = fzn4;
            fzn0:
                c_state = fzn1;                                    
            fzn1:
                c_state = fzn2;      
            fzn2:
                c_state = fzn3;      
            fzn3:
                c_state = fzn4;      
            fzn4:
                c_state = idle;      
        endcase
    end
    
    always @ (c_state) begin
    //determine outputs
        case(c_state)
            idle: 
                begin
                if (onoff == 2'b01) location = strt_lcn;
                action = 3'b000;
                driving = 1'b0;
                end
            turn_left:
                turn = 2'b10;            
            turn_right:
                turn = 2'b01;
            comp_pass:
                begin
                turn = 2'b00;
                facing_dir = cmps; 
                end             
            comp_lshift:
                begin
                turn = 2'b00;
                facing_dir = (cmps << 1) + cmps[3];
                end        
            comp_rshift:
                begin
                turn = 2'b00;
                facing_dir = (cmps >> 1) + (cmps[0] << 3);            
                end
            move:
                begin
                driving = 1'b1;
                if (facing_dir == 4'b1000) location = location + 1; //north
                else if (facing_dir == 4'b0010) location = location - 1; //south
                else if (facing_dir == 4'b0100) location = location + 16; //east
                else if (facing_dir == 4'b0001) location = location - 16; //west
                end
            hot0:
                begin
                action = 3'b010;
                driving = 1'b0;
                end
            hot1:
                action = 3'b010;
            hot2:
                action = 3'b010;
            plg0:
                begin
                action = 3'b001;
                driving = 1'b0;
                end                
            plg1:
                action = 3'b000;
            plg2:
                action = 3'b001;
            plg3:
                action = 3'b000;
            fzn0:
                begin 
                action = 3'b100;
                driving = 1'b0;
                end
            fzn1:
                action = 3'b100;                       
            fzn2:
                action = 3'b000;
            fzn3:
                action = 3'b100;                                
            fzn4:
                action = 3'b100;                
        endcase
    end
endmodule
