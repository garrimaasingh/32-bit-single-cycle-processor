`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 09:48:19 AM
// Design Name: 
// Module Name: ALU_ctest
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


module ALU_ctest;
reg [1:0] ALUop;
reg [5:0]funct;
wire [3:0]ALU_c;
ALU_control utt(.ALUop(ALUop),.funct(funct),.ALU_c(ALU_c));
initial begin
ALUop = 2'b00;
funct =6'b000000;
#10;
ALUop = 2'b01;
#10;
ALUop = 2'b10;
funct =6'b100000;
#10;
funct =6'b100010;
#10;
funct =6'b100100;
#10;
funct =6'b100101;
#10;
funct =6'b101010;
#10;
$finish;
end

endmodule
