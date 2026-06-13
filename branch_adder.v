`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:50:36 PM
// Design Name: 
// Module Name: branch_adder
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


module branch_adder(
    input wire [31:0] pc4,
    input wire [31:0] branch_offset,
    output wire [31:0] branch_address);
assign branch_address = pc4 + branch_offset;
endmodule
