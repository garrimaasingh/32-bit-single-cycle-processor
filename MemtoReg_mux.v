`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 11:10:38 PM
// Design Name: 
// Module Name: MemtoReg_mux
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


module MemtoReg_mux(

    input wire [31:0] alu_result,
    input wire [31:0] memory_data,
    input wire memtoreg,

    output wire [31:0] write_back_data

);

assign write_back_data =
       (memtoreg) ? memory_data : alu_result;


endmodule
