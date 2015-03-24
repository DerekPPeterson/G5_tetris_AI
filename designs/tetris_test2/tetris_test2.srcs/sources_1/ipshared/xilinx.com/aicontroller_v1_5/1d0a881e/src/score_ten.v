`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2015 02:39:48 PM
// Design Name: 
// Module Name: score_ten
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


module score_ten(
    input clk,
    input algo_en,
    input next_ready,
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
    input [3:0] next_array0,
    input [3:0] next_array1,
    input [3:0] next_array2,
    input [3:0] next_array3,
    input [1:0] shift_en,
    output reg [31:0] score,
    output reg [3:0] shift,
    output reg done
    );
    
    wire [19:0] col_out00_0, col_out00_1, col_out00_2, col_out00_3;
    wire done00, error00;
    wire ai_done00;
    wire [31:0] score00;
    
    placement placement00(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col0),
        .col_in1(col1),
        .col_in2(col2),
        .col_in3(col3),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out00_0),
        .col_out1(col_out00_1),
        .col_out2(col_out00_2),
        .col_out3(col_out00_3),
        .done(done00),
        .error(error00)
     );
     
     eval_block eval_block00(
        .col0(col_out00_0),
        .col1(col_out00_1),
        .col2(col_out00_2),
        .col3(col_out00_3),
        .col4(col4),
        .col5(col5),
        .col6(col6),
        .col7(col7),
        .col8(col8),
        .col9(col9),
        .reset_b(algo_en),
        .clk(clk),
        .go(done00&(!error00)),
        .done(ai_done00),
        .score(score00)
    );
     
    wire [19:0] col_out01_0, col_out01_1, col_out01_2, col_out01_3;
    wire done01, error01;
    wire ai_done01;
    wire [31:0] score01;

    placement placement01(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col1),
        .col_in1(col2),
        .col_in2(col3),
        .col_in3(col4),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out01_0),
        .col_out1(col_out01_1),
        .col_out2(col_out01_2),
        .col_out3(col_out01_3),
        .done(done01),
        .error(error01)
     );
     
     eval_block eval_block01(
        .col0(col0),
        .col1(col_out01_0),
        .col2(col_out01_1),
        .col3(col_out01_2),
        .col4(col_out01_3),
        .col5(col5),
        .col6(col6),
        .col7(col7),
        .col8(col8),
        .col9(col9),
        .reset_b(algo_en),
        .clk(clk),
        .go(done01&(!error01)),
        .done(ai_done01),
        .score(score01)
    );
     
    wire [19:0] col_out02_0, col_out02_1, col_out02_2, col_out02_3;
    wire done02, error02;
    wire ai_done02;
    wire [31:0] score02;
    
    placement placement02(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col2),
        .col_in1(col3),
        .col_in2(col4),
        .col_in3(col5),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out02_0),
        .col_out1(col_out02_1),
        .col_out2(col_out02_2),
        .col_out3(col_out02_3),
        .done(done02),
        .error(error02)
    );
    
     eval_block eval_block02(
       .col0(col0),
       .col1(col1),
       .col2(col_out02_0),
       .col3(col_out02_1),
       .col4(col_out02_2),
       .col5(col_out02_3),
       .col6(col6),
       .col7(col7),
       .col8(col8),
       .col9(col9),
       .reset_b(algo_en),
       .clk(clk),
       .go(done02&(!error02)),
       .done(ai_done02),
       .score(score02)
   );
      
    wire [19:0] col_out03_0, col_out03_1, col_out03_2, col_out03_3;
    wire done03, error03;
    wire ai_done03;
    wire [31:0] score03;
          
    placement placement03(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col3),
        .col_in1(col4),
        .col_in2(col5),
        .col_in3(col6),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out03_0),
        .col_out1(col_out03_1),
        .col_out2(col_out03_2),
        .col_out3(col_out03_3),
        .done(done03),
        .error(error03)
    );
    
     eval_block eval_block03(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col_out03_0),
       .col4(col_out03_1),
       .col5(col_out03_2),
       .col6(col_out03_3),
       .col7(col7),
       .col8(col8),
       .col9(col9),
       .reset_b(algo_en),
       .clk(clk),
       .go(done03&(!error03)),
       .done(ai_done03),
       .score(score03)
   );

    wire [19:0] col_out04_0, col_out04_1, col_out04_2, col_out04_3;
    wire done04, error04;
    wire ai_done04;
    wire [31:0] score04;
          
    placement placement04(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col4),
        .col_in1(col5),
        .col_in2(col6),
        .col_in3(col7),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out04_0),
        .col_out1(col_out04_1),
        .col_out2(col_out04_2),
        .col_out3(col_out04_3),
        .done(done04),
        .error(error04)
    );
    
     eval_block eval_block04(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col_out04_0),
       .col5(col_out04_1),
       .col6(col_out04_2),
       .col7(col_out04_3),
       .col8(col8),
       .col9(col9),
       .reset_b(algo_en),
       .clk(clk),
       .go(done04&(!error04)),
       .done(ai_done04),
       .score(score04)
   );

    wire [19:0] col_out05_0, col_out05_1, col_out05_2, col_out05_3;
    wire done05, error05;
    wire ai_done05;
    wire [31:0] score05;
          
    placement placement05(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col5),
        .col_in1(col6),
        .col_in2(col7),
        .col_in3(col8),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out05_0),
        .col_out1(col_out05_1),
        .col_out2(col_out05_2),
        .col_out3(col_out05_3),
        .done(done05),
        .error(error05)
    );
    
     eval_block eval_block05(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col4),
       .col5(col_out05_0),
       .col6(col_out05_1),
       .col7(col_out05_2),
       .col8(col_out05_3),
       .col9(col9),
       .reset_b(algo_en),
       .clk(clk),
       .go(done05&(!error05)),
       .done(ai_done05),
       .score(score05)
   );

    wire [19:0] col_out06_0, col_out06_1, col_out06_2, col_out06_3;
    wire done06, error06;
    wire ai_done06;
    wire [31:0] score06;
          
    placement placement06(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready),
        .col_in0(col6),
        .col_in1(col7),
        .col_in2(col8),
        .col_in3(col9),
        .next_col0(next_array0),
        .next_col1(next_array1),
        .next_col2(next_array2),
        .next_col3(next_array3),
        .col_out0(col_out06_0),
        .col_out1(col_out06_1),
        .col_out2(col_out06_2),
        .col_out3(col_out06_3),
        .done(done06),
        .error(error06)
    );
    
     eval_block eval_block06(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col4),
       .col5(col5),
       .col6(col_out06_0),
       .col7(col_out06_1),
       .col8(col_out06_2),
       .col9(col_out06_3),
       .reset_b(algo_en),
       .clk(clk),
       .go(done06&(!error06)),
       .done(ai_done06),
       .score(score06)
   );
    
    wire [19:0] col_out07_0, col_out07_1, col_out07_2, col_out07_3;
    wire done07, error07;
    wire ai_done07;
    wire [31:0] score07;
          
    placement placement07(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready & (shift_en[0] | shift_en[1])),
        .col_in0(col6),
        .col_in1(col7),
        .col_in2(col8),
        .col_in3(col9),
        .next_col0(dummy_arr),
        .next_col1(next_array0),
        .next_col2(next_array1),
        .next_col3(next_array2),
        .col_out0(col_out07_0),
        .col_out1(col_out07_1),
        .col_out2(col_out07_2),
        .col_out3(col_out07_3),
        .done(done07),
        .error(error07)
    );
    
     eval_block eval_block07(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col4),
       .col5(col5),
       .col6(col6),
       .col7(col_out07_1),
       .col8(col_out07_2),
       .col9(col_out07_3),
       .reset_b(algo_en),
       .clk(clk),
       .go(done07&(!error07)),
       .done(ai_done07),
       .score(score07)
   );
    
    wire [19:0] col_out08_0, col_out08_1, col_out08_2, col_out08_3;
    wire done08, error08;
    wire ai_done08;
    wire [31:0] score08;
          
    placement placement08(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready & shift_en[1]),
        .col_in0(col6),
        .col_in1(col7),
        .col_in2(col8),
        .col_in3(col9),
        .next_col0(dummy_arr),
        .next_col1(dummy_arr),
        .next_col2(next_array0),
        .next_col3(next_array1),
        .col_out0(col_out08_0),
        .col_out1(col_out08_1),
        .col_out2(col_out08_2),
        .col_out3(col_out08_3),
        .done(done08),
        .error(error08)
    );
    
     eval_block eval_block08(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col4),
       .col5(col5),
       .col6(col6),
       .col7(col7),
       .col8(col_out08_2),
       .col9(col_out08_3),
       .reset_b(algo_en),
       .clk(clk),
       .go(done08&(!error08)),
       .done(ai_done08),
       .score(score08)
   );
    
    wire [19:0] col_out09_0, col_out09_1, col_out09_2, col_out09_3;
    wire done09, error09;
    wire ai_done09;
    wire [31:0] score09;
          
    placement placement09(
        .clk(clk),
        .rst(algo_en),
        .start(next_ready & shift_en[0] & shift_en[1]),
        .col_in0(col6),
        .col_in1(col7),
        .col_in2(col8),
        .col_in3(col9),
        .next_col0(dummy_arr),
        .next_col1(dummy_arr),
        .next_col2(dummy_arr),
        .next_col3(next_array0),
        .col_out0(col_out09_0),
        .col_out1(col_out09_1),
        .col_out2(col_out09_2),
        .col_out3(col_out09_3),
        .done(done09),
        .error(error09)
    );
    
     eval_block eval_block09(
       .col0(col0),
       .col1(col1),
       .col2(col2),
       .col3(col3),
       .col4(col4),
       .col5(col5),
       .col6(col6),
       .col7(col7),
       .col8(col8),
       .col9(col_out09_3),
       .reset_b(algo_en),
       .clk(clk),
       .go(done09&(!error09)),
       .done(ai_done09),
       .score(score09)
   );

    reg [3:0] state;
    reg [31:0] best_score;
    reg [3:0] best_shift;
    
    parameter
        INIT = 0,
        DONE = 10;
    
    always @ (posedge clk) begin
        if (!algo_en | !next_ready)
            begin
              best_score <= 0;
              best_shift <= 0;
              score <= 0;
              shift <= 0;
              state <= 0;
              done <= 0;
            end
        else
            begin
              case (state)
                INIT: begin
                    if (ai_done00 || error00)
                      begin
                        state <= 1;
                        best_score <= score00;
                        best_shift <= 0;
                      end
                  end
                1: begin
                    if (ai_done01 || error01)
                      begin
                        if (score01 > best_score)
                          begin
                            best_score <= score01;
                            best_shift <= 1;
                          end
                        state <= 2;
                      end
                  end
                2: begin
                    if (ai_done02 || error02)
                      begin
                        if (score02 > best_score)
                          begin
                            best_score <= score02;
                            best_shift <= 2;
                          end
                        state <= 3;
                      end
                  end
                3: begin
                    if (ai_done03 || error03)
                      begin
                        if (score03 > best_score)
                          begin
                            best_score <= score03;
                            best_shift <= 3;
                          end
                        state <= 4;
                      end
                  end
                4: begin
                    if (ai_done04 || error04)
                        begin
                          if (score04 > best_score)
                            begin
                              best_score <= score04;
                              best_shift <= 4;
                            end
                          state <= 5;
                        end
                    end
                  5: begin
                    if (ai_done05 || error05)
                        begin
                          if (score05 > best_score)
                            begin
                              best_score <= score05;
                              best_shift <= 5;
                            end
                          state <= 6;
                        end
                    end
                  6: begin
                    if (ai_done06 || error06)
                        begin
                          if (score06 > best_score)
                            begin
                              best_score <= score06;
                              best_shift <= 6;
                            end
                          state <= 7;
                        end
                    end
                7: begin
                      if (!(shift_en[0]|shift_en[1]))
                          state <= DONE;
                      else if (ai_done07 || error07)
                        begin
                          if (score07 > best_score)
                            begin
                              best_score <= score07;
                              best_shift <= 7;
                            end
                          state <= 8;
                        end
                    end
                  8: begin
                      if (!shift_en[1])
                          state <= DONE;
                      else if (ai_done08 || error08)
                        begin
                          if (score08 > best_score)
                            begin
                              best_score <= score08;
                              best_shift <= 8;
                            end
                          state <= 9;
                        end
                    end
                  9: begin
                      if (!(shift_en[0]&shift_en[1]))
                          state <= DONE;
                      else if (ai_done09 || error09)
                        begin
                          if (score09 > best_score)
                            begin
                              best_score <= score09;
                              best_shift <= 9;
                            end
                          state <= 10;
                        end
                    end
                DONE: begin
                    done <= 1;
                    shift <= best_shift;
                    score <= best_score;
                  end
                default: begin
                  done <= 0;
                  shift <= 0;
                  score <= 0;
                  state <= 0;
                end
              endcase
            end
    end
   
endmodule
