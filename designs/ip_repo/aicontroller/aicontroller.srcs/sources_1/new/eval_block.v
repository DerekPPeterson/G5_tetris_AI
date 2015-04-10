`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2015 10:18:08 AM
// Design Name: 
// Module Name: shift_reg
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

// 0    | 1       ...
// line | left_l | right_l | S | Z | box | T

module eval_block(
        input [19:0]col0,
        input [19:0]col1,
        input [19:0]col2,
        input [19:0]col3,
        input [19:0]col4,
        input [19:0]col5,
        input [19:0]col6,
        input [19:0]col7,
        input [19:0]col8,
        input [19:0]col9,
        input reset_b,
        input clk,
        input go,
        output done,
        output [31:0]score,
        
//        output [6:0]rowTrans,
//        output [6:0]wellCount,
//        output [7:0]colTrans,
//        output [7:0]holeCount,
//        output [5:0]fillCount,
//        output [5:0]maxHeight,
        output [19:0]testCol,
        output [5:0]testCounter
    );
    
    reg [19:0]col_0;
    reg [19:0]col_1;
    reg [19:0]col_2;
    reg [19:0]col_3;
    reg [19:0]col_4;
    reg [19:0]col_5;
    reg [19:0]col_6;
    reg [19:0]col_7;
    reg [19:0]col_8;
    reg [19:0]col_9;
    reg reg_go;
    reg reg_done;
    //max height regs
    reg empty;
    reg prev_empty;
    reg [5:0]max_height;
    
    //filled line regs
    reg filled; reg fill_rmv;
    reg [5:0]num_filled;
    reg [19:0]row_filled;  //maybe used for remove line
    
    //Output score regs
    reg [3:0]row_trans0; reg [3:0]row_trans1;
    reg [3:0]row_trans2; reg [3:0]row_trans3;
    reg [3:0]row_trans4; reg [3:0]row_trans5;
    reg [3:0]row_trans6; reg [3:0]row_trans7;
    reg [3:0]row_trans8; reg [3:0]row_trans9;
    reg [3:0]row_trans10; reg [3:0]row_trans11;
    reg [3:0]row_trans12; reg [3:0]row_trans13;
    reg [3:0]row_trans14; reg [3:0]row_trans15;
    reg [3:0]row_trans16; reg [3:0]row_trans17;
    reg [3:0]row_trans18; reg [3:0]row_trans19;
    
    //Well score counter
    reg [3:0]well0; reg [3:0]well1;
    reg [3:0]well2; reg [3:0]well3;
    reg [3:0]well4; reg [3:0]well5;
    reg [3:0]well6; reg [3:0]well7;
    reg [3:0]well8; reg [3:0]well9;
    reg [3:0]well10; reg [3:0]well11;
    reg [3:0]well12; reg [3:0]well13;
    reg [3:0]well14; reg [3:0]well15;
    reg [3:0]well16; reg [3:0]well17;
    reg [3:0]well18; reg [3:0]well19;

    reg [4:0]col_trans0; reg [4:0]col_trans1;
    reg [4:0]col_trans2; reg [4:0]col_trans3;
    reg [4:0]col_trans4; reg [4:0]col_trans5;
    reg [4:0]col_trans6; reg [4:0]col_trans7;
    reg [4:0]col_trans8; reg [4:0]col_trans9;
    
    reg [4:0]hole0; reg [4:0]hole1;
    reg [4:0]hole2; reg [4:0]hole3;
    reg [4:0]hole4; reg [4:0]hole5;
    reg [4:0]hole6; reg [4:0]hole7;
    reg [4:0]hole8; reg [4:0]hole9;
    reg [5:0]SHFTR_counter;
    reg [5:0]SHFTD_counter;
    integer j;
    reg [5:0]num_rmv;
    
        reg [31:0]rowTrans_score;
        reg [31:0]wellCount_score;
        reg [31:0]colTrans_score;
        reg [31:0]holeCount_score;
        reg [31:0]fillCount_score;
        reg [31:0]maxHeight_score;
        reg [31:0]initScore;
    
    reg [31:0]score_reg;
    
    reg [5:0]counter;
    reg [4:0]cur_state;
    reg [4:0]next_state;
    parameter
        WAIT = 0,
        SHFTR = 1,
        SHFTD = 2,
        DONE = 3;

//output
/*
        assign rowTrans = row_trans0+row_trans1+row_trans2+row_trans3+row_trans4+
                      row_trans5+row_trans6+row_trans7+row_trans8+row_trans9+
                      row_trans10+row_trans11+row_trans12+row_trans13+row_trans14+
                      row_trans15+row_trans16+row_trans17+row_trans18+row_trans19;
                        
        assign wellCount = well0+well1+well2+well3+well4+
                           well5+well6+well7+well8+well9+
                           well10+well11+well12+well13+well14+
                           well15+well16+well17+well18+well19;

        assign colTrans = col_trans0+col_trans1+col_trans2+col_trans3+col_trans4+
                          col_trans5+col_trans6+col_trans7+col_trans8+col_trans9;

        assign holeCount = hole0+hole1+hole2+hole3+hole4+
                          hole5+hole6+hole7+hole8+hole9;
        
        assign fillCount = num_filled;
        assign maxHeight = max_height;
 */
 
        assign score = score_reg;
 
        assign done = reg_done;
        assign testCol = col_5;
        assign testCounter = num_rmv;

        
    initial begin
        rowTrans_score = 3217;
        wellCount_score = 3385;
        colTrans_score = 9348;
        holeCount_score = 7899;
        fillCount_score = 3418;
        maxHeight_score = 4500;
        initScore = 32'b10000000000000000000000000000000;
        score_reg = 32'b0;
    end
    
    
        
//logic
    always @ (posedge clk) begin
    case (cur_state)
        WAIT: begin
            if (reg_go) begin
                col_0 <= col0; col_1 <= col1;
                col_2 <= col2; col_3 <= col3;
                col_4 <= col4; col_5 <= col5;  
                col_6 <= col6; col_7 <= col7;  
                col_8 <= col8; col_9 <= col9;
                
                score_reg <= 32'b0;
                
                empty <= 0;
                prev_empty <= 0;
                max_height <= 6'b0;
                reg_done <= 0;
                counter <= 6'b0;

                SHFTR_counter <= 6'b0;
                SHFTD_counter <= 6'b0;
                j = 0;
                num_rmv <= 6'b0;
                fill_rmv <= 1'b1;
                
                num_filled <= 6'b0;
                
                row_trans0 <= 4'b0; row_trans1 <= 4'b0;
                row_trans2 <= 4'b0; row_trans3 <= 4'b0;
                row_trans4 <= 4'b0; row_trans5 <= 4'b0;
                row_trans6 <= 4'b0; row_trans7 <= 4'b0;
                row_trans8 <= 4'b0; row_trans9 <= 4'b0;
                row_trans10 <= 4'b0; row_trans11 <= 4'b0;
                row_trans12 <= 4'b0; row_trans13 <= 4'b0;
                row_trans14 <= 4'b0; row_trans15 <= 4'b0;
                row_trans16 <= 4'b0; row_trans17 <= 4'b0;
                row_trans18 <= 4'b0; row_trans19 <= 4'b0;
                
                well0 <= 4'b0; well1 <= 4'b0;
                well2 <= 4'b0; well3 <= 4'b0;
                well4 <= 4'b0; well5 <= 4'b0;
                well6 <= 4'b0; well7 <= 4'b0;
                well8 <= 4'b0; well9 <= 4'b0;
                well10 <= 4'b0; well11 <= 4'b0;
                well12 <= 4'b0; well13 <= 4'b0;
                well14 <= 4'b0; well15 <= 4'b0;
                well16 <= 4'b0; well17 <= 4'b0;
                well18 <= 4'b0; well19 <= 4'b0;
                
                col_trans0 <= 5'b0; col_trans1 <= 5'b0;
                col_trans2 <= 5'b0; col_trans3 <= 5'b0;
                col_trans4 <= 5'b0; col_trans5 <= 5'b0;
                col_trans6 <= 5'b0; col_trans7 <= 5'b0;
                col_trans8 <= 5'b0; col_trans9 <= 5'b0;

                hole0 <= 5'b0; hole1 <= 5'b0;
                hole2 <= 5'b0; hole3 <= 5'b0;
                hole4 <= 5'b0; hole5 <= 5'b0;
                hole6 <= 5'b0; hole7 <= 5'b0;
                hole8 <= 5'b0; hole9 <= 5'b0;
            end
            else begin
                score_reg = 32'b0;
                reg_done = 0;
            end
        end
        SHFTR: begin
            SHFTR_counter <= SHFTR_counter + 1;
        //shift right
            col_0 <= col_9; col_1 <= col_0;
            col_2 <= col_1; col_3 <= col_2;
            col_4 <= col_3; col_5 <= col_4;
            col_6 <= col_5; col_7 <= col_6;
            col_8 <= col_7; col_9 <= col_8;
            
        //Row transition score; Better logic?
            if (SHFTR_counter != 9) begin
                row_trans0 = row_trans0 + (col_9[0] ^ col_8[0]);
                row_trans1 = row_trans1 + (col_9[1] ^ col_8[1]);
                row_trans2 = row_trans2 + (col_9[2] ^ col_8[2]);
                row_trans3 = row_trans3 + (col_9[3] ^ col_8[3]);
                row_trans4 = row_trans4 + (col_9[4] ^ col_8[4]);
                row_trans5 = row_trans5 + (col_9[5] ^ col_8[5]);
                row_trans6 = row_trans6 + (col_9[6] ^ col_8[6]);
                row_trans7 = row_trans7 + (col_9[7] ^ col_8[7]);
                row_trans8 = row_trans8 + (col_9[8] ^ col_8[8]);
                row_trans9 = row_trans9 + (col_9[9] ^ col_8[9]);
                row_trans10 = row_trans10 + (col_9[10] ^ col_8[10]);
                row_trans11 = row_trans11 + (col_9[11] ^ col_8[11]);
                row_trans12 = row_trans12 + (col_9[12] ^ col_8[12]);
                row_trans13 = row_trans13 + (col_9[13] ^ col_8[13]);
                row_trans14 = row_trans14 + (col_9[14] ^ col_8[14]);
                row_trans15 = row_trans15 + (col_9[15] ^ col_8[15]);
                row_trans16 = row_trans16 + (col_9[16] ^ col_8[16]);
                row_trans17 = row_trans17 + (col_9[17] ^ col_8[17]);
                row_trans18 = row_trans18 + (col_9[18] ^ col_8[18]);
                row_trans19 = row_trans19 + (col_9[19] ^ col_8[19]);
            end
            //Well logic
            if (SHFTR_counter == 8) begin
                well0 = well0 + (col_9[0] & !col_8[0]);
                well1 = well1 + (col_9[1] & !col_8[1]);
                well2 = well2 + (col_9[2] & !col_8[2]);
                well3 = well3 + (col_9[3] & !col_8[3]);
                well4 = well4 + (col_9[4] & !col_8[4]);
                well5 = well5 + (col_9[5] & !col_8[5]);
                well6 = well6 + (col_9[6] & !col_8[6]);
                well7 = well7 + (col_9[7] & !col_8[7]);
                well8 = well8 + (col_9[8] & !col_8[8]);
                well9 = well9 + (col_9[9] & !col_8[9]);
                well10 = well10 + (col_9[10] & !col_8[10]);
                well11 = well11 + (col_9[11] & !col_8[11]);
                well12 = well12 + (col_9[12] & !col_8[12]);
                well13 = well13 + (col_9[13] & !col_8[13]);
                well14 = well14 + (col_9[14] & !col_8[14]);
                well15 = well15 + (col_9[15] & !col_8[15]);
                well16 = well16 + (col_9[16] & !col_8[16]);
                well17 = well17 + (col_9[17] & !col_8[17]);
                well18 = well18 + (col_9[18] & !col_8[18]);
                well19 = well19 + (col_9[19] & !col_8[19]);
            end
            else if (SHFTR_counter == 9) begin
                well0 = well0 + (col_7[0] & !col_8[0]);
                well1 = well1 + (col_7[1] & !col_8[1]);
                well2 = well2 + (col_7[2] & !col_8[2]);
                well3 = well3 + (col_7[3] & !col_8[3]);
                well4 = well4 + (col_7[4] & !col_8[4]);
                well5 = well5 + (col_7[5] & !col_8[5]);
                well6 = well6 + (col_7[6] & !col_8[6]);
                well7 = well7 + (col_7[7] & !col_8[7]);
                well8 = well8 + (col_7[8] & !col_8[8]);
                well9 = well9 + (col_7[9] & !col_8[9]);
                well10 = well10 + (col_7[10] & !col_8[10]);
                well11 = well11 + (col_7[11] & !col_8[11]);
                well12 = well12 + (col_7[12] & !col_8[12]);
                well13 = well13 + (col_7[13] & !col_8[13]);
                well14 = well14 + (col_7[14] & !col_8[14]);
                well15 = well15 + (col_7[15] & !col_8[15]);
                well16 = well16 + (col_7[16] & !col_8[16]);
                well17 = well17 + (col_7[17] & !col_8[17]);
                well18 = well18 + (col_7[18] & !col_8[18]);
                well19 = well19 + (col_7[19] & !col_8[19]);
            end
            else begin
                well0 = well0 + (col_9[0] & !col_8[0] & col_7[0]);
                well1 = well1 + (col_9[1] & !col_8[1] & col_7[1]);
                well2 = well2 + (col_9[2] & !col_8[2] & col_7[2]);
                well3 = well3 + (col_9[3] & !col_8[3] & col_7[3]);
                well4 = well4 + (col_9[4] & !col_8[4] & col_7[4]);
                well5 = well5 + (col_9[5] & !col_8[5] & col_7[5]);
                well6 = well6 + (col_9[6] & !col_8[6] & col_7[6]);
                well7 = well7 + (col_9[7] & !col_8[7] & col_7[7]);
                well8 = well8 + (col_9[8] & !col_8[8] & col_7[8]);
                well9 = well9 + (col_9[9] & !col_8[9] & col_7[9]);
                well10 = well10 + (col_9[10] & !col_8[10] & col_7[10]);
                well11 = well11 + (col_9[11] & !col_8[11] & col_7[11]);
                well12 = well12 + (col_9[12] & !col_8[12] & col_7[12]);
                well13 = well13 + (col_9[13] & !col_8[13] & col_7[13]);
                well14 = well14 + (col_9[14] & !col_8[14] & col_7[14]);
                well15 = well15 + (col_9[15] & !col_8[15] & col_7[15]);
                well16 = well16 + (col_9[16] & !col_8[16] & col_7[16]);
                well17 = well17 + (col_9[17] & !col_8[17] & col_7[17]);
                well18 = well18 + (col_9[18] & !col_8[18] & col_7[18]);
                well19 = well19 + (col_9[19] & !col_8[19] & col_7[19]);
            end  
        end
        SHFTD: begin
            SHFTD_counter <= SHFTD_counter + 1;
        //shift down
            col_0[18:0] <= col_0[19:1]; col_0[19] <= col_0[0];
            col_1[18:0] <= col_1[19:1]; col_1[19] <= col_1[0];
            col_2[18:0] <= col_2[19:1]; col_2[19] <= col_2[0];
            col_3[18:0] <= col_3[19:1]; col_3[19] <= col_3[0];
            col_4[18:0] <= col_4[19:1]; col_4[19] <= col_4[0];
            col_5[18:0] <= col_5[19:1]; col_5[19] <= col_5[0];
            col_6[18:0] <= col_6[19:1]; col_6[19] <= col_6[0];
            col_7[18:0] <= col_7[19:1]; col_7[19] <= col_7[0];
            col_8[18:0] <= col_8[19:1]; col_8[19] <= col_8[0];
            col_9[18:0] <= col_9[19:1]; col_9[19] <= col_9[0];
        //max height
        empty <= !(col_0[0] | col_1[0] | col_2[0] | col_3[0] | col_4[0] |
                 col_5[0] | col_6[0] | col_7[0] | col_8[0] | col_9[0]);
                 
        prev_empty <= empty;
        
        if (!prev_empty & empty) begin
            max_height <= SHFTD_counter-1;
        end
        else 
            max_height <= max_height;
        
        //filled line
        filled <= col_0[0] & col_1[0] & col_2[0] & col_3[0] & col_4[0] &
                 col_5[0] & col_6[0] & col_7[0] & col_8[0] & col_9[0];
                 
        row_filled[0] <= col_0[0] & col_1[0] & col_2[0] & col_3[0] & col_4[0] &
                 col_5[0] & col_6[0] & col_7[0] & col_8[0] & col_9[0];
                 
        if (filled)
            num_filled <= num_filled + 1;
        
        //Col transition
            if (SHFTD_counter != 6'b010011) begin
                col_trans0 = col_trans0 + (col_0[0] ^ col_0[1]);
                col_trans1 = col_trans1 + (col_1[0] ^ col_1[1]);
                col_trans2 = col_trans2 + (col_2[0] ^ col_2[1]);
                col_trans3 = col_trans3 + (col_3[0] ^ col_3[1]);
                col_trans4 = col_trans4 + (col_4[0] ^ col_4[1]);
                col_trans5 = col_trans5 + (col_5[0] ^ col_5[1]);
                col_trans6 = col_trans6 + (col_6[0] ^ col_6[1]);
                col_trans7 = col_trans7 + (col_7[0] ^ col_7[1]);
                col_trans8 = col_trans8 + (col_8[0] ^ col_8[1]);
                col_trans9 = col_trans9 + (col_9[0] ^ col_9[1]);
                
            //Count hole
                hole0 = hole0 + (!col_0[0] & col_0[1]);
                hole1 = hole1 + (!col_1[0] & col_1[1]);
                hole2 = hole2 + (!col_2[0] & col_2[1]);
                hole3 = hole3 + (!col_3[0] & col_3[1]);
                hole4 = hole4 + (!col_4[0] & col_4[1]);
                hole5 = hole5 + (!col_5[0] & col_5[1]);
                hole6 = hole6 + (!col_6[0] & col_6[1]);
                hole7 = hole7 + (!col_7[0] & col_7[1]);
                hole8 = hole8 + (!col_8[0] & col_8[1]);
                hole9 = hole9 + (!col_9[0] & col_9[1]);
            end
        end
        DONE: begin
              score_reg = initScore 
              - (row_trans0+row_trans1+row_trans2+row_trans3+row_trans4+
              row_trans5+row_trans6+row_trans7+row_trans8+row_trans9+
              row_trans10+row_trans11+row_trans12+row_trans13+row_trans14+
              row_trans15+row_trans16+row_trans17+row_trans18+row_trans19)*rowTrans_score
              - (well0+well1+well2+well3+well4+
              well5+well6+well7+well8+well9+
              well10+well11+well12+well13+well14+
              well15+well16+well17+well18+well19) * wellCount_score
              - (col_trans0+col_trans1+col_trans2+col_trans3+col_trans4+
              col_trans5+col_trans6+col_trans7+col_trans8+col_trans9) * colTrans_score
              - (hole0+hole1+hole2+hole3+hole4+
              hole5+hole6+hole7+hole8+hole9) * holeCount_score 
              + num_filled * fillCount_score
              - max_height * maxHeight_score;
              
              reg_done <= 1'b1;
        end
        default:
            ;
      endcase
    end

 //Reset
        always @ (posedge clk) begin
            if(!reset_b)
                cur_state <= WAIT;
            else
                cur_state <= next_state;
                reg_go <= go;
        end

//state transition block
    always @ (*) begin
        case(cur_state)
            WAIT: begin
                if (reg_go) begin next_state <= SHFTR; end
                else begin next_state <= WAIT; end
            end
            SHFTR: begin
                if (SHFTR_counter == 6'b001001) begin next_state <= SHFTD; end
                else begin next_state <= SHFTR; end
            end
            SHFTD: begin
                if (SHFTD_counter == 6'b010011) begin next_state <= DONE; end
                else begin next_state <= SHFTD; end
            end
            DONE: begin
                if (!reg_go) begin next_state <= WAIT; end
                else begin next_state <= DONE; end
            end
            default:
                next_state <= WAIT;
         endcase
    end
endmodule

/*TB HERE
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2015 02:49:07 PM
// Design Name: 
// Module Name: eval_tb
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

module eval_tb(
);

    reg [19:0]col_0;
    reg [19:0]col_1;
    reg [19:0]col_2;
    reg [19:0]col_3;
    reg [19:0]col_4;
    reg [19:0]col_5;
    reg [19:0]col_6;
    reg [19:0]col_7;
    reg [19:0]col_8;
    reg [19:0]col_9;
    reg reset_b;
    reg clk;
    reg go;
    wire done;
    wire [31:0]score_tb;
    
    eval_block eval1(.col0(col_0),
            .col1(col_1),
            .col2(col_2),
            .col3(col_3),
            .col4(col_4),
            .col5(col_5),
            .col6(col_6),
            .col7(col_7),
            .col8(col_8),
            .col9(col_9),
            .reset_b(reset_b),
            .clk(clk),
            .go(go),
            .done(done),
            
            .score(score_tb)
            );
    integer i;
    
    initial begin
        col_9 = 20'b00000000000000000000;
        col_8 = 20'b00000000000000000000;
        col_7 = 20'b00000000000000000000;
        col_6 = 20'b00000000000000000000;
        col_5 = 20'b00000000000000000001;
        col_4 = 20'b00000000000000000000;
        col_3 = 20'b00000000000000000000;
        col_2 = 20'b00000000000000000000;
        col_1 = 20'b00000000000000000000;
        col_0 = 20'b00000000000000000000;
        reset_b = 1;
        go = 0;
        clk = 0;
        
        for (i = 0; i < 2; i=i+1) begin
            #50 go = !go;   
        end
        
        #500 reset_b = !reset_b;
    end


    always  
        #5  clk = !clk;
        
endmodule
*/
