`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:56:54 PM
// Design Name: 
// Module Name: regdst_mux
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


module regdst_mux(
    input wire [4:0] rt,
    input wire [4:0] rd,
    input wire RegDst,
    output wire [4:0] write_reg);
assign write_reg = (RegDst) ? rd : rt;
endmodule
