`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:58:30 PM
// Design Name: 
// Module Name: regdst_muxtest
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


module regdst_muxtest;
reg [4:0] rt;
reg [4:0] rd;
reg RegDst;
wire [4:0] write_reg;
regdst_mux uut(.rt(rt),.rd(rd),.RegDst(RegDst),.write_reg(write_reg)
);
initial
begin
    rt = 5'd8;
    rd = 5'd10;

    RegDst = 0; #10;
    RegDst = 1; #10;

    $finish;

end

endmodule
