`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 04:28:46 PM
// Design Name: 
// Module Name: aicontroller
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


module aicontroller(
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

    reg [3:0]next_array0;
    reg [3:0]next_array1;
    reg [3:0]next_array2;
    reg [3:0]next_array3;
    reg [3:0] next_array0_rot1;
    reg [3:0] next_array1_rot1;
    reg [3:0] next_array2_rot1;
    reg [3:0] next_array3_rot1;
    reg [3:0] next_array0_rot2;
    reg [3:0] next_array1_rot2;
    reg [3:0] next_array2_rot2;
    reg [3:0] next_array3_rot2;
    reg [3:0] next_array0_rot3;
    reg [3:0] next_array1_rot3;
    reg [3:0] next_array2_rot3;
    reg [3:0] next_array3_rot3;
    reg next_ready;
    reg [1:0]rot_enable;
    reg [1:0] shift_rot0_en;
    reg [1:0] shift_rot1_en;
    reg [1:0] shift_rot2_en;
    reg [1:0] shift_rot3_en;
    
    reg [3:0] dummy_arr;
    
    // 0 | 1 | 2 | 3 | 4 | 5 | 6 
    // I | L | J | S | Z | O | T
    
    always @ (posedge clk)
    begin
      if (algo_en == 0)
        begin
          next_array0 <= 0;
          next_array1 <= 0;
          next_array2 <= 0;
          next_array3 <= 0;
          next_ready <= 0;
          rot_enable <= 0;
          shift_rot0_en <= 0;
          shift_rot1_en <= 0;
          shift_rot2_en <= 0;
          shift_rot3_en <= 0;
          next_array0_rot1 <= 0;
          next_array1_rot1 <= 0;
          next_array2_rot1 <= 0;
          next_array3_rot1 <= 0;
          next_array0_rot2 <= 0;
          next_array1_rot2 <= 0;
          next_array2_rot2 <= 0;
          next_array3_rot2 <= 0;
          next_array0_rot3 <= 0;
          next_array1_rot3 <= 0;
          next_array2_rot3 <= 0;
          next_array3_rot3 <= 0;
          dummy_arr <= 0;
        end
      else
        begin
          case(next_piece)
            0: begin    //I
              next_array0[0] <= 1;
              next_array1[0] <= 1;
              next_array2[0] <= 1;
              next_array3[0] <= 1;
              next_array0_rot1 <= 4'b1111;
              rot_enable <= 1;
              shift_rot1_en <= 3;
            end
            1: begin    //L
              next_array0 <= 4'b0001;
              next_array1[0] <= 1;
              next_array2 <= 4'b0011;
              next_array0_rot1 <= 4'b0111;
              next_array1_rot1 <= 4'b0001;
              next_array0_rot2 <= 4'b0011;
              next_array1_rot2 <= 4'b0010;
              next_array2_rot2 <= 4'b0010;
              next_array0_rot3 <= 4'b0100;
              next_array1_rot3 <= 4'b0111;
              rot_enable <= 3;
              shift_rot0_en <= 1;
              shift_rot1_en <= 2;
              shift_rot2_en <= 1;
              shift_rot3_en <= 2;
            end
            2: begin    //J
              next_array0 <= 4'b0011;
              next_array1 <= 4'b0001;
              next_array2 <= 4'b0001;
              next_array0_rot1 <= 4'b0111;
              next_array1_rot1 <= 4'b0100;
              next_array0_rot2 <= 4'b0010;
              next_array1_rot2 <= 4'b0010;
              next_array2_rot2 <= 4'b0011;
              next_array0_rot3 <= 4'b0001;
              next_array1_rot3 <= 4'b0111;
              rot_enable <= 3;
              shift_rot0_en <= 1;
              shift_rot1_en <= 2;
              shift_rot2_en <= 1;
              shift_rot3_en <= 2;
            end
            3: begin    //S
              next_array0[0] <= 1;
              next_array1 <= 4'b0011;
              next_array2[1] <= 1;
              next_array0_rot1 <= 4'b0110;
              next_array1_rot1 <= 4'b0011;
              rot_enable <= 1;
              shift_rot0_en <= 1;
              shift_rot1_en <= 2;
            end
            4: begin    //Z
              next_array0[1] <= 1;
              next_array1 <= 4'b0011;
              next_array2[0] <= 1;
              next_array0_rot1 <= 4'b0011;
              next_array1_rot1 <= 4'b0110;
              rot_enable <= 1;
              shift_rot0_en <= 1;
              shift_rot1_en <= 2;
            end
            5: begin    //O
              next_array0 <= 4'b0011;
              next_array1 <= 4'b0011;
              shift_rot0_en <= 2;
            end
            6: begin    //T
              next_array0[0] <= 1;
              next_array1 <= 4'b0011;
              next_array2[0] <= 1;
              next_array0_rot1 <= 4'b0111;
              next_array1_rot1 <= 4'b0010;
              next_array0_rot2 <= 4'b0010;
              next_array1_rot2 <= 4'b0011;
              next_array2_rot2 <= 4'b0010;
              next_array0_rot3 <= 4'b0010;
              next_array1_rot3 <= 4'b0111;
              rot_enable <= 3;
              shift_rot0_en <= 1;
              shift_rot1_en <= 2;
              shift_rot2_en <= 1;
              shift_rot3_en <= 2;
            end
            default: begin
              next_array0 <= 0;
              next_array1 <= 0;
              next_array2 <= 0;
              next_array3 <= 0;
            end
          endcase
          next_ready <= 1;
        end
    end
    
    wire [31:0] score0;
    wire [3:0] shift0;
    wire done0, error0;
    
    score_ten score_rot0(
        .clk(clk),
        .algo_en(algo_en),
        .next_ready(next_ready),
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
        .next_array0(next_array0),
        .next_array1(next_array1),
        .next_array2(next_array2),
        .next_array3(next_array3),
        .shift_en(shift_rot0_en),
        .score(score0),
        .shift(shift0),
        .done(done0),
        .error(error0)
    );
    
    wire [31:0] score1;
    wire [3:0] shift1;
    wire done1, error1;
    
    score_ten score_rot1(
        .clk(clk),
        .algo_en(algo_en),
        .next_ready(next_ready&(rot_enable[0]|rot_enable[1])),
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
        .next_array0(next_array0_rot1),
        .next_array1(next_array1_rot1),
        .next_array2(next_array2_rot1),
        .next_array3(next_array3_rot1),
        .shift_en(shift_rot1_en),
        .score(score1),
        .shift(shift1),
        .done(done1),
        .error(error1)
    );
    
    wire [31:0] score2;
    wire [3:0] shift2;
    wire done2, error2;
    
    score_ten score_rot2(
        .clk(clk),
        .algo_en(algo_en),
        .next_ready(next_ready&(rot_enable[1])),
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
        .next_array0(next_array0_rot2),
        .next_array1(next_array1_rot2),
        .next_array2(next_array2_rot2),
        .next_array3(next_array3_rot2),
        .shift_en(shift_rot2_en),
        .score(score2),
        .shift(shift2),
        .done(done2),
        .error(error2)
    );
    
    wire [31:0] score3;
    wire [3:0] shift3;
    wire done3, error3;
    
    score_ten score_rot3(
        .clk(clk),
        .algo_en(algo_en),
        .next_ready(next_ready&(rot_enable[1]&rot_enable[0])),
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
        .next_array0(next_array0_rot3),
        .next_array1(next_array1_rot3),
        .next_array2(next_array2_rot3),
        .next_array3(next_array3_rot3),
        .shift_en(shift_rot3_en),
        .score(score3),
        .shift(shift3),
        .done(done3),
        .error(error3)
    );
    
    reg [3:0] state;
    reg [31:0] best_score;
    reg [3:0] best_shift;
    reg [1:0] best_rot;
    reg error, done;
    
    parameter
        INIT = 0,
        DONE = 4;
    
    always @ (posedge clk) begin
        if (!algo_en | !next_ready)
            begin
              best_score <= 0;
              best_shift <= 0;
              best_rot <= 0;
              error <= 0;
              state <= 0;
              algo_rshift <= 0;
              algo_rot <= 0;
              algo_done <= 0;
            end
        else if (error0 & error1 & error2 & error3)
            begin
              error <= 1;
              done <= 1;
            end
        else
            begin
              case (state)
                INIT: begin
                    if (done0)
                      begin
                        state <= 1;
                        best_score <= score0;
                        best_shift <= shift0;
                        best_rot <= 0;
                      end
                  end
                1: begin
                    if (!(rot_enable[0]|rot_enable[1]))
                        state <= DONE;
                    if (done1)
                      begin
                        if (score1 > best_score)
                          begin
                            best_score <= score1;
                            best_shift <= shift1;
                            best_rot <= 1;
                          end
                        state <= 2;
                      end
                  end
                2: begin
                    if (!rot_enable[1])
                        state <= DONE;
                    if (done2)
                      begin
                        if (score2 > best_score)
                          begin
                            best_score <= score2;
                            best_shift <= shift2;
                            best_rot <= 2;
                          end
                        state <= 3;
                      end
                  end
                3: begin
                    if (!(rot_enable[0]&rot_enable[1]))
                        state <= DONE;
                    if (done3)
                      begin
                        if (score3 > best_score)
                          begin
                            best_score <= score3;
                            best_shift <= shift3;
                            best_rot <= 3;
                          end
                        state <= 4;
                      end
                  end
                DONE: begin
                    algo_done <= 1;
                    algo_rshift <= best_shift;
                    algo_rot <= best_rot;
                  end
                default: begin
                  algo_done <= 0;
                  algo_rshift <= 0;
                  algo_rot <= 0;
                end
              endcase
            end
    end

    always @ (posedge clk)
    begin
      if (algo_en == 0)
        begin
          LED[13:0] <= 0;
        end
      else
        begin
          LED[3:0] <= algo_rshift;
          LED[5:4] <= algo_rot;
          LED[6] <= algo_done;
        end
       LED[15] <= algo_en;
       LED[14] <= next_ready;
    end

endmodule
