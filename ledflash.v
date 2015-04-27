module ledflash (Clock, Reset, led);
  input wire Clock, Reset;
  output reg [7:0] led;

  reg [26:0] clk_counter;
  wire [4:0] light_state;
  
  assign light_state = clk_counter[26:23];
  
  always @(posedge Clock)
  begin
    if (!Reset)
    begin
      clk_counter <= 'd0;
    end
    else
      clk_counter <= clk_counter + 1'd1;
  end

  always @(posedge Clock)
  begin
    if (light_state & 4'b1000)
      led = ~(8'd1 << (light_state[2:0]));
    else
      led = ~(8'd128 >> light_state[2:0]);
  end
  
endmodule

module ledflash_test;

reg clock;
reg reset;
wire [7:0] led;

initial begin
  $monitor("clock=%b,led=%d", clock, led);
  clock = 0;
  reset = 0;
  #20 $finish;
end

initial begin
#5 clock = !clock;
end

ledflash F0 (
.Clock(clock),
.Reset(reset),
.led(led));

endmodule
