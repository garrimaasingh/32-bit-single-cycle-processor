`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 07:35:11 AM
// Design Name: 
// Module Name: branch_andG
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


module branch_andG(

    input wire branch,
    input wire zero,
    output wire PCSrc
);

assign PCSrc = branch & zero;
endmodule
