`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2024 07:39:42 PM
// Design Name: 
// Module Name: traffic
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


module traffic (pow, str, clk, g, y, r, c_state);
    input pow, str, clk;
    output reg g, y, r;
    output reg [1:0] c_state; //current state
    //reg [1:0] n_state; //next state
    
    //step 2: define state identifiers
    parameter off = 2'b00;
    parameter go = 2'b01;
    parameter slow = 2'b10;
    parameter stop = 2'b11;
    
    //step 3: create the always block
    always @ (posedge clk, negedge pow, posedge str) begin
    // if pow = 0, state is off. Else proceed to state  
        if (!pow)
            begin
            g = 0;
            y = 0;
            r = 0;
            c_state = off;
            end
        else 
            case (c_state)
                off:
                    begin
                    g = 1; y = 0; r = 0;
                    c_state = slow;
                    end
                go:
                    begin
                    g = 1; y = 0; r = 0;
                    c_state = slow;
                    end
                slow:
                    begin
                    g = 0; y = 1; r = 0;
                    c_state = stop;
                    end
                stop:
                    if (str)
                    begin
                        c_state = go;                        
                    end
                    else 
                    begin 
                        g = 0; y = 0; r = 1;
                        c_state = c_state;
                    end
            endcase
    end          
endmodule