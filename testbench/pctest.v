`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 09:36:06 PM
// Design Name: 
// Module Name: pctest
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


module pctest();
reg clk;
reg rst;
wire [31:0]pc;
reg [31:0]pcnext;
pc pp(.clk(clk),.rst(rst),.pc(pc),.pcnext(pcnext));
always #5 clk = ~clk;
initial begin
clk=0; rst=1; pcnext=0;
#10 rst=0;
pcnext=32'd4;
#10 
pcnext=32'd8;
#10 
pcnext=32'd12;
#10
$finish;
end
endmodule
