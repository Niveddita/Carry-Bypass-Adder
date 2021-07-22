`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 15:30:11
// Design Name: 
// Module Name: carryby_tb
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


module carryby_tb(
    );
    reg [3:0] A1,B1;
    reg cin1;
    wire [3:0] S1;
    wire Cout1;
    Ripple uut(.A(A1),.B(B1),.cin(cin1),.S(S1),.Cout(Cout1));
    initial 
    begin
    A1=4'b1100;B1=4'b0011;cin1=1'b1;#20;
    A1=4'b1100;B1=4'b0011;cin1=1'b0;#20;
    $finish;
    end
endmodule
