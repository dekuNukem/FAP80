
module cpu_vreg(
	input wire clk,
	input wire copy_in_progress,
	input wire cpu_rd,
	input wire cpu_wr,
	input wire cpu_mreq,
	output reg [7:0] copy_enable,
	input wire [15:0] cpu_addr,
	inout wire [7:0] cpu_data,
	output reg back_vram_wr_low,
	output reg back_vram_rd_low,
	output reg [12:0] back_vram_addr,
	output reg [7:0] back_vram_data
	);

reg vram_read;
assign cpu_data = vram_read ? back_vram_data : 8'bzzzzzzzz;

always @(posedge clk)
begin
	if(cpu_rd == 1 && cpu_wr == 0 && cpu_mreq == 0 && cpu_addr == 16'h92c1) begin
		copy_enable = cpu_data;
	end
	else if(copy_in_progress == 0 && cpu_rd == 1 && cpu_wr == 0 && cpu_mreq == 0 && cpu_addr >= 16'h8000 && cpu_addr <= 16'h92bf) begin
		back_vram_addr = cpu_addr[12:0];
		back_vram_data = cpu_data;
		back_vram_wr_low = 0;
		vram_read = 0;
	end
	else if(copy_in_progress == 0 && cpu_rd == 0 && cpu_wr == 1 && cpu_mreq == 0 && cpu_addr >= 16'h8000 && cpu_addr <= 16'h92bf) begin
		back_vram_addr = cpu_addr[12:0];
		back_vram_rd_low = 0;
		vram_read = 1;
	end
	else begin
		back_vram_wr_low = 1;
		back_vram_addr = 13'bzzzzzzzzzzzzz;
		back_vram_data = 8'bzzzzzzzz;
		back_vram_rd_low = 1'bz;
		vram_read = 0;
	end
end

endmodule

