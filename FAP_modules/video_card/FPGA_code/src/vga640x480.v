`timescale 1ns / 1ps

module vga640x480(
	input wire clk50,
	input wire pclk,			//pixel clock: 25MHz
	input wire clr,			//asynchronous reset
	output wire hsync,		//horizontal sync out
	output wire vsync,		//vertical sync out
	output wire vblank,

	output reg [12:0] front_vram_addr,
	inout wire [7:0] front_vram_data,
	output reg front_vram_rd_low,

	output reg [1:0] red,	//red vga output
	output reg [1:0] green, //green vga output
	output reg [1:0] blue	//blue vga output
	);

// video structure constants
parameter hpixels = 800;// horizontal pixels per line
parameter vlines = 521; // vertical lines per frame
parameter hpulse = 96; 	// hsync pulse length
parameter vpulse = 2; 	// vsync pulse length
parameter hbp = 144; 	// end of horizontal back porch
parameter hfp = 784; 	// beginning of horizontal front porch
parameter vbp = 31; 		// end of vertical back porch
parameter vfp = 511; 	// beginning of vertical front porch
// active horizontal video is therefore: 784 - 144 = 640
// active vertical video is therefore: 511 - 31 = 480

// registers for storing the horizontal & vertical counters
reg [9:0] hc;
reg [9:0] vc;
reg [9:0] hpos;
reg [9:0] vpos;
reg [2:0] hdot;
reg [3:0] vdot;
reg [6:0] hchar;
reg [5:0] vchar;
wire font_pixel;
reg fetch_attribute;
reg [7:0] char_data;
reg [7:0] attribute_data;

// Horizontal & vertical counters --
// this is how we keep track of where we are on the screen.
// ------------------------
// Sequential "always block", which is a block that is
// only triggered on signal transitions or "edges".
// posedge = rising edge  &  negedge = falling edge
// Assignment statements can only be used on type "reg" and need to be of the "non-blocking" type: <=
always @(posedge pclk or posedge clr)
begin
	// reset condition
	if (clr == 1)
	begin
		hc <= 0;
		vc <= 0;
	end
	else
	begin
		// keep counting until the end of the line
		if (hc < hpixels - 1)
			hc <= hc + 1;
		else
		// When we hit the end of the line, reset the horizontal
		// counter and increment the vertical counter.
		// If vertical counter is at the end of the frame, then
		// reset that one too.
		begin
			hc <= 0;
			if (vc < vlines - 1)
				vc <= vc + 1;
			else
				vc <= 0;
		end
	end
end

assign hsync = (hc < hpulse) ? 0:1;
assign vsync = (vc < vpulse) ? 0:1;
assign vblank = (vc >= vbp && vc < vfp) ? 0:1;

pc_vga_8x16 char_rom(
	.clk(clk50),
	.col(hdot),
	.row(vdot),
	.ascii(char_data),
	.pixel(font_pixel)
	);

always @(posedge clk50)
begin
	// inside active region
	if ((vc >= vbp && vc < vfp) && (hc >= hbp && hc < hfp))
	begin
		front_vram_rd_low = 0;
		hpos = hc - hbp;
		vpos = vc - vbp;
		hdot = hpos[2:0];
		vdot = vpos[3:0];
		hchar = hpos[9:3];
		vchar = vpos[9:4];
		if (fetch_attribute) begin
			front_vram_addr = 80 * vchar + hchar;
			attribute_data = front_vram_data;
		end
		else begin
			front_vram_addr = 80 * vchar + hchar + 2400;
			char_data = front_vram_data;
		end
		fetch_attribute = ~fetch_attribute;
		red = font_pixel ? attribute_data[5:4] : 0;
		green = font_pixel ? attribute_data[3:2] : 0;
		blue = font_pixel ? attribute_data[1:0] : 0;
	end
	//  outside active region
	else
	begin
		fetch_attribute = 1;
		front_vram_rd_low = 1;
		front_vram_addr = 13'bzzzzzzzzzzzz;
		red = 0;
		green = 0;
		blue = 0;
	end
end


endmodule
