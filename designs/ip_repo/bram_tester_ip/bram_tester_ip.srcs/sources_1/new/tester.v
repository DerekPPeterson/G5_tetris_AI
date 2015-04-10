`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2015 10:31:17 PM
// Design Name: 
// Module Name: bram_tester
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


module bram_tester(
    input clk,
    input [13:0] SWITCH,
    input [19:0] col0,
    input [19:0] col1,
    input [19:0] col2,
    input [19:0] col3,
    input [19:0] col4,
    input [19:0] col5,
    input [19:0] col6,
    input [19:0] col7,
    input [19:0] col8,
    input [19:0] col9,
    input [2:0] next_piece,
    input algo_en,
    output reg [15:0] LED,
    output reg algo_done,
    output reg [1:0] algo_rot,
    output reg [3:0] algo_rshift
    );

    always @ (posedge clk) begin
        if (SWITCH == 14'b0)
          begin
            LED[10:0] <= 11'b0;
          end
        else if (SWITCH[4:0] < 20)
          begin
            LED[0]<= col0[SWITCH[4:0]];
            LED[1]<= col1[SWITCH[4:0]];
            LED[2]<= col2[SWITCH[4:0]];
            LED[3]<= col3[SWITCH[4:0]];
            LED[4]<= col4[SWITCH[4:0]];
            LED[5]<= col5[SWITCH[4:0]];
            LED[6]<= col6[SWITCH[4:0]];
            LED[7]<= col7[SWITCH[4:0]];
            LED[8]<= col8[SWITCH[4:0]];
            LED[9]<= col9[SWITCH[4:0]];
            LED[10] <= 1'b1;
          end
        else
            LED[10:0] <= 11'b0;
        LED[13:11] <= next_piece[2:0];
        LED[15] <= algo_en;
    end
            
endmodule
