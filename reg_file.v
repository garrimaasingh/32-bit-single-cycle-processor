`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 12:08:52 AM
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input wire clk,
    input wire  regwrite,
    input wire [4:0] read_R1,
    input wire [4:0] read_R2,
    input wire [4:0] write_R,
    input wire [31:0] write_data,
    output wire [31:0] read_D1,
    output wire [31:0] read_D2
    );
    reg [31:0] registers [0:255];
    integer i;
    initial begin
    for(i=0; i<32; i=i+1)
    registers[i] = 32'b0;
    registers[1] = 32'd10;   
    registers[2] = 32'd20;
end
    assign read_D1 = registers[read_R1];
    assign read_D2 = registers[read_R2];
always @(posedge clk)
begin
    if(regwrite && (write_R != 5'b00000))
        registers[write_R] <= write_data;
end
endmodule
