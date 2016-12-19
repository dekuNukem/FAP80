
module buffer_copier(
	input wire clk,
	input wire vblank,
	output reg front_vram_wr_low,
	output reg back_vram_rd_low,
	output reg copy_in_progress,
	input wire [7:0] copy_enable,
	inout wire [7:0] front_vram_data,
	inout wire [7:0] back_vram_data,
	output wire [12:0] front_vram_addr,
	output wire [12:0] back_vram_addr
	);

reg [12:0] counter;

assign front_vram_data = copy_in_progress ? back_vram_data : 8'bzzzzzzzz;

always @(posedge clk)
begin
	if (vblank == 0) begin
		back_vram_rd_low <= 1'bz;
		front_vram_wr_low <= 1;
		copy_in_progress <= 0;
		counter <= 0;
	end
	else if (copy_enable && counter <= 4800) begin
		back_vram_rd_low <= 0;
		front_vram_wr_low <= 0;
		copy_in_progress <= 1;
		counter <= counter + 1;
	end
	else begin
		copy_in_progress <= 0;
		back_vram_rd_low <= 1'bz;
		front_vram_wr_low <= 1;
		counter <= 0;
	end
end

assign back_vram_addr = copy_in_progress ? counter : 13'bzzzzzzzzzzzzz;
assign front_vram_addr = copy_in_progress ? counter : 13'bzzzzzzzzzzzzz;

endmodule
