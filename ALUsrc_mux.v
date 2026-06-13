`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 11:02:54 PM
// Design Name: 
// Module Name: ALUsrc_mux
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


module ALUsrc_mux(
    input wire [31:0] read_data2,
    input wire [31:0] imm_ext,
    input wire ALUsrc,
    output wire [31:0] ALU_B

);
assign ALU_B = (ALUsrc) ? imm_ext : read_data2;
endmodule
