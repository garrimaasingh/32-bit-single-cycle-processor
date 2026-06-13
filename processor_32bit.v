`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2026 08:10:36 AM
// Design Name: 
// Module Name: processor_32bit
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


module processor_32bit(
    input wire clk,
    input wire rst
);
wire [31:0] pc_current;
wire [31:0] pc4;
wire [31:0] next_pc;

wire [31:0] instruction;

wire regdst;
wire branch;
wire memread;
wire memtoreg;
wire [1:0] ALUop;
wire memwrite;
wire ALUsrc;
wire regwrite;

wire [4:0] write_reg;
wire [31:0] read_D1;
wire [31:0] read_D2;
wire [31:0] write_back_data;

wire [31:0] imm_ext;
wire [31:0] shift_out;

wire [3:0] ALU_c;
wire [31:0] ALU_B;
wire [31:0] alu_result;
wire zero;

wire [31:0] read_data;

wire [31:0] branch_address;
wire PCSrc;

pc PC0(
    .clk(clk),
    .rst(rst),
    .pcnext(next_pc),
    .pc(pc_current)
);

pcadder PCADD0(
    .pc(pc_current),
    .pc4(pc4)
);

inst_memory IM0(
    .address(pc_current),
    .inst(instruction)
);

control_unit CU0(
    .opcode(instruction[31:26]),
    .regdst(regdst),
    .branch(branch),
    .memread(memread),
    .memtoreg(memtoreg),
    .ALUop(ALUop),
    .memwrite(memwrite),
    .ALUSrc(ALUsrc),
    .regwrite(regwrite)
);

regdst_mux RDM0(
    .rt(instruction[20:16]),
    .rd(instruction[15:11]),
    .RegDst(regdst),
    .write_reg(write_reg)
);
reg_file RF0(
    .clk(clk),
    .regwrite(regwrite),
    .read_R1(instruction[25:21]),
    .read_R2(instruction[20:16]),
    .write_R(write_reg),
    .write_data(write_back_data),
    .read_D1(read_D1),
    .read_D2(read_D2)
);
sign_extend SE0(
    .imm(instruction[15:0]),
    .imm_ext(imm_ext)
);

ALU_control AC0(
    .ALUop(ALUop),
    .funct(instruction[5:0]),
    .ALU_c(ALU_c)
);

ALUsrc_mux ASM0(
    .read_data2(read_D2),
    .imm_ext(imm_ext),
    .ALUsrc(ALUsrc),
    .ALU_B(ALU_B)
);
ALU ALU0(
    .A(read_D1),
    .B(ALU_B),
    .ALU_c(ALU_c),
    .result(alu_result),
    .zero(zero)
);

data_memory DM0(
    .clk(clk),
    .memread(memread),
    .memwrite(memwrite),
    .address(alu_result),
    .write_data(read_D2),
    .read_data(read_data)
);


MemtoReg_mux MTR0(
    .alu_result(alu_result),
    .memory_data(read_data),
    .memtoreg(memtoreg),
    .write_back_data(write_back_data)
);


shift_left2 SL20(
    .in(imm_ext),
    .out(shift_out)
);
branch_adder BA0(
    .pc4(pc4),
    .branch_offset(shift_out),
    .branch_address(branch_address)
);

branch_andG AND0(
    .branch(branch),
    .zero(zero),
    .PCSrc(PCSrc)
);

PCSrc_mux PCM0(
    .pc4(pc4),
    .branch_address(branch_address),
    .PCSrc(PCSrc),
    .next_pc(next_pc)
);

endmodule
