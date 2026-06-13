`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:01:50 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [3:0] ALU_c,
    output reg [31:0] result,
    output wire zero
);

always @(*)
begin
    case(ALU_c)
    4'b0000:
            result = A & B;
    4'b0001:
            result = A | B;
    4'b0010:
            result = A + B;
    4'b0110:
            result = A - B;
    4'b0111:
            result = (A < B) ? 32'd1 : 32'd0;

        default:
            result = 32'd0;
            endcase
end
assign zero = (result == 32'd0);
endmodule
