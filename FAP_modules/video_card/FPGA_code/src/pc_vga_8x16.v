/*
 * This file implements a Character ROM for translating ASCII
 * character codes into 8x16 pixel image.
 *
 * The input to the module is:
 *  1) 8 bit ASCII code,
 *  2) column select, 0..7, which indicates which of the 8 pixels of the character
 *     image will be returned
 *  3) row select, 0..15, which indicates which of the 16 rows of pixels of the character
 *     image will be returned
 */

module pc_vga_8x16 (
	input	clk,
	input	[2:0]	col,
	input	[3:0]	row,
	input	[7:0]	ascii,
	output	pixel
);

wire  pixel_row_00_7f;
wire  pixel_row_80_ff;

// Instances
pc_vga_8x16_00_7F U1 (clk, ascii[6:0], row, col, pixel_row_00_7f);
pc_vga_8x16_80_FF U2 (clk, ascii[6:0], row, col, pixel_row_80_ff);

assign pixel = ( ascii[7] == 0) ? pixel_row_00_7f : pixel_row_80_ff;

endmodule 
