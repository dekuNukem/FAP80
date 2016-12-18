module spi_slave(
    input clk,
    input rst,
    input ss,
    input mosi,
    output miso,
    input sck,
    output done,
    input [7:0] din,
    output [7:0] dout
    );

reg mosi_d, mosi_q;
reg ss_d, ss_q;
reg sck_d, sck_q;
reg sck_old_d, sck_old_q;
reg [7:0] data_d, data_q;
reg done_d, done_q;
reg [2:0] bit_ct_d, bit_ct_q;
reg [7:0] dout_d, dout_q;
reg miso_d, miso_q;

assign miso = miso_q;
assign done = done_q;
assign dout = dout_q;

always @(*) begin
    ss_d = ss;
    mosi_d = mosi;
    miso_d = miso_q;
    sck_d = sck;
    sck_old_d = sck_q;
    data_d = data_q;
    done_d = 1'b0;
    bit_ct_d = bit_ct_q;
    dout_d = dout_q;

    if (ss_q) begin
        bit_ct_d = 3'b0;
        data_d = din;
        miso_d = data_q[7];
    end else begin
        if (!sck_old_q && sck_q) begin // rising edge
            data_d = {data_q[6:0], mosi_q};
            bit_ct_d = bit_ct_q + 1'b1;
            if (bit_ct_q == 3'b111) begin
                dout_d = {data_q[6:0], mosi_q};
                done_d = 1'b1;
                data_d = din;
            end
        end else if (sck_old_q && !sck_q) begin // falling edge
            miso_d = data_q[7];
        end
    end
end

always @(posedge clk) begin
    if (rst) begin
        done_q <= 1'b0;
        bit_ct_q <= 3'b0;
        dout_q <= 8'b0;
        miso_q <= 1'b1;
    end else begin
        done_q <= done_d;
        bit_ct_q <= bit_ct_d;
        dout_q <= dout_d;
        miso_q <= miso_d;
    end

    sck_q <= sck_d;
    mosi_q <= mosi_d;
    ss_q <= ss_d;
    data_q <= data_d;
    sck_old_q <= sck_old_d;

end


endmodule
