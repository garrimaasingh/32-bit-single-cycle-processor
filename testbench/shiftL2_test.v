`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:46:18 PM
// Design Name: 
// Module Name: shiftL2_test
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


module shiftL2_test;
reg [31:0] in;
wire [31:0] out;
shift_left2 uut(.in(in),.out(out));
initial
begin
    in = 4; #10;
    in = 8; #10;
    in = 16; #10;
    in = 1; #10;
$finish;
end
endmodule
