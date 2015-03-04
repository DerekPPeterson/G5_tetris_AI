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

#define N_ROWS 20
#define N_COLS 10
#define CYCLES_PER_STEP 1000

struct point {
	int x;
	int y;
}typedef point_t;

// given a pointer to a board array, set each int to 0
void clear_board(int * board) {
	int i;
	for (i = 0; i < N_ROWS; i++) {
		board[i] = 0;
	}
}

void decide_next_piece(int* next_pieces) {
	next_pieces[0] = next_pieces[1];
	next_pieces[1] = next_pieces[2];
	next_pieces[2] = rand() % 7;
}

// given the pointer to the current piece board, clear it and add a random
// piece at the top. return the id of the piece created
int add_piece(int * cur_piece, point_t *origin, int * next_pieces) {
	int piece_id = next_pieces[0];
	decide_next_piece(next_pieces);

	clear_board(cur_piece);

	int new_rows[4];

	origin->x = 4;
	origin->y = 18;

	switch (piece_id) {
	// line
	case 0:
		new_rows[3] = 0x10;
		new_rows[2] = 0x10;
		new_rows[1] = 0x10;
		new_rows[0] = 0x10;
		break;
		// left L
	case 1:
		new_rows[3] = 0x10;
		new_rows[2] = 0x10;
		new_rows[1] = 0x30;
		new_rows[0] = 0x00;
		break;
		// right L
	case 2:
		new_rows[3] = 0x10;
		new_rows[2] = 0x10;
		new_rows[1] = 0x18;
		new_rows[0] = 0x00;
		break;
		// S
	case 3:
		new_rows[3] = 0x10;
		new_rows[2] = 0x30;
		new_rows[1] = 0x20;
		new_rows[0] = 0x00;
		break;
		// Z
	case 4:
		new_rows[3] = 0x20;
		new_rows[2] = 0x30;
		new_rows[1] = 0x10;
		new_rows[0] = 0x00;
		break;
		// box
	case 5:
		new_rows[3] = 0x30;
		new_rows[2] = 0x30;
		new_rows[1] = 0x00;
		new_rows[0] = 0x00;
		break;
		// T
	case 6:
		new_rows[3] = 0x10;
		new_rows[2] = 0x30;
		new_rows[1] = 0x10;
		new_rows[0] = 0x00;
		break;
	}

	int i;
	for (i = 0; i < 4; i++) {
		cur_piece[N_ROWS - 4 + i] = new_rows[i];
	}

	return piece_id;
}

// drops a piece
// returns true if dropped, false if it could not
int drop_piece(int * cur_piece, int * board, point_t * origin) {
	// the piece is at the bottom already
	if (cur_piece[0]) {
		return 0;
	}

	int i;
	for (i = 0; i < N_ROWS - 1; i++) {
		// the piece is blocked by another piece
		if (cur_piece[i] & board[i - 1]) {
			return 0;
		}
	}

	// Shift down
	for (i = 0; i < N_ROWS - 1; i++) {
		cur_piece[i] = cur_piece[i + 1];
	}
	cur_piece[N_ROWS - 1] = 0;

	origin->y -= 1;

	return 1;
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

// Combine two board arrays by bitwise ANDing each line together
// Place the result in the second board
void place_piece(int * cur_piece, int * board) {
	int i;
	for (i = 0; i < N_ROWS; i++) {
		board[i] = board[i] | cur_piece[i];
	}
}

// Rotate the currently falling piece
int rotate(int *cur_piece, int * board, point_t origin) {
	int i, j, i2, j2;
	int mask, temp_mask;
	int temp_board[N_ROWS];
	clear_board(temp_board);

	for (i = 0; i < N_ROWS; i++) {
		mask = 1;
		for (j = 0; j < N_COLS; j++) {
			if (mask & cur_piece[i]) {
				i2 = (j - origin.x) + origin.y;
				j2 = -(i - origin.y) + origin.x;
				if (i2 < 0 || i2 >= N_ROWS || j2 < 0 || j2 >= N_COLS) {
					return 0;
				} else {
					temp_mask = 1 << j2;
					temp_board[i2] = temp_board[i2] | temp_mask;
				}
			}
			mask = mask << 1;
		}
	}
	for (i = 0; i < N_ROWS; i++) {
		if (temp_board[i] & board[i]) {
			return 0;
		}
	}

	clear_board(cur_piece);
	place_piece(temp_board, cur_piece);
	return 1;
}

// clear completed lines and shift the rest down
// Return the number of lines cleared
int clear_lines(int * board) {
	int i, j;
	int n_cleared = 0;

	for (i = 0; i < N_ROWS; i++) {
		// if line cleared, shift above rows down
		if (board[i] == 0x3FF) {
			for (j = i; j < N_ROWS - 1; j++) {
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
void display_on_vga(int * board) {
	int i, j;
	int mask;

	start_drawing();
	clear_blocks();

	for (i = 0; i < N_ROWS; i++) {
		mask = 1;
		for (j = 0; j < N_COLS; j++) {
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

	srand(time(NULL ));

	// Draw background
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();
	start_drawing();
	draw_rect(0, 0, VGA_DISPLAY_WIDTH, VGA_DISPLAY_HEIGHT, 0x2222);
	finish_drawing();

	// Game state variables
	int next_pieces[3];
	int board[20];          // "Locked" pieces
	int cur_piece[20];      // Current falling piece
	point_t origin;	// origin of current falling piece
	int display_board[20];  // Combination of the two used for display

	int score = 0;          // Current number of lines cleared
	int game_over = 0;      // 1 when the game ends

	// Initialize board and piece arrays
	clear_board(board);
	int i;
	for (i = 0; i < 3; i++) {
		decide_next_piece(next_pieces);
	}
	add_piece(cur_piece, &origin, next_pieces);

	// Main game loop
	int display = 1;
	int drop_counter = 0;
	while (!game_over) {

		// Button Input control
		read_buttons();
		if (left_pressed()) {
			shift_left(cur_piece, board, &origin);
			display = 1;
		} else if (right_pressed()) {
			shift_right(cur_piece, board, &origin);
			display = 1;
		} else if (centre_pressed()) {
			rotate(cur_piece, board, origin);
			display = 1;
		}
		clear_pressed();

		// Drop the current pice. If it cannot be dropped, add a new piece
		drop_counter++;
		if (drop_counter == 10) {
			if (!drop_piece(cur_piece, board, &origin)) {
				place_piece(cur_piece, board);
				add_piece(cur_piece, &origin, next_pieces);
			}
			display = 1;
			drop_counter = 0;
		}

		score += clear_lines(board);

		// TODO printing not useful on microblaze
		// Print the current state
		if (display == 1) {
			clear_board(display_board);
			place_piece(board, display_board);
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