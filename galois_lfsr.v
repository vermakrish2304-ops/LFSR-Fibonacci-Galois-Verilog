`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2026 20:01:51
// Design Name: 
// Module Name: galois_lfsr
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


module galois_lfsr(

   
    input clk,
    input reset,    
    output reg [4:0] q
); 
    
    always @(posedge clk)
        begin
            if(reset)
                q <= 5'b00001;
            else
                begin
                    q[4] <= 0^q[0];
                    q[3] <= q[4];
                    q[2] <= q[3]^q[0];
                    q[1] <= q[2];
                    q[0] <= q[1];
                end
        end

endmodule

