`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 07:40:33 AM
// Design Name: 
// Module Name: PCSrcMUX_test
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


module PCSrcMUX_test;
reg [31:0] pc4;
reg [31:0] branch_address;
reg PCSrc;

wire [31:0] next_pc;

PCSrc_mux uut(
    .pc4(pc4),
    .branch_address(branch_address),
    .PCSrc(PCSrc),
    .next_pc(next_pc)
);

initial
begin
    pc4 = 32'd104;
    branch_address = 32'd120;
    PCSrc = 0;
    #10;
    PCSrc = 1;
    #10;
    pc4 = 32'd200;
    branch_address = 32'd300;
    PCSrc = 0;
    #10;
    PCSrc = 1;
    #10;

    $finish;

end
endmodule
