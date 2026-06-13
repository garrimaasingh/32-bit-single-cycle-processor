`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 11:12:17 PM
// Design Name: 
// Module Name: MentoReg_mux_test
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


module MentoReg_mux_test;

reg [31:0] alu_result;
reg [31:0] memory_data;
reg memtoreg;

wire [31:0] write_back_data;

MemtoReg_mux uut(
    .alu_result(alu_result),
    .memory_data(memory_data),
    .memtoreg(memtoreg),
    .write_back_data(write_back_data)
);

initial
begin

    alu_result = 32'd150;
    memory_data = 32'd500;

    memtoreg = 0;
    #10;

    memtoreg = 1;
    #10;

    $finish;

end
endmodule
