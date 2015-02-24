#include <stdio.h>
#include "platform.h"
#include "xparameters.h"

// Width and height of the full vga area (including porches)
#define WIDTH 1024
#define HEIGHT 480

// Width and height of the displayed areas
#define DISPLAY_WIDTH 640
#define DISPLAY_HEIGHT 480

// Used by draw block, the block grid that will be drawn for tetris pieces
#define BLOCK_ROWS 20
#define BLOCK_COLS 10

// VGA TFT module control register addresses
volatile unsigned int * vga = (unsigned int*) XPAR_AXI_TFT_0_BASEADDR;
volatile unsigned int * vga_cntrl = (unsigned int*) XPAR_AXI_TFT_0_BASEADDR + 1;
volatile unsigned int * vga_status = (unsigned int*) XPAR_AXI_TFT_0_BASEADDR + 2;

// DDR addresses and space allocated as display buffer space
volatile unsigned int * ddr = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
volatile unsigned int * vga_buf = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
volatile unsigned int * vga_bufa = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
volatile unsigned int * vga_bufb = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR + 0x100000;

// Draw a square with with white border around gray inside at the given position in the block grid
// lower left of block grid is 0, 0
// Acts on vga_buf
void draw_block(int xpos, int ypos) {
	int size = DISPLAY_HEIGHT / 20;
	int offset = (DISPLAY_WIDTH - size * 10) / 2;
	int x, y;

	// switch to match convention in tetris.c
	ypos = BLOCK_ROWS - ypos - 1;

	volatile unsigned int * pixel = vga_buf;
	for (y = 0; y < size; y++) {
		pixel = vga_buf + (size * ypos * WIDTH) + y * WIDTH + offset
				+ (size * xpos);
		for (x = 0; x < size; x++) {
			if ((x > 2 && x < size - 3) && (y > 2 && y < size - 3)) {
				*pixel = 0x888888;
			} else {
				*pixel = 0xFFFFFF;
			}
			pixel++;
		}
	}
}

// Clear the area occupied by the current block grid.
// Acts on vga_buf
void clear() {
	int size = DISPLAY_HEIGHT / 20;
	int x, y;

	volatile unsigned int * pixel = vga_buf;
	for (y = 0; y < HEIGHT; y++) {
		for (x = 0; x < WIDTH; x++) {
			*pixel = 0;
			pixel++;
		}
	}
}

// Call before drawing a frame
// swaps buffer and clears
void start_drawing() {
	if (vga_buf == vga_bufa) {
		vga_buf = vga_bufb;
	} else {
		vga_buf = vga_bufa;
	}
	clear();
}

// Pushes buffer to screen and waits for it to draw
void finish_drawing() {
	*vga = vga_buf;
	while (!(*vga_status)) {}
}
