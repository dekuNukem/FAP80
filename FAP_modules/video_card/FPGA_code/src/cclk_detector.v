module cclk_detector #(
    parameter CLK_RATE = 50000000
    )(
    input clk,
    input rst,
    input cclk,
    output ready
);

    parameter CTR_SIZE = $clog2(CLK_RATE/50000);

    reg [CTR_SIZE-1:0] ctr_d, ctr_q;
    reg ready_d, ready_q;

    assign ready = ready_q;

    // ready should only go high once cclk has been high for a while
    // if cclk ever falls, ready should go low again
    always @(ctr_q or cclk) begin
        ready_d = 1'b0;
        if (cclk == 1'b0) begin // when cclk is 0 reset the counter
            ctr_d = 1'b0;
        end else if (ctr_q != {CTR_SIZE{1'b1}}) begin
            ctr_d = ctr_q + 1'b1; // counter isn't max value yet
        end else begin
            ctr_d = ctr_q;
            ready_d = 1'b1; // counter reached the max, we are ready
        end

    end

    always @(posedge clk) begin
        if (rst) begin
            ctr_q <= 1'b0;
            ready_q <= 1'b0;
        end else begin
            ctr_q <= ctr_d;
            ready_q <= ready_d;
        end
    end
endmodule
