`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:25:24 06/06/2018
// Design Name:   clks
// Module Name:   /home/hh/ISE/Projects/hhhh/sim.v
// Project Name:  hhhh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clks
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sim;

	// Inputs
	reg clk;

	// Outputs
	wire clk_1MHz;
	wire clk_1KHz;
	wire clk_50Hz;

	// Instantiate the Unit Under Test (UUT)
	clks uut (
		.clk(clk), 
		.clk_1MHz(clk_1MHz), 
		.clk_1KHz(clk_1KHz), 
		.clk_50Hz(clk_50Hz)
	);
	
	always #20 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

