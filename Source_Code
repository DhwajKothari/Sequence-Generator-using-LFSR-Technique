module Seq(input  clk,input  reset,output data);

reg [3:0] data;

wire feedback = (((!data[1])&data[2]&(!data[3])) | ((!data[0])&data[1]&(!data[2])&(!data[3])) | (data[0]&data[1]&(!data[2])&data[3]) | ((!data[0])&data[1]&data[2]&data[3]));

always @(posedge clk)
begin
  if (reset==1) 
    data <= 4'b1111;
  else
    data <= {data[2:0], feedback} ;
end
endmodule
