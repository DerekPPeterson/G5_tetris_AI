#include <stdlib.h>
#include <stdio.h>

#define N_ROWS 20
#define N_COLS 10
#define CYCLES_PER_STEP 1000

// given a pointer to a board array, set each int to 0
void clear_board(int * board)
{
    int i;
    for (i = 0; i < N_ROWS; i++) {
        board[i] = 0;
    }
}

// given the pointer to the current piece board, clear it and add a random
// piece at the top. return the id of the piece created
int add_piece(int * cur_piece) {
    int piece_id = rand() % 7;

    clear_board(cur_piece);

    int new_rows[4];
    
    switch (piece_id) {
        // line
        case 0:
            new_rows[0] = 0x10;
            new_rows[1] = 0x10;
            new_rows[2] = 0x10;
            new_rows[3] = 0x10;
            break;
        // left L
        case 1:
            new_rows[0] = 0x10;
            new_rows[1] = 0x10;
            new_rows[2] = 0x30;
            new_rows[3] = 0x00;
            break;
        // right L
        case 2:
            new_rows[0] = 0x10;
            new_rows[1] = 0x10;
            new_rows[2] = 0x18;
            new_rows[3] = 0x00;
            break;
        // S
        case 3:
            new_rows[0] = 0x10;
            new_rows[1] = 0x30;
            new_rows[2] = 0x20;
            new_rows[3] = 0x00;
            break;
        // Z
        case 4:
            new_rows[0] = 0x20;
            new_rows[1] = 0x30;
            new_rows[2] = 0x10;
            new_rows[3] = 0x00;
            break;
        // box
        case 5:
            new_rows[0] = 0x30;
            new_rows[1] = 0x30;
            new_rows[2] = 0x00;
            new_rows[3] = 0x00;
            break;
        // T
        case 6:
            new_rows[0] = 0x10;
            new_rows[1] = 0x30;
            new_rows[2] = 0x10;
            new_rows[3] = 0x00;
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
int drop_piece(int * cur_piece, int * board)
{
    // the piece is at the bottom already
    if (cur_piece[0]) {
        return 0;
    }
    
    int i;
    for (i = 0; i < N_ROWS - 1; i++) {
        // the piece is blocked by another piece
        if (cur_piece[i] & board[i-1]) {
            return 0;
        }
    }
    for (i = 0; i < N_ROWS - 1; i++) {
        cur_piece[i] = cur_piece[i + 1];
    }



    cur_piece[N_ROWS - 1] = 0;

    return 1;
}

int shift_left(int *cur_piece, int * board)
{
    int i;
    for (i = 0; i < N_ROWS; i++) {
        if (cur_piece[i] & 0x1) {
            return 0;
        }
    }
    for (i = 0; i < N_ROWS; i++) {
        cur_piece[i] = cur_piece[i] >> 1;
    }
    return 1;
}

// and the bitmaps together
void place_piece(int * cur_piece, int * board)
{
    int i;
    for (i = 0; i < N_ROWS; i++)
    {
        board[i] = board[i] | cur_piece[i];
    }
}

int print_binary(int n) {
    int i;
    int mask = 1;
    for (i = 0; i < N_COLS; i++) {
        if (mask & n) {
            printf("X");
        } else {
            printf(" ");
        }
        mask = mask << 1;
    }
    printf("\n");
}

int print_board(int * board)
{
    int i;
    for (i = N_ROWS - 1; i >= 0; i--) {
        print_binary(board[i]);
    }
}

int main(void)
{
    srand(time(NULL)); // TODO can use on microblaze?
    int board[20];
    int cur_piece[20];
    int display_board[20];

    clear_board(board);

    int game_over = 0;
    add_piece(cur_piece);
    while (!game_over) {
        system("clear");
        shift_left(cur_piece, board);
        if (!drop_piece(cur_piece, board)) {
            place_piece(cur_piece, board);
            add_piece(cur_piece);
        }

        // TODO printing not useful on microblaze
        clear_board(display_board);
        place_piece(board, display_board);
        place_piece(cur_piece, display_board);
        print_board(display_board);
        usleep(100000);
    }

    return 0;
}

