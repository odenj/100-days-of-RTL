module day6(
input     wire        clk,
input     wire        reset,
input     wire        x_i,

output    wire[3:0]   sr_o 
);

logic [3:0]sr_o_ff;
always_ff@(posedge clk or posedge reset)
begin
if(reset)
begin
	sr_o_ff = 0;
end
else
begin
	sr_o_ff[3:0] = {sr_o_ff[2:0],x_i};
end
end
assign sr_o = sr_o_ff;


endmodule