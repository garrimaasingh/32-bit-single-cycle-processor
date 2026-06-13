`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 07:36:40 AM
// Design Name: 
// Module Name: branch_AGtest
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


module branch_AGtest;
reg branch;
reg zero;

wire PCSrc;

branch_andG uut(
    .branch(branch),
    .zero(zero),
    .PCSrc(PCSrc)
);

initial
begin
    branch = 0;
    zero = 0;
    #10;
    branch = 0;
    zero = 1;
    #10;
    branch = 1;
    zero = 0;
    #10;
    branch = 1;
    zero = 1;
    #10;

    $finish;

end

endmodule
