`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:43 01/29/2021 
// Design Name: 
// Module Name:    FA 
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
module FA(
    input A,B,C,
    output SUM,CARRY
    );


HA H1(A,B, W1,W2); 
HA H2(W1,C,SUM,W3);

or o1(CARRY,W2,W3); 



endmodule
