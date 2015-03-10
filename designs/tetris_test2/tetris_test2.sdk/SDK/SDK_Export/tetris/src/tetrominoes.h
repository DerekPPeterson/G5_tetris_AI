#ifndef TETROMINOES_H
#define TETROMINOES_H

#define N_ROWS 20
#define N_COLS 10
#define N_TETRONIMOES 2

struct point {
	int x;
	int y;
}typedef point_t;

typedef int board_t[N_ROWS];

struct piece {
	int piece_id;
	point_t position;
	int rotation;
	board_t board;
} typedef piece_t;


void clear_board(board_t board);
piece_t create_piece(int piece_id);
void place_piece(piece_t piece_id, board_t board);
int drop_piece(piece_t *piece, board_t board);
int rotate(piece_t *piece, board_t board);

#endif
