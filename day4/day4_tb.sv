// Simple edge detector TB

module day4_tb ();
logic [7:0]   a_i;
logic [7:0]   b_i;
logic [2:0]   op_i; 
logic [7:0]   alu_o;

  day4 DAY4 (.*);



  // Stimulus
  initial begin

    for (int i=0; i<32; i++) begin
      a_i   = $urandom_range (0, 8'hFF);
 	b_i   = $urandom_range (0, 8'hFF);
 op_i   = i%8;
     #5;
    end
    $finish();
  end

  // Dump VCD
  initial begin
    $dumpfile("day4.vcd");
    $dumpvars(0, day4_tb);
  end

endmodule