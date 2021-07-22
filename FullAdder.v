`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 16:44:12
// Design Name: 
// Module Name: FullAdder
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


module Fulladder(A,B,cin,S,Cout);
    input A;
    input B;
    input cin;
    output S;
    output Cout;
    wire ab,bc,ca;
    xor(S,A,B,cin);
    and(ab,A,B);
    and(bc,B,cin);
    and(ca,cin,A);
    or(Cout,ab,bc,ca);
endmodule
