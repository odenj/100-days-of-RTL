
module day9 #(
  parameter VEC_W = 4
)(
  input     wire[VEC_W-1:0] bin_i,
  output    wire[VEC_W-1:0] gray_o
);


genvar i;
for(i=1;i<VEC_W;i=i+1)
begin
	assign gray_o[0]=bin_i[0];
	assign gray_o[i]=bin_i[i] ^ bin_i[i-1];
end


endmodule