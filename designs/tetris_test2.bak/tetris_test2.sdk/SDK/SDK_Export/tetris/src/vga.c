#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "vga.h"

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
volatile unsigned int * vga_bufb = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR
		+ 0x200000;

// Draw a square with with white border around gray inside at the given position in the block grid
// lower left of block grid is 0, 0
// Acts on vga_buf
void draw_block(int xpos, int ypos) {
	int size = VGA_DISPLAY_HEIGHT / 20;
	int offset = (VGA_DISPLAY_WIDTH - size * 10) / 2;
	int x, y;

	// switch to match convention in tetris.c
	ypos = BLOCK_ROWS - ypos - 1;

	volatile unsigned int * pixel = vga_buf;
	for (y = 0; y < size; y++) {
		pixel = vga_buf + (size * ypos * VGA_WIDTH) + y * VGA_WIDTH + offset
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

// Draw a rectange into the current buffer
// x1,y1 first corner, x2,y2 second corner
// colour determines the colour to be drawn
void draw_rect(int x1, int y1, int x2, int y2, int colour) {
	int x, y;

	for (y = y1; y <= y2; y++) {
		for (x = x1; x <= x2; x++) {
			vga_buf[y * VGA_WIDTH + x] = colour;
		}
	}
}

// Draw a single digit on the screen
// d - the value to draw (0-9)
// x,y -- position of the upper right portion of the digit
// digits fit in a 8x14 rectangle
void draw_digit(int d, int x, int y)
{
	x = x - 8;
	int colour = 0xFFFF;
	switch (d) {
	case 0:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x, y+2, x + 1, y + 11, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		draw_rect(x+6, y+2, x + 7, y + 11, colour);
		break;
	case 1:
		draw_rect(x + 3, y, x + 4, y + 13, colour);
		break;
	case 2:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x+6, y+2, x + 7, y + 5, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		draw_rect(x, y+8, x + 1, y + 11, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		break;
	case 3:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x+2, y+6, x + 7, y + 7, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		draw_rect(x+6, y+2, x + 7, y + 11, colour);
		break;
	case 4:
		draw_rect(x, y+6, x + 7, y + 5, colour);
		draw_rect(x + 4, y, x + 5, y + 13, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		draw_rect(x, y, x + 1, y + 5, colour);
		break;
	case 5:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x, y+2, x + 1, y + 5, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		draw_rect(x + 6, y+8, x + 7, y + 11, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		break;
	case 6:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x, y+2, x + 1, y + 13, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		draw_rect(x + 6, y+8, x + 7, y + 11, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		break;
	case 7:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x+6, y+2, x + 7, y + 13, colour);
		break;
	case 8:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x, y+2, x + 1, y + 11, colour);
		draw_rect(x, y+12, x + 7, y + 13, colour);
		draw_rect(x+6, y+2, x + 7, y + 11, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		break;
	case 9:
		draw_rect(x, y, x + 7, y + 1, colour);
		draw_rect(x, y+2, x + 1, y + 5, colour);
		draw_rect(x, y+6, x + 7, y + 7, colour);
		draw_rect(x+6, y+2, x + 7, y + 13, colour);
		break;
	}
}

// Draw a number into the current buffer
// n - number to draw
// x, y - upper right portion of the number (eg 1231434* * - is the posiotn of x, y)
void draw_num(int n, int x, int y)
{
	int digit = n  % 10;
	draw_digit(digit, x, y);
	if (n / 10 == 0) return;
	draw_num(n / 10, x - 10, y);
}

// Clear the area occupied by the current block grid.
// Acts on vga_buf
void clear_blocks() {
	int size = VGA_DISPLAY_HEIGHT / 20;
	int offset = (VGA_DISPLAY_WIDTH - size * 10) / 2;
	int x, y;

	volatile unsigned int * pixel;
	for (y = 0; y < VGA_HEIGHT; y++) {
		pixel = vga_buf + VGA_WIDTH * y + offset;
		for (x = 0; x < size * BLOCK_COLS; x++) {
			*pixel = 0;
			pixel++;
		}
	}
}

// Clear vga_buf completely
void clear() {
	int x, y;
	volatile unsigned int * pixel;
	for (y = 0; y < VGA_HEIGHT; y++) {
		for (x = 0; x < VGA_WIDTH; x++) {
			*pixel = 0;
			pixel++;
		}
	}
}

// Call before drawing a frame
// swaps buffer after waiting for previous one
void start_drawing() {
	if (vga_buf == vga_bufa) {
		vga_buf = vga_bufb;
	} else {
		vga_buf = vga_bufa;
	}
}

// Pushes buffer to screen
void finish_drawing() {
	*vga = vga_buf;
	*vga_cntrl = 1;
	while (!(*vga_status)) {}
}
