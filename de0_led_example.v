module de0_led_example(

	input 		          		FPGA_CLK1_50,
	input 		          		FPGA_CLK2_50,
	input 		          		FPGA_CLK3_50,
	input 		     [1:0]		KEY,
	output		     [7:0]		LED,
	input 		     [3:0]		SW
);

// internal reset
wire reset;

// 34 bit ~ 8 bit + log( 50e6 )
// The most sigificant 8 bit will be used as output, which is updated
// every 1.34 (2^26/50e6) seconds if SW = 4'b0001
reg [33:0] cnt;


// create high-active reset from both low-active inputs 
assign reset = ~&KEY;

// assign the 8 MSBs from counter to the LED
assign LED   = cnt[33:26];


always @(posedge FPGA_CLK1_50)
  if( reset ) begin
    cnt <= 0;
  end else begin
    cnt <= cnt + SW;
  end
endmodule
