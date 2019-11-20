module Test_SeqGen;
 // Inputs
 reg clk;
 reg reset;
 // Outputs
 wire data;
 // Instantiate the Unit Under Test (UUT)
 Seq uut (
  .clk(clk), 
  .reset(reset), 
  .data(data)
 );
 initial begin
  // Initialize Inputs
  clk = 0;
  reset = 1;
  #20 reset=0;
  
 end
 always begin
  #5 clk = ~clk;
 end    
endmodule
