`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 11:04:50 PM
// Design Name: 
// Module Name: ALUsrc_muxtest
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


module ALUsrc_muxtest;
reg [31:0] read_data2;
reg [31:0] imm_ext;
reg ALUsrc;

wire [31:0] ALU_B;

ALUsrc_mux uut(
    .read_data2(read_data2),
    .imm_ext(imm_ext),
    .ALUsrc(ALUsrc),
    .ALU_B(ALU_B)
);

initial
begin

    read_data2 = 32'd100;
    imm_ext    = 32'd4;

    ALUsrc = 0; #10;
    ALUsrc = 1; #10;

    $finish;

end
endmodule
