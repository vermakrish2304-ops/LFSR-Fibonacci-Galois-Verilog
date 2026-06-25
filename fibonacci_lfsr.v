`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 22:41:09
// Design Name: 
// Module Name: fibonacci_lfsr
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


module fibonacci_lfsr(
    input clk,
    input reset,
    output reg [3:0] q
);

always @(posedge clk)
begin
    if(reset)
        q <= 4'b0001;

    else begin
        q[3] <= q[3] ^ q[0];
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end

endmodule
