`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 20:16:29
// Design Name: 
// Module Name: galois_lfsr_tb
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


module galois_lfsr_tb(

    );
    
    reg clk, reset;
    wire[4:0] q;
    
    galois_lfsr uut(.clk(clk), .reset(reset), .q(q));
    
    initial clk = 0;
    always #5 clk = (~clk);
    
    initial begin
    reset = 1; #10;
    reset = 0; #320;
    reset = 1; #10;
    $finish;
    end
endmodule
