`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 08:35:02 AM
// Design Name: 
// Module Name: controlU_test
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


module controlU_test;
reg [5:0] opcode;
wire regdst;
wire branch;
wire memread;
wire memtoreg;
wire [1:0] ALUop;
wire memwrite;
wire ALUSrc;
wire regwrite;
control_unit utt(.opcode(opcode),.regdst(regdst),.branch(branch),.memread(memread),
                .memtoreg(memtoreg),.ALUop(ALUop),.memwrite(memwrite),.ALUSrc(ALUSrc),.regwrite(regwrite));     
initial begin
opcode =6'b000000;
#10;
opcode =6'b100011;
 #10;
 opcode =  6'b101011;
 #10;
 opcode =  6'b000100;
 #10;
 $finish;

 end
  
endmodule
