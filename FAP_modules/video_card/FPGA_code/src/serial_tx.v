module serial_tx #(
        parameter CLK_PER_BIT = 50
    )(
        input clk,
        input rst,
        output tx,
        input block,
        output busy,
        input [7:0] data,
        input new_data
    );

    // clog2 is 'ceiling of log base 2' which gives you the number of bits needed to store a value
    parameter CTR_SIZE = $clog2(CLK_PER_BIT);

    localparam STATE_SIZE = 2;
    localparam IDLE = 2'd0,
    START_BIT = 2'd1,
    DATA = 2'd2,
    STOP_BIT = 2'd3;

    reg [CTR_SIZE-1:0] ctr_d, ctr_q;
    reg [2:0] bit_ctr_d, bit_ctr_q;
    reg [7:0] data_d, data_q;
    reg [STATE_SIZE-1:0] state_d, state_q = IDLE;
    reg tx_d, tx_q;
    reg busy_d, busy_q;
    reg block_d, block_q;

    assign tx = tx_q;
    assign busy = busy_q;

    always @(*) begin
        block_d = block;
        ctr_d = ctr_q;
        bit_ctr_d = bit_ctr_q;
        data_d = data_q;
        state_d = state_q;
        busy_d = busy_q;

        case (state_q)
            IDLE: begin
                if (block_q) begin
                    busy_d = 1'b1;
                    tx_d = 1'b1;
                end else begin
                    busy_d = 1'b0;
                    tx_d = 1'b1;
                    bit_ctr_d = 3'b0;
                    ctr_d = 1'b0;
                    if (new_data) begin
                        data_d = data;
                        state_d = START_BIT;
                        busy_d = 1'b1;
                    end
                end
            end
            START_BIT: begin
                busy_d = 1'b1;
                ctr_d = ctr_q + 1'b1;
                tx_d = 1'b0;
                if (ctr_q == CLK_PER_BIT - 1) begin
                    ctr_d = 1'b0;
                    state_d = DATA;
                end
            end
            DATA: begin
                busy_d = 1'b1;
                tx_d = data_q[bit_ctr_q];
                ctr_d = ctr_q + 1'b1;
                if (ctr_q == CLK_PER_BIT - 1) begin
                    ctr_d = 1'b0;
                    bit_ctr_d = bit_ctr_q + 1'b1;
                    if (bit_ctr_q == 7) begin
                        state_d = STOP_BIT;
                    end
                end
            end
            STOP_BIT: begin
                busy_d = 1'b1;
                tx_d = 1'b1;
                ctr_d = ctr_q + 1'b1;
                if (ctr_q == CLK_PER_BIT - 1) begin
                    state_d = IDLE;
                end
            end
            default: begin
                state_d = IDLE;
            end
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            state_q <= IDLE;
            tx_q <= 1'b1;
        end else begin
            state_q <= state_d;
            tx_q <= tx_d;
        end

        block_q <= block_d;
        data_q <= data_d;
        bit_ctr_q <= bit_ctr_d;
        ctr_q <= ctr_d;
        busy_q <= busy_d;
    end

endmodule