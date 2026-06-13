`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 10:13:43 PM
// Design Name: 
// Module Name: pcadder
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


module pcadder(
    input wire  [31:0] pc,
    output wire [31:0] pc4
    );
    assign pc4 = pc + 32'd4;
    
endmodule
