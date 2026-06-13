`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:20:23 PM
// Design Name: 
// Module Name: ALU_test
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


module ALU_test;
reg [31:0] A;
reg [31:0] B;
reg [3:0] ALU_c;
wire [31:0] result;
wire zero;
ALU uut(.A(A),.B(B),.ALU_c(ALU_c),.result(result),.zero(zero));
initial begin
    A = 10;
    B = 5;
    ALU_c = 4'b0010;
    #10;
    A = 10;
    B = 10;
    ALU_c = 4'b0110;
    #10;
    A = 12;
    B = 10;
    ALU_c = 4'b0000;
    #10;
    A = 12;
    B = 10;
    ALU_c = 4'b0001;
    #10;
    A = 5;
    B = 10;
    ALU_c = 4'b0111;
    #10;
$finish;
end
endmodule
