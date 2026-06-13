`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 11:10:35 PM
// Design Name: 
// Module Name: inst_memtest
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


module inst_memtest;
reg [31:0] address;
wire [31:0] inst;
inst_memory mm(.address(address),.inst(inst));
initial begin
mm.mem[0] = 32'h11111111;
mm.mem[1] = 32'h22222222;
mm.mem[2] = 32'h33333333;
mm.mem[3] = 32'h44444444;
  address = 0;   #10;
  address = 4;   #10;
  address = 8;   #10;
  address = 12;  #10;
$finish;
end
endmodule
