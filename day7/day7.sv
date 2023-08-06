module day7(
input     wire      clk,
input     wire      reset,

output    wire[3:0] lfsr_o
);

logic [3:0]lfsr_o_ff;
always_ff@(posedge clk or posedge reset)
begin
if(reset)
begin
	lfsr_o_ff = 4'b1110;
end
else
begin
	lfsr_o_ff[3:0] = {lfsr_o_ff[2:0],(lfsr_o_ff[1]^lfsr_o_ff[3])};
end
end
assign lfsr_o = lfsr_o_ff;


endmodule