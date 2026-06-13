`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:32:32 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input wire clk,
    input wire memread,
    input wire memwrite,
    input wire [31:0] address,
    input wire [31:0] write_data,
    output wire [31:0] read_data
);
reg [31:0] memory [0:255];
integer i;

initial begin
    for(i=0; i<256; i=i+1)
        memory[i] = 32'b0;

    memory[0] = 32'd100;
end
assign read_data = (memread) ? memory[address[31:2]] : 32'b0;
always @(posedge clk)
begin
    if(memwrite)
        memory[address[31:2]] <= write_data;
end
endmodule

  
