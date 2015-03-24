/*
 * tetris_ai_io.c
 *
 *  Created on: 2015-03-10
 *      Author: derek
 */

#include "tetris_ai_io.h"
#include "xparameters.h"

// TODO deterine ai_cntrl reg and bram address
//volatile unsigned int * ai_cntrl = (unsigned int*) XPAR_AXI_TFT_0_BASEADDR + 1;
volatile unsigned int * ai_cntrl = (unsigned int*) 0x44A10000;
volatile unsigned int * ai_bram = (unsigned int*) XPAR_AXI_BRAM_AI_CNTRL_S_AXI_BASEADDR;

// Write the board state to the ai block and start computation
void write_state(board_t board, int next_piece)
{
    // Write board state
    int i;
    for (i = 0; i < N_ROWS -1; i++) {
        ai_bram[i] = board[i];
    }
    // Write next piece
    *(ai_bram + N_ROWS) = next_piece;

    // Write address of bram to control reg
    *ai_cntrl = (unsigned int) ai_bram;
    // Raise go bit
    *(ai_cntrl + 1) = 1;
}

// Read the ai control register for results of the computation
void get_moves(int * moves)
{
	// time to wait for the done signal
	int counter = 10000;
    // bit 0 - done
    // bits 1:2 - rotations
    // bits 3:6 - shifts_left (MSB to LSB)
    int done = 0;
    int rotations, shifts;
    while (!done) {
    	//counter--;
    	if (counter == 0) {
    		moves[0] = 0;
    		moves[1] = 1;
    		*(ai_cntrl + 1) = 0;
    		return;
    	}
        int ai_result = *(ai_cntrl + 2);
        done = 0x1 & ai_result;
        rotations = 0x3 & (ai_result >> 1);
        shifts = 0xF & (ai_result >> 3);
    }
    *(ai_cntrl + 1) = 0;

    moves[0] = rotations;
    moves[1] = shifts;
}

void make_moves(int * moves, piece_t *piece, board_t board)
{
    // rotate first
    int i;
    for (i = 0; i < moves[0]; i++){
        rotate(piece, board);
    }

    // shift to right
    for (i = 0; i < 10; i ++) {
        shift_right(piece, board);
    }

    // shift to desired position
    for (i = 0; i < moves[1]; i ++) {
        shift_left(piece, board);
    }
}

