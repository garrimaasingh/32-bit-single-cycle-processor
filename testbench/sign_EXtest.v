`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 09:25:54 AM
// Design Name: 
// Module Name: sign_EXtest
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


module sign_EXtest;
reg [15:0]imm;
wire [31:0]imm_ext;
sign_extend ss(.imm(imm),.imm_ext(imm_ext));
initial  begin 
imm =16'h0005; #10;
imm =16'h7FFF; #10;
imm =16'h8000; #10;
imm =16'hFFFF; #10;
$finish;
end

endmodule
