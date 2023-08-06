// Binary to gray code

module day14 #(
  parameter NUM_PORTS = 4
)(
    input       wire[NUM_PORTS-1:0] req_i,
    output      wire[NUM_PORTS-1:0] gnt_o   // One-hot grant signal
);


logic [NUM_PORTS:0] i;
initial
begin
	for(i=0;i<NUM_PORTS;i=i+1)
	begin
		if(req_i[i] == 1'b1)
		begin
			break;
		end
		

	end
end
assign gnt_o= 1<<i;


endmodule