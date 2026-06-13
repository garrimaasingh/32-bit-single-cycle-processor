`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:35:45 PM
// Design Name: 
// Module Name: datamem_test
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


module datamem_test;
reg clk;
reg memread;
reg memwrite;
reg [31:0] address;
reg [31:0] write_data;
wire [31:0] read_data;
data_memory uut(.clk(clk),.memread(memread),.memwrite(memwrite),.address(address),.write_data(write_data),
                .read_data(read_data));
always #5 clk = ~clk;
initial
begin
clk = 0;
    memwrite = 1;
    memread = 0;
    address = 0;
    write_data = 100;
    #10;
    address = 4;
    write_data = 200;
    #10;
    memwrite = 0;
    memread = 1;
    address = 0;
    #10;
    address = 4;
    #10;

    $finish;

end
endmodule
