`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:25 02/02/2021 
// Design Name: 
// Module Name:    ALU_32BIT 
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
module ALU_32BIT(
    input [31:0] A,B,
	 input [1:0]s,
    output [31:0] OUT,
	 output cout
    );


ALU_4BIT    a1 (A[3:0],B[3:0],s[1:0],1'b0,OUT[3:0],c1);

ALU_4BIT    a2(A[7:4],B[7:4],s[1:0], c1, OUT[7:4],c2);

ALU_4BIT    a3(A[11:8],B[11:8],s[1:0],c2, OUT[11:8],c3);

ALU_4BIT    a4(A[15:12],B[15:12],s[1:0],c3,OUT[15:12],c4);

ALU_4BIT    a5(A[19:16],B[19:16],s[1:0],c4,OUT[19:16],c5);

ALU_4BIT    a6(A[23:20],B[23:20],s[1:0],c5,OUT[23:20],c6);

ALU_4BIT    a7(A[27:24],B[27:24],s[1:0],c6,OUT[27:24],c7);

ALU_4BIT    a8(A[31:28],B[31:28],s[1:0],c7,OUT[31:28],cout);

endmodule
