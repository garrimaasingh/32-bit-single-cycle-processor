`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 08:29:21 AM
// Design Name: 
// Module Name: processor_32bit_test
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


module processor_32bit_test;
reg clk;
reg rst;
processor_32bit uut(
    .clk(clk),
    .rst(rst)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #100;
    $finish;
end
endmodule
