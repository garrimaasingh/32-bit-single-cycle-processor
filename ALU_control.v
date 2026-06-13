`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 09:32:50 AM
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
    input wire [1:0] ALUop,
    input wire [5:0] funct,
    output reg [3:0] ALU_c
    );
    always @(*) begin
    case(ALUop)
    2'b00:
      ALU_c =4'b0010;
    2'b01:
      ALU_c =4'b0110;
    2'b10:
    begin
       case(funct)
           6'b100000: ALU_c =4'b0010;
           6'b100010: ALU_c =4'b0110;
           6'b100100: ALU_c =4'b0000;
           6'b100101: ALU_c =4'b0001;
           6'b101010: ALU_c =4'b0111;
           default : ALU_c =4'b0000;
           endcase
     end
           default : ALU_c =4'b0000;
           endcase
           end
endmodule
