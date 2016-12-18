
NET "vga_red<0>" LOC = P50 | IOSTANDARD = LVTTL;
NET "vga_red<1>" LOC = P40 | IOSTANDARD = LVTTL;

NET "vga_green<0>" LOC = P34 | IOSTANDARD = LVTTL;
NET "vga_green<1>" LOC = P32 | IOSTANDARD = LVTTL;

NET "vga_blue<0>" LOC = P29 | IOSTANDARD = LVTTL;
NET "vga_blue<1>" LOC = P26 | IOSTANDARD = LVTTL;


module cpu_vreg(
	input wire clk,
	input wire copy_in_progress,
	input wire close_to_vlank,
	input wire cpu_rd,
	input wire cpu_wr,
	input wire cpu_mreq,
	input wire [15:0] cpu_addr,
	inout wire [7:0] cpu_data,
	output reg back_vram_wr_low,
	output reg back_vram_rd_low,
	output reg [12:0] back_vram_addr,
	output reg [7:0] back_vram_data
	);

reg vram_read;
assign cpu_data = (cpu_wr == 1 && cpu_rd == 0 && cpu_mreq == 0 && cpu_addr == 16'h92c0) ? copy_in_progress || close_to_vlank : 8'bzzzzzzzz;
assign cpu_data = vram_read ? back_vram_data : 8'bzzzzzzzz;

always @(posedge clk)
begin
	if(copy_in_progress == 0 && cpu_rd == 1 && cpu_wr == 0 && cpu_mreq == 0 && cpu_addr >= 16'h8000 && cpu_addr <= 16'h92bf) begin
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


module cpu_vreg(
	input wire clk,
	input wire copy_in_progress,
	input wire close_to_vlank,
	input wire cpu_rd,
	input wire cpu_wr,
	input wire cpu_mreq,
	input wire [15:0] cpu_addr,
	inout wire [7:0] cpu_data,
	output reg back_vram_wr_low,
	output reg back_vram_rd_low,
	output reg [12:0] back_vram_addr,
	output reg [7:0] back_vram_data
	);

assign cpu_data = (cpu_wr == 1 && cpu_rd == 0 && cpu_mreq == 0 && cpu_addr == 16'h92c0) ? copy_in_progress || close_to_vlank : 8'bzzzzzzzz;

always @(posedge clk)
begin
	if(copy_in_progress == 0 && cpu_rd == 1 && cpu_wr == 0 && cpu_mreq == 0 && cpu_addr >= 16'h8000 && cpu_addr <= 16'h92bf) begin
		back_vram_addr = cpu_addr[12:0];
		back_vram_data = cpu_data;
		back_vram_wr_low = 0;
	end	
	else begin
		back_vram_wr_low = 1;
		back_vram_addr = 13'bzzzzzzzzzzzzz;
		back_vram_data = 8'bzzzzzzzz;
	end
end

endmodule


reg is_busy_out;
assign cpu_data = is_busy_out ? 4 : 8'bzzzzzzzz;

always @(posedge cpu_clk) begin
	if(cpu_rd == 0 && cpu_mreq == 0 && cpu_addr >= 16'ha000) begin
		is_busy_out <= 1;
	end
	else begin
		is_busy_out <= 0;
	end
end

assign cpu_data = (cpu_wr == 1 && cpu_rd == 0 && cpu_mreq == 0 && cpu_addr >= 16'ha000) ? copy_in_progress : 8'bzzzzzzzz;


module cpu_vreg(
	input wire clk,
	input wire copy_in_progress,
	input wire cpu_rd,
	input wire cpu_wr,
	input wire cpu_mreq,
	input wire [15:0] cpu_addr,
	inout wire [7:0] cpu_data,
	output reg back_vram_wr_low,
	output reg [12:0] back_vram_addr,
	output reg [7:0] back_vram_data
	);

reg is_busy_out;
assign cpu_data = is_busy_out ? 4 : 8'bzzzzzzzz;

always @(posedge clk)
begin
	if(cpu_rd == 0 && cpu_mreq == 0 && cpu_addr >= 16'ha000) begin
		is_busy_out = 1;
	end
	else begin
		is_busy_out = 0;
	end

	if(copy_in_progress == 0 && cpu_wr == 0 && cpu_mreq == 0 && cpu_addr >= 16'h8000 && cpu_addr <= 16'h92bf) begin
		back_vram_addr = cpu_addr[12:0];
		back_vram_data = cpu_data;
		back_vram_wr_low = 0;
	end	
	else begin
		back_vram_wr_low = 1;
		back_vram_addr = 13'bzzzzzzzzzzzzz;
		back_vram_data = 8'bzzzzzzzz;
	end
end

endmodule


NET "cpu_clk" LOC = P95 | IOSTANDARD = LVTTL;
always @(negedge cpu_wr)
begin
	if(copy_in_progress == 0) begin
		if(cpu_mreq == 0 && cpu_addr >= 16'h8000) begin
				back_vram_addr = cpu_addr[12:0];
				back_vram_data = cpu_data;
				back_vram_wr_low = 0;
			end	
	end
	else begin
		back_vram_wr_low = 1;
		back_vram_addr = 13'bzzzzzzzzzzzzz;
		back_vram_data = 8'bzzzzzzzz;
	end
end
module cpu_vreg(
	input wire pclk,
	input wire copy_in_progress,
	input wire cpu_clk,
	input wire cpu_rd,
	input wire cpu_wr,
	input wire cpu_mreq,
	input wire [15:0] cpu_addr,
	inout wire [7:0] cpu_data,

	output reg back_vram_wr_low,

	output wire [12:0] back_vram_addr,
	output wire [7:0] back_vram_data
	);

reg [12:0] temp_vram_addr;
reg [12:0] temp_vram_data;

assign back_vram_addr = copy_in_progress ? 13'bzzzzzzzzzzzzz : temp_vram_addr;
assign back_vram_data = copy_in_progress ? 8'bzzzzzzzz : temp_vram_data;

always @(posedge cpu_clk)
begin
	if(copy_in_progress == 0) begin
		if(cpu_mreq == 0 && cpu_wr == 0) begin
				temp_vram_addr = cpu_addr - 16'h8000;
				temp_vram_data = cpu_data;
				back_vram_wr_low = 0;
			end	
	end
	else begin
		back_vram_wr_low = 1;
	end
end

endmodule


assign front_vram_addr = 12'bzzzzzzzzzzzzz;
assign front_vram_rd_low = 0;