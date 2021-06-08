`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:02 02/02/2021
// Design Name:   ALU_32BIT
// Module Name:   C:/Users/HOME/Desktop/DRK college/ALU_32BIT/tb_alu.v
// Project Name:  ALU_32BIT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_32BIT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_alu;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [1:0] s;

	// Outputs
	wire [31:0] OUT;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ALU_32BIT uut (
		.A(A), 
		.B(B), 
		.s(s), 
		.OUT(OUT), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;A=14;B=23;S=0;
		#100;A=74;B=200;S=0;
		#100;A=1023;B=123;S=2;
		#100;A=140;B=213;S=1;
		#100;A=78;B=263;S=2;
		#100;A=96;B=523;S=1;
		#100;A=141;B=243;S=0;
        
		// Add stimulus here

	end
      
endmodule

