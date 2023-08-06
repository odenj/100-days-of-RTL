// Simple edge detector TB

module day5_tb ();
logic       clk;
logic       reset;
logic[7:0]  cnt_o;

  day5 DAY5 (.*);

  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

  // Stimulus
  initial begin
    reset <= 1'b1;
    
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i=0; i<32; i++) begin

      @(posedge clk);
  
	end
    $finish();
  end

  // Dump VCD
  initial begin
    $dumpfile("day5.vcd");
    $dumpvars(0, day5_tb);
  end

endmodule