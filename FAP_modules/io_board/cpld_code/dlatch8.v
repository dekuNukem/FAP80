module dlatch8(
	input wire [7:0] data, 
	input wire LE_H,
	input wire OE_L,
	output reg [7:0] q
	);

reg [7:0] q_internal;

always @ (LE_H or OE_L)

if (OE_L == 0 && LE_H == 0) begin
	q <= q_internal;
end

else if (OE_L == 0 && LE_H == 1) begin
	q_internal <= data;
	q <= q_internal;
end

else if (OE_L == 1 && LE_H == 0) begin
	q <= 8'bzzzzzzzz;
end

else begin
	q <= 8'bzzzzzzzz;
	q_internal <= data;
end

endmodule