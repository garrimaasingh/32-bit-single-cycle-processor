`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 12:16:44 AM
// Design Name: 
// Module Name: reg_filetest
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


module reg_filetest;
reg clk;
reg regwrite;
reg [4:0] read_R1;
reg [4:0] read_R2;
reg [4:0] write_R;
reg [31:0] write_data;
wire [31:0] read_D1;
wire [31:0] read_D2;

reg_file rf(.clk(clk),.regwrite(regwrite),.read_R1(read_R1),.read_R2(read_R2),.write_R(write_R),
           .write_data(write_data),.read_D1(read_D1),.read_D2(read_D2));
always #5 clk = ~clk;
initial begin
    clk = 0;
    regwrite = 0;
    read_R1 = 0;
    read_R2 = 0;
    write_R = 0;
    write_data = 0;
    #10;
    regwrite = 1;
    write_R = 5;
    write_data = 100;
    #10;
    write_R = 8;
    write_data = 200;
    #10;
    regwrite = 0;
    read_R1= 5;
    read_R2 = 8;
    #10;
    read_R1 = 8;
    read_R2 = 5;
    #10;
   $finish;
end
endmodule
