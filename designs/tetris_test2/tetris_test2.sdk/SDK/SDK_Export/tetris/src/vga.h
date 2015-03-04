#ifndef VGA_H
#define VGA_h

// Width and height of the full vga area (including porches)
#define VGA_WIDTH 1024
#define VGA_HEIGHT 480

// Width and height of the displayed areas
#define VGA_DISPLAY_WIDTH 640
#define VGA_DISPLAY_HEIGHT 480


void draw_block(int xpos, int ypos);
void draw_rect(int x1, int y1, int x2, int y2, int colour);
void clear();
void clear_blocks();
void start_drawing();
void finish_drawing();

#endif