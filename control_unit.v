`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 08:21:32 AM
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input wire[5:0] opcode,
    output reg regdst,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg [1:0]ALUop,
    output reg memwrite,
    output reg ALUSrc,
    output reg regwrite
    );
    always@(*)
    begin
       case(opcode)
         6'b000000:
         begin
            regdst = 1;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 2'b10;
            memwrite = 0;
            ALUSrc = 0;
            regwrite =1;
          end 
          6'b100011:
           begin
            regdst = 0;
            branch = 0;
            memread = 1;
            memtoreg = 1;
            ALUop = 2'b00;
            memwrite = 0;
            ALUSrc = 1;
            regwrite =1;
            end
            6'b101011:
           begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 2'b00;
            memwrite = 1;
            ALUSrc = 1;
            regwrite =0;
            end
             6'b000100:
           begin
            regdst = 0;
            branch = 1;
            memread = 0;
            memtoreg = 0;
            ALUop = 2'b01;
            memwrite = 0;
            ALUSrc = 0;
            regwrite =0;
            end
            default:
            begin
            regdst = 0;
            branch = 0;
            memread = 0;
            memtoreg = 0;
            ALUop = 2'b00;
            memwrite = 0;
            ALUSrc = 0;
            regwrite =0;
         end
            endcase 
            end
            
 endmodule
