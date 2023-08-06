// Binary to gray code

module day10 (
input     wire          clk,
input     wire          reset,
input     wire          load_i,   
input     wire[3:0]     load_val_i,

output    wire[3:0]     count_o    
);

	logic [3:0] c;
	always_ff@(posedge clk or posedge reset)
	begin
		if(reset)
			c=0;
		else if(load_i)
			c= load_val_i;
		else if(c==4'b1111)
			c=load_val_i;
		else
			c=c+1;
	end  
assign count_o=c;

endmodule