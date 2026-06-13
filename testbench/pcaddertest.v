`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 10:18:15 PM
// Design Name: 
// Module Name: pcaddertest
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


module pcaddertest;
reg [31:0] pc;
wire [31:0] pc4;
pcadder pp(.pc(pc),.pc4(pc4));
initial begin
pc = 32'd0; #10;
pc = 32'd4; #10;
pc = 32'd8; #10;
pc = 32'd12; #10;
$finish;
end
endmodule
