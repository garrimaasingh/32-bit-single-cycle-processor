`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:51:50 PM
// Design Name: 
// Module Name: branchadder_test
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


module branchadder_test;
reg [31:0] pc4;
reg [31:0] branch_offset;
wire [31:0] branch_address;
branch_adder uut(.pc4(pc4),.branch_offset(branch_offset),.branch_address(branch_address));
initial
begin
    pc4 = 32'd4;
    branch_offset = 32'd16;
    #10;

    pc4 = 32'd100;
    branch_offset = 32'd20;
    #10;

    pc4 = 32'd200;
    branch_offset = 32'd40;
    #10;

    $finish;

end
endmodule
