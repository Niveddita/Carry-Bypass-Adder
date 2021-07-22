`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 16:48:06
// Design Name: 
// Module Name: Ripple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ripple(A,B,S,cin,Cout);
input [3:0]A,B;
input cin;
output [3:0]S;
output reg Cout;
wire y1,y2,y3,y;
Fulladder u1(A[0],B[0],cin,S[0],y1);
Fulladder u2(A[1],B[1],y1,S[1],y2);
Fulladder u3(A[2],B[2],y2,S[2],y3);
Fulladder u4(A[3],B[3],y3,S[3],y);

wire p0,p1,p2,p3,p;
    xor(p0,A[0],B[0]);
    xor(p1,A[1],B[1]);
    xor(p2,A[2],B[2]);
    xor(p3,A[3],B[3]);
    and(p,p0,p1,p2,p3);
 always@(*)
 begin
    case(p)
    1: Cout=cin;
    0: Cout=y;
   endcase
   end
endmodule


