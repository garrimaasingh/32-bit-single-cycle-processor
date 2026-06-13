`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 07:39:24 AM
// Design Name: 
// Module Name: PCScr_mux
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


module PCSrc_mux(

    input wire [31:0] pc4,
    input wire [31:0] branch_address,
    input wire PCSrc,

    output wire [31:0] next_pc

);

assign next_pc = (PCSrc) ? branch_address : pc4;

endmodule
