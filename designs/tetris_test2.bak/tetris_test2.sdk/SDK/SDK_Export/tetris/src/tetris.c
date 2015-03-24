/*
 * tetris.c
 *
 *  Created on: 2015-02-20
 *      Author: derek
 */

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "platform.h"
#include "vga.h"
#include "button_io.h"
#include "tetrominoes.h"
#include "tetris_ai_io.h"

void gen_number_string(int n, char * str)
{
	int i = 0;
	for (i = 0; i < 10 ; i ++) {
		str[i] = 0x20;
	}
	i = 0;
	do {
		str[9 - i] = (n % 10) + 0x30;
		n /= 10;
		i++;
	} while (n > 0);
	str[10] = 0;
}

// Combine two board arrays by bitwise ORing each line together
// Place the result in the second board
void combine_boards(board_t board1, board_t board2) {
	int i;
	for (i = 0; i < N_ROWS; i++) {
		board2[i] = board2[i] | board1[i];
	}
}


// Prints a number in binary to stdout, with x's instead of  and 0s
void print_binary(int n) {
	int i;
	int mask = 1;
	for (i = 0; i < N_COLS; i++) {
		if (mask & n) {
			print("X");
		} else {
			print(" ");
		}
		mask = mask << 1;
	}
	print("\r\n");
}

// Print a current board state to the serial output
void print_board(int * board) {
	int i;
	for (i = 0; i < 40; i++) {
		print("\n");
	}
	for (i = N_ROWS; i >= 0; i--) {
		print_binary(board[i]);
	}
}

// Display a board state on the vga display using the included vga drawing library
void display_on_vga(board_t board) {
	int i, j;
	int mask;

	start_drawing();
	clear_blocks();

	for (i = 0; i < N_ROWS; i++) {
		mask = 1;
		for (j = 0; j < N_COLS; j++) {
		    mask = 1 << j;
			if (mask & board[i]) {
				draw_block(j, i);
			}
		}
	}
	finish_drawing();
}

// loop n times, doing nothing
void spin(int n) {
	int i;
	for (i = 0; i < n; i++) {
	}
}

#define AI_CNTRL 1

int main(void) {

	init_platform();
	srand(34234);

	char score_string[11];
	float avg_score = 0;
	int n_played = 0;

	// Draw background
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();

	// Game state variables
	board_t board;              // Fixed piece board state
	board_t display_board;  // state with the current piece for display
	piece_t cur_piece;          // Current falling piece

	int next_pieces[3];         // piece ids for the next pieces
	int score;              // Current number of lines cleared
	int game_over;          // 1 when the game ends

	// Initialize board and place first piece
	print("Begin\r\n");
GAME_START:
	score = 0;
	game_over = 0;
	clear_board(board);
	int i;
	for (i = 0; i < 3; i++) {
		decide_next_piece(next_pieces);
	}

	// Initialize board
/*
	board[0] = 0x3EF;
	board[1] = 0x3EF;
	board[2] = 0x3EF;
	board[3] = 0x3EF;
	next_pieces[0] = 0;
	*/

	cur_piece = create_piece(next_pieces[0]);

	int moves[2];
	write_state(board, next_pieces[0]);
	get_moves(moves);
	make_moves(moves, &cur_piece, board);
	decide_next_piece(next_pieces);

	// Main game loop
	int display = 1;        // Used to indicate a display update is needed
	int drop_counter = 0;   // Multiple shifts/rotates can be done bfore a piece
	                        // drops
	while (!game_over) {


#if !AI_CNTRL // HUMAN CONTROL
		// Button Input control
		read_buttons();
		if (left_pressed()) {
			shift_left(&cur_piece, board);
			display = 1;
		} else if (right_pressed()) {
			shift_right(&cur_piece, board);
			display = 1;
		} else if (centre_pressed()) {
			rotate(&cur_piece, board);
			display = 1;
		}
		clear_pressed();
#endif

		// Drop the current piece. If it cannot be dropped, add a new piece
		drop_counter++;
		if (drop_counter == 10) {
			if (!drop_piece(&cur_piece, board)) {
				place_piece(cur_piece, board);
				cur_piece = create_piece(next_pieces[0]);
				game_over = check_game_over(cur_piece, board);
#if AI_CNTRL
                int moves[2];
                write_state(board, next_pieces[0]);
                get_moves(moves);
                make_moves(moves, &cur_piece, board);
#endif
				decide_next_piece(next_pieces);
				//display = 1;
			}
			//display = 1;
			drop_counter = 0;
		}

		score += clear_lines(board);

		// Display on vga
		display = game_over;
		if (display == 1) {
			clear_board(display_board);
			combine_boards(board, display_board);
			place_piece(cur_piece, display_board);
			//print_board(display_board);
			display_on_vga(display_board);
			display = 0;

			draw_rect(50, 100, 100, 113, 0x222222);
			draw_num(score, 100, 100);
		} else {
#if !AI_CNTRL
		    // Otherwise just monitor button presses
			for (i = 0; i < 050000; i++) {
				read_buttons();
			}
#endif
		}

	}

	n_played++;
	gen_number_string(n_played, score_string);
	print(score_string);
	float new_score;

	if (n_played == 1) {
		avg_score = score;
	} else {
		new_score = score;
		avg_score = avg_score * (n_played - 1) / (n_played) + new_score / n_played;
	}
	gen_number_string(score, score_string);
	print(score_string);
	int temp;
	temp = avg_score;
	gen_number_string(temp, score_string);
	print(score_string);

	print("\r\n");

	goto GAME_START;

	return 0;
}
