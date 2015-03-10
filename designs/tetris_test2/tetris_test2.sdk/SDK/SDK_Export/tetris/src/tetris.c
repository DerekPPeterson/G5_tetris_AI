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


void decide_next_piece(int* next_pieces) {
	next_pieces[0] = next_pieces[1];
	next_pieces[1] = next_pieces[2];
	next_pieces[2] = rand() % N_TETRONIMOES;
}

// Shift the piece in cu_piece 1 left, do not shift if at edge or piece in
// way
int shift_left(int *cur_piece, int * board, point_t * origin) {
	int i;
	for (i = 0; i < N_ROWS; i++) {
		// Check bounds
		if (cur_piece[i] & 0x1) {
			return 0;
		}
		// Check if collision with block in board
		if (cur_piece[i] >> 1 & board[i]) {
			return 0;
		}
	}
	// Actually shift
	for (i = 0; i < N_ROWS; i++) {
		cur_piece[i] = cur_piece[i] >> 1;
	}

	origin->x -= 1;
	return 1;
}

// Shift the piece in cu_piece 1 right, do not shift if at edge or piece in
// way
// Return 0 if the piece could not be shifted, 1 otherwise.
int shift_right(int *cur_piece, int * board, point_t * origin) {
	int i;
	for (i = 0; i < N_ROWS; i++) {
		// Check bounds
		if (cur_piece[i] & (1 << (N_COLS - 1))) {
			return 0;
		}
		// Check if collision with block in board
		if (cur_piece[i] << 1 & board[i]) {
			return 0;
		}
	}
	// Actually shift
	for (i = 0; i < N_ROWS; i++) {
		cur_piece[i] = cur_piece[i] << 1;
	}

	origin->x += 1;
	return 1;
}

// Combine two board arrays by bitwise ORing each line together
// Place the result in the second board
void combine_boards(board_t board1, board_t board2) {
	int i;
	for (i = 0; i < N_ROWS - 1; i++) {
		board2[i] = board2[i] | board1[i];
	}
}

// clear completed lines and shift the rest down
// Return the number of lines cleared
int clear_lines(board_t board) {
	int i, j;
	int n_cleared = 0;

	for (i = 0; i < N_ROWS - 1; i++) {
		// if line cleared, shift above rows down
		if (board[i] == 0x3FF) {
			for (j = i; j < N_ROWS - 2; j++) {
				board[j] = board[j + 1];
			}
			board[N_ROWS - 1] = 0;
			n_cleared++;
			i--;
		}
	}
	return n_cleared;
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
	for (i = N_ROWS - 1; i >= 0; i--) {
		print_binary(board[i]);
	}
}

// Display a board state on the vga display using the included vga drawing library
void display_on_vga(board_t board) {
	int i, j;
	int mask;

	start_drawing();
	clear_blocks();

	for (i = 0; i < N_ROWS - 1; i++) {
		mask = 1;
		for (j = 0; j < N_COLS - 1; j++) {
			if (mask & board[i]) {
				draw_block(j, i);
			}
			mask = mask << 1;
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

int main(void) {

	init_platform();

	// Draw background
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();

	// Game state variables
	board_t board;
	piece_t cur_piece;
	board_t display_board[20];  // Combination of the two used for display
	int next_pieces[3];

	int score = 0;          // Current number of lines cleared
	int game_over = 0;      // 1 when the game ends

	// Initialize board and piece arrays
	clear_board(board);
	int i;
	for (i = 0; i < 3; i++) {
		decide_next_piece(next_pieces);
	}

	cur_piece = create_piece(next_pieces[0]);
	decide_next_piece(next_pieces);

	// Main game loop
	int display = 1;
	int drop_counter = 0;
	while (!game_over) {

		// Button Input control
		read_buttons();
		if (left_pressed()) {
			//shift_left(cur_piece, board, &origin);
			display = 1;
		} else if (right_pressed()) {
			//shift_right(cur_piece, board, &origin);
			display = 1;
		} else if (centre_pressed()) {
			rotate(&cur_piece, board);
			display = 1;
		}
		clear_pressed();

		// Drop the current piece. If it cannot be dropped, add a new piece
		drop_counter++;
		if (drop_counter == 10) {
			if (!drop_piece(&cur_piece, board)) {
				place_piece(cur_piece, board);
				cur_piece = create_piece(next_pieces[0]);
				decide_next_piece(next_pieces);
			}
			display = 1;
			drop_counter = 0;
		}

		score += clear_lines(board);

		// TODO printing not useful on microblaze
		// Print the current state
		if (display == 1) {
			clear_board(display_board);
			combine_boards(board, display_board);
			place_piece(cur_piece, display_board);
			//print_board(display_board);
			display_on_vga(display_board);
			display = 0;
		} else {
			for (i = 0; i < 100000; i++) {
				read_buttons();
			}
		}

	}

	return 0;
}
