`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 22:48:03
// Design Name: 
// Module Name: fibonacci_tb
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


module fibonacci_tb(

    );
    reg clk,reset;
    wire [3:0] q;
    
    fibonacci_lfsr uut(.clk(clk), .reset(reset), .q(q));
    
    initial clk = 0;
    always #5 clk = (~clk);
    
    initial begin
    reset = 1; #10;
    reset = 0; #90;
    reset = 1; #10;
    $finish;
    end
endmodule
