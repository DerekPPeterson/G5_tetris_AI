#include "tetrominoes.h"



// rotation tables for each tetronimoe
// use like: TETRONIMOES[piece_id][rotation][row]
int TETRONIMOES[N_TETRONIMOES][4][4] = {
    // piece_id = 0 -- I
    {
        {0x0, 0x0, 0xF, 0x0},
		{0x2, 0x2, 0x2, 0x2},
		{0x0, 0xF, 0x0, 0x0},
		{0x4, 0x4, 0x4, 0x4},
    },

    // piece_id = 1 -- J
    {
		{0x0, 0x0, 0x7, 0x4},
		{0x0, 0x2, 0x2, 0x3},
		{0x0, 0x1, 0x7, 0x0},
		{0x0, 0x6, 0x2, 0x2},
    }
};

void clear_board(board_t board)
{
	int i;
	for (i = 0; i < N_ROWS - 1; i++) {
		board[i] = 0;
	}
}

void place_piece(piece_t piece, board_t board)
{
    int i;
    for (i = 0; i < 4; i++) {
        board[piece.position.y + i]
              = board[piece.position.y + i]
              | (TETRONIMOES[piece.piece_id][piece.rotation][i] << piece.position.x);
    }
}

piece_t create_piece(int piece_id) {
	piece_t piece;

	piece.piece_id = piece_id;

	// Initial position is top centre
	piece.position.x = (N_COLS - 4) / 2;
	piece.position.y = N_ROWS - 4;

	piece.rotation = 0;

	clear_board(piece.board);
	place_piece(piece, piece.board);

	return piece;
}

int drop_piece(piece_t * piece, board_t board)
{
	int i;

    // Check if at bottom
    if (piece->board[0]) {
        return 0;
    }

	// check if there is another piece below
	for (i = 1; i < N_ROWS - 1; i++) {
		if (piece->board[i] & board[i - 1]) {
			return 0;
		}
	}

	piece->position.y -= 1;
	clear_board(piece->board);
	place_piece(*piece, piece->board);

	return 1;
}

int rotate(piece_t * piece, board_t board)
{
    int new_rotation = (piece->rotation + 1) % 4;
    int x = piece->position.x;
    int y = piece->position.y;

    int i, j;
    for (i = 0; i < 4; i++) {
        // Check if rotated underneath
        if ((y + i > N_ROWS - 1 || y + i < 0)
                && TETRONIMOES[piece->piece_id][new_rotation][i]) {
            return 0;
        }

        // Check if colliding with the side
        int mask = 1;
        for (j = 0; j < 4; j++) {
            if ((x + j < 0 || x + j > N_COLS - 1) && (mask & TETRONIMOES[piece->piece_id][new_rotation][i])) {
                return 0;
            }
            mask = mask << 1;
        }

        // Check if colliding with another piece
        if( board[y + i] & (TETRONIMOES[piece->piece_id][new_rotation][i]
               << x)) {

         return 0;
         }
     }
     piece->rotation = new_rotation;
     clear_board(piece->board);
     place_piece(*piece, piece->board);
     return 1;
}

