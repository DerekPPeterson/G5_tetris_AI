/*
 * button_io.c
 *
 *  Created on: 2015-02-24
 *      Author: derek
 */

#include <xparameters.h>

volatile unsigned int * but5 = (unsigned int*) XPAR_AXI_5BUT_BASEADDR;

int state = 0;

void read_buttons()
{
	state = state | (*but5);
}

int centre_pressed()
{
	return state & 0x1;
}

int left_pressed()
{
	return state & 0x4;
}

int right_pressed()
{
	return state & 0x8;
}

void clear_pressed() {
	state = 0;
}
