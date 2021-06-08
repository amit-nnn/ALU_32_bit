`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:54 01/29/2021 
// Design Name: 
// Module Name:    ALU_4BIT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_4BIT(
    input [3:0] A,B,
	 input  [1:0]s,
	 input cin,
    output [3:0] Y,
    output cout
    );

ALU_1BIT  ALU1 (A[0],B[0],cin,s[1:0],Y[0],c0);
ALU_1BIT  ALU2 (A[1],B[1],c0,s[1:0],  Y[1],c1);
ALU_1BIT  ALU3 (A[2],B[2],c1,s[1:0],  Y[2],c2);
ALU_1BIT  ALU4 (A[3],B[3],c2,s[1:0],  Y[3],cout);
endmodule
