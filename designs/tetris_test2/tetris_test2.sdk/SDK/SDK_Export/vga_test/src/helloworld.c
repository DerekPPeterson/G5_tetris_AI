/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"

#define WIDTH 1024
#define HEIGHT 480

#define DISPLAY_WIDTH 640
#define DISPLAY_HEIGHT 480

volatile unsigned int * ddr = (unsigned int*) XPAR_MIG_7SERIES_0_BASEADDR;
volatile unsigned int * vga =
		(unsigned int*) XPAR_AXI_TFT_0_DEFAULT_TFT_BASE_ADDR;

void draw_block(int xpos, int ypos, volatile unsigned int * vga_buf) {
	int size = DISPLAY_HEIGHT / 20;
	int offset = (DISPLAY_WIDTH - size * 10) / 2;
	int x, y;

	volatile unsigned int * pixel = vga_buf;
	for (y = 0; y < size; y++) {
		pixel = vga_buf + (size * ypos * WIDTH) + y * WIDTH + offset + (size * xpos);
		for (x = 0; x < size; x++) {
			*pixel = 0xFFFFFF;
			pixel++;
		}
	}
}

void clear(volatile unsigned int * vga_buf) {

	int x, y;

	volatile unsigned int * pixel = vga_buf;
	for (y = 0; y < HEIGHT + 100; y++) {
		for (x = 0; x < WIDTH; x++) {
			*pixel = 0;
			pixel++;
		}
	}
}

int main() {
	init_platform();

	volatile unsigned int * video_data = ddr;
	volatile unsigned int * pixel = video_data;
	volatile unsigned int * vga_cntrl = vga;
	*vga = video_data;

	*vga_cntrl = 0;
	int x, y;
	for (y = 0; y < HEIGHT + 100; y++) {
		for (x = 0; x < WIDTH; x++) {
			if (y > HEIGHT) {
				*pixel = 0xFFFF0F;
			} else if (x < 600 && x > 100) {
				*pixel = 0xFFFFFF;
			} else {
				*pixel = 0;
			}
			pixel++;
		}
	}

	clear(video_data);
	draw_block(0, 0, video_data);
	draw_block(9, 0, video_data);
	draw_block(0, 19, video_data);
	draw_block(9, 19, video_data);

	*vga_cntrl = 1;

	return 0;
}
