module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output[7:0]led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy, // AVR Rx buffer full

    output hsync,
    output vsync,

    output front_vram_rd_low,
    output front_vram_wr_low,

    output [12:0] front_vram_addr,
    inout [7:0] front_vram_data,

    output [12:0] back_vram_addr,
    inout [7:0] back_vram_data,
    output back_vram_rd_low,
    output back_vram_wr_low,

    input [15:0] cpu_addr,
    inout [7:0] cpu_data,
    input cpu_rd,
    input cpu_wr,
    input cpu_mreq,

    output [1:0] vga_red,
    output [1:0] vga_green,
    output [1:0] vga_blue
    );

wire rst = ~rst_n;
wire pclk;

clockdiv vga_clkdiv(
    .clk(clk),
    .clr(rst),
    .pclk(pclk)
    );

// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;
assign front_vram_rd_low = 1'bz;
assign back_vram_rd_low = 1'bz;
assign front_vram_wr_low = 1'bz;
assign back_vram_wr_low = 1'bz;
assign front_vram_addr = 13'bzzzzzzzzzzzzz;
assign back_vram_addr = 13'bzzzzzzzzzzzzz;

vga640x480 my_vga(
    .pclk(pclk),
    .clr(rst),
    .hsync(hsync),
    .vsync(vsync),
    .red(vga_red),
    .green(vga_green),
    .blue(vga_blue)
    );

endmodule