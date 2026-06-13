`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 10:59:21 PM
// Design Name: 
// Module Name: inst_memory
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


module inst_memory(
    input wire [31:0] address,
    output wire [31:0] inst
    );
    reg [31:0] mem [0:255];
  //assign inst = address + 32'd1;
  initial begin
    mem[0] = 32'h00221820;
    mem[1] = 32'h00412022;
    mem[2] = 32'h8C050000;
    mem[3] = 32'hAC050004;
    mem[4] = 32'h10210001;
    mem[5] = 32'h00000000;
end
  assign inst = mem[address[31:2]];

endmodule
