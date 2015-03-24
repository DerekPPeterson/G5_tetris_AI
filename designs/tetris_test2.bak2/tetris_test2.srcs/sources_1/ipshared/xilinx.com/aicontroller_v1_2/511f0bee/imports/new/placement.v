`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 11:04:52 AM
// Design Name: 
// Module Name: placement
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


module placement(
    input clk,
    input rst,
    input start,
    input [19:0] col_in0,
    input [19:0] col_in1,
    input [19:0] col_in2,
    input [19:0] col_in3,
    input [3:0] next_col0,
    input [3:0] next_col1,
    input [3:0] next_col2,
    input [3:0] next_col3,
    output reg [19:0] col_out0,
    output reg [19:0] col_out1,
    output reg [19:0] col_out2,
    output reg [19:0] col_out3,
    output reg done,
    output reg error
    );
    
    reg [4:0] down;
    reg [2:0] state;
    
    parameter
        WAIT = 0,
        INIT = 1,
        FIRST = 2,
        SECOND = 3,
        THIRD = 4,
        NXT = 5,
        DONE = 6;
        
    always @ (posedge clk)
    begin
        if (rst == 0 || start == 0)
          begin
            col_out0 <= 0;
            col_out1 <= 0;
            col_out2 <= 0;
            col_out3 <= 0;
            done <= 0;
            error <=0;
            down <= 15;
            state <= WAIT;
          end
        else
          begin
          case (state)
            WAIT: begin
                if (start == 1)
                  state <= INIT;
              end
            INIT: begin
                if ((((next_col0[0] & col_in0[19]) | (next_col0[1] & col_in0[19]) | (next_col0[2] & col_in0[19]) | (next_col0[3] & col_in0[19])) |
                      ((next_col1[0] & col_in1[19]) | (next_col1[1] & col_in1[19]) | (next_col1[2] & col_in1[19]) | (next_col1[3] & col_in1[19])) |
                      ((next_col2[0] & col_in2[19]) | (next_col2[1] & col_in2[19]) | (next_col2[2] & col_in2[19]) | (next_col2[3] & col_in2[19])) |
                      ((next_col3[0] & col_in3[19]) | (next_col3[1] & col_in3[19]) | (next_col3[2] & col_in3[19]) | (next_col3[3] & col_in3[19]))) != 0)
                    begin
                      state <= DONE;
                      error <= 1;
                      done <= 1;
                    end
                else
                    begin
                      state <= FIRST;
                      col_out0 <= col_in0;
                      col_out1 <= col_in1;
                      col_out2 <= col_in2;
                      col_out3 <= col_in3;
                    end
              end
            FIRST: begin
                if (((next_col0[0] & col_in0[18]) | (next_col1[0] & col_in1[18]) | (next_col2[0] & col_in2[18]) | (next_col3[0] & col_in3[18])) != 0)
                    begin
                      state <= DONE;
                      if (((next_col0[3:1] | next_col1[3:1] | next_col2[3:1] | next_col3[3:1]) & 3'b111) != 0)
                        begin
                          error <= 1;
                          done <= 1;
                        end
                      else
                        begin
                          done <= 1;
                          down <= 18;
                          col_out0[19] <= col_in0[19] | next_col0[0];
                          col_out1[19] <= col_in1[19] | next_col1[0];
                          col_out2[19] <= col_in2[19] | next_col2[0];
                          col_out3[19] <= col_in3[19] | next_col3[0];
                        end
                    end
                else
                    state <= SECOND;
              end
            SECOND: begin
                if ((((next_col0[0] & col_in0[17]) | (next_col1[0] & col_in1[17]) | (next_col2[0] & col_in2[17]) | (next_col3[0] & col_in3[17])) | 
                        ((next_col0[1] & col_in0[18]) | (next_col1[1] & col_in1[18]) | (next_col2[1] & col_in2[18]) | (next_col3[1] & col_in3[18]))) != 0)
                    begin
                      state <= DONE;
                      if(((next_col0[3:2] | next_col1[3:2] | next_col2[3:2] | next_col3[3:2]) & 2'b11) != 0)
                        begin
                          error <= 1;
                          done <= 1;
                        end
                      else
                        begin
                          done <= 1;
                          down <= 17;
                          col_out0[18] <= col_in0[18] | next_col0[0];
                          col_out0[19] <= col_in0[19] | next_col0[1];
                          col_out1[18] <= col_in1[18] | next_col1[0];
                          col_out1[19] <= col_in1[19] | next_col1[1];
                          col_out2[18] <= col_in2[18] | next_col2[0];
                          col_out2[19] <= col_in2[19] | next_col2[1];
                          col_out3[18] <= col_in3[18] | next_col3[0];
                          col_out3[19] <= col_in3[19] | next_col3[1];
                        end
                    end
                else
                    state <= THIRD;
              end
            THIRD: begin
                if ((((next_col0[0] & col_in0[16]) | (next_col1[0] & col_in1[16]) | (next_col2[0] & col_in2[16]) | (next_col3[0] & col_in3[16])) | 
                        ((next_col0[1] & col_in0[17]) | (next_col1[1] & col_in1[17]) | (next_col2[1] & col_in2[17]) | (next_col3[1] & col_in3[17])) |
                        ((next_col0[2] & col_in0[18]) | (next_col1[2] & col_in1[18]) | (next_col2[2] & col_in2[18]) | (next_col3[2] & col_in3[18]))) != 0)
                    begin
                      state <= DONE;
                      if((next_col0[3] | next_col1[3] | next_col2[3] | next_col3[3]) != 0)
                        begin
                          error <= 1;
                          done <= 1;
                        end
                      else
                        begin
                          done <= 1;
                          down <= 16;
                          col_out0[17] <= col_in0[17] | next_col0[0];
                          col_out0[18] <= col_in0[18] | next_col0[1];
                          col_out0[19] <= col_in0[19] | next_col0[2];
                          col_out1[17] <= col_in1[17] | next_col1[0];
                          col_out1[18] <= col_in1[18] | next_col1[1];
                          col_out1[19] <= col_in1[19] | next_col1[2];
                          col_out2[17] <= col_in2[17] | next_col2[0];
                          col_out2[18] <= col_in2[18] | next_col2[1];
                          col_out2[19] <= col_in2[19] | next_col2[2];
                          col_out3[17] <= col_in3[17] | next_col3[0];
                          col_out3[18] <= col_in3[18] | next_col3[1];
                          col_out3[19] <= col_in3[19] | next_col3[2];
                        end
                    end
                else
                    state <= NXT;
              end
            NXT: begin
                if ((((next_col0[0] & col_in0[down]) | (next_col0[1] & col_in0[down+1]) | (next_col0[2] & col_in0[down+2]) | (next_col0[3] & col_in0[down+3])) |
                      ((next_col1[0] & col_in1[down]) | (next_col1[1] & col_in1[down+1]) | (next_col1[2] & col_in1[down+2]) | (next_col1[3] & col_in1[down+3])) |
                      ((next_col2[0] & col_in2[down]) | (next_col2[1] & col_in2[down+1]) | (next_col2[2] & col_in2[down+2]) | (next_col2[3] & col_in2[down+3])) |
                      ((next_col3[0] & col_in3[down]) | (next_col3[1] & col_in3[down+1]) | (next_col3[2] & col_in3[down+2]) | (next_col3[3] & col_in3[down+3]))) == 0)
                    begin
                      if (down == 0)
                        begin
                            state <= DONE;
                            done <= 1;
                            col_out0[3:0] <= col_in0[3:0] | next_col0[3:0];
                            col_out1[3:0] <= col_in1[3:0] | next_col1[3:0];
                            col_out2[3:0] <= col_in2[3:0] | next_col2[3:0];
                            col_out3[3:0] <= col_in3[3:0] | next_col3[3:0];
                        end
                      else
                            down <= down - 1;
                    end
                else
                    begin
                      state <= DONE;
                      done <= 1;
                      col_out0[down+1] <= col_in0[down+1] | next_col0[0];
                      col_out0[down+2] <= col_in0[down+2] | next_col0[1];
                      col_out0[down+3] <= col_in0[down+3] | next_col0[2];
                      col_out0[down+4] <= col_in0[down+4] | next_col0[3];
                      col_out1[down+1] <= col_in1[down+1] | next_col1[0];
                      col_out1[down+2] <= col_in1[down+2] | next_col1[1];
                      col_out1[down+3] <= col_in1[down+3] | next_col1[2];
                      col_out1[down+4] <= col_in1[down+4] | next_col1[3];
                      col_out2[down+1] <= col_in2[down+1] | next_col2[0];
                      col_out2[down+2] <= col_in2[down+2] | next_col2[1];
                      col_out2[down+3] <= col_in2[down+3] | next_col2[2];
                      col_out2[down+4] <= col_in2[down+4] | next_col2[3];
                      col_out3[down+1] <= col_in3[down+1] | next_col3[0];
                      col_out3[down+2] <= col_in3[down+2] | next_col3[1];
                      col_out3[down+3] <= col_in3[down+3] | next_col3[2];
                      col_out3[down+4] <= col_in3[down+4] | next_col3[3];
                    end
              end
            DONE: begin
              end
            default: begin
                col_out0 <= 0;
                col_out1 <= 0;
                col_out2 <= 0;
                col_out3 <= 0;
                done <= 0;
                error <=0;
                state <= WAIT;
              end
          endcase
          end
    end

/*
    always @ (posedge clk)
    begin
        if (rst == 0 || start == 0)
          begin
            state <= WAIT;
          end
        else
          begin
          case (state)
            WAIT: begin
              if (start == 1)
                state <= INIT;
              end
            INIT: begin
              if (done == 1)
                state <= DONE;
              else
                state <= FIRST;
              end
            FIRST: begin
              if (done == 1)
                state <= DONE;
              else
                state <= SECOND;
              end
            SECOND: begin
                if (done == 1)
                  state <= DONE;
                else
                  state <= THIRD;
              end
            THIRD: begin
                if (done == 1)
                  state <= DONE;
                else
                  state <= NXT;
              end
            NXT: begin
                if (done == 1)
                  state <= DONE;
              end
            DONE: begin
                if (start == 0)
                  state <= WAIT;
              end
            default: begin
                state <= WAIT;
              end
          endcase
          end
    end
*/
           
endmodule
