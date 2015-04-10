`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2015 05:23:34 PM
// Design Name: 
// Module Name: aicontroller_tb
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

    // 0 | 1 | 2 | 3 | 4 | 5 | 6 
    // I | L | J | S | Z | O | T

module aicontroller_tb(
    );
    
    reg clk;
    reg [19:0] col0;
    reg [19:0] col1;
    reg [19:0] col2;
    reg [19:0] col3;
    reg [19:0] col4;
    reg [19:0] col5;
    reg [19:0] col6;
    reg [19:0] col7;
    reg [19:0] col8;
    reg [19:0] col9;
    reg [2:0] next_piece;
    reg algo_en;
    wire algo_done;
    wire [1:0] algo_rot;
    wire [3:0] algo_rshift;
    
    aicontroller aicontroller_test(
        .clk(clk),
        .col0(col0),
        .col1(col1),
        .col2(col2),
        .col3(col3),
        .col4(col4),
        .col5(col5),
        .col6(col6),
        .col7(col7),
        .col8(col8),
        .col9(col9),
        .next_piece(next_piece),
        .algo_en(algo_en),
        .algo_done(algo_done),
        .algo_rot(algo_rot),
        .algo_rshift(algo_rshift)
        );
            
    initial begin
        col9 = 20'b0111_1111_1111_1111_1111;
        col8 = 20'b0111_1111_1111_1111_1111;
        col7 = 20'b0111_1111_1111_1111_1111;
        col6 = 20'b0111_1111_1111_1111_1111;
        col5 = 20'b1111_1111_1111_1111_1111;
        col4 = 20'b1111_1111_1111_1111_1111;
        col3 = 20'b1111_1111_1111_1111_1111;
        col2 = 20'b1111_1111_1111_1111_1111;
        col1 = 20'b1111_1111_1111_1111_1111;
        col0 = 20'b1111_1111_1111_1111_1111;
        algo_en = 0;
        next_piece = 0;
        clk = 0;
        
        #50 algo_en = 1;
        
        #2000 algo_en = 0;
        #50
        col9 = 20'b0000_0000_0000_0000_0000;
        col8 = 20'b0000_0000_0000_0000_0000;
        col7 = 20'b0000_0000_0000_0000_0000;
        col6 = 20'b0000_0000_0000_0000_0000;
        col5 = 20'b0000_0000_0000_0000_0000;
        col4 = 20'b0000_0000_0000_0000_0000;
        col3 = 20'b0000_0000_0000_0000_0000;
        col2 = 20'b0000_0000_0000_0000_0000;
        col1 = 20'b0000_0000_0000_0000_0000;
        col0 = 20'b0000_0000_0000_0000_0000;
        next_piece = 2;
        #50 algo_en = 1;
        
        #3000 algo_en = 0;
        #50
        col9 = 20'b0000_0000_0000_0000_0011;
        col8 = 20'b0000_0000_0000_0000_0011;
        col7 = 20'b0000_0000_0000_0000_0011;
        col6 = 20'b0000_0000_0000_0000_0011;
        col5 = 20'b0000_0000_0000_0000_0001;
        col4 = 20'b0000_0000_0000_0000_0000;
        col3 = 20'b0000_0000_0000_0000_0001;
        col2 = 20'b0000_0000_0000_0000_0011;
        col1 = 20'b0000_0000_0000_0000_0011;
        col0 = 20'b0000_0000_0000_0000_0011;
        next_piece = 6;
        #50 algo_en = 1;
        
    end
    
    always  
        #5  clk = !clk;
        
endmodule
