`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:42 01/29/2021 
// Design Name: 
// Module Name:    ALU_1BIT 
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
module ALU_1BIT(
    input A,B,C,
	  input [1:0]s,
    output Y,COUT
    );

FA  f1 (A,B,C,Y0,COUT);

AND A1 (A,B,Y1);
OR  O1 (A,B,Y2);
assign Y3=A;  // buffer 

 // ASSIGN Y = S1 ? TRUE     : FALSE 
 
 // ASSIGN Y = S1 ? (S0? TRUE :FALSE) :(S0? TRUE :FALSE);
//         Y = S1 ?    1              :   0

    /*     // operation for ALU 
	    
		         S1 S0     OPERTION    OPERATION OUT
                0  0        FA    			Y0		
		          0  1         AND          Y1
					 1  0         OR           Y2
					 1  1        BUFFER        Y3
		
		 
	 
	 
	 
	 */


assign Y = s[1] ? (s[0]?Y3:Y2) : (s[0]?Y1:Y0);


endmodule
