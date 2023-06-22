`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 19:35:39
// Design Name: 
// Module Name: oddparity
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


module oddparity(
    input [2:0]message,
    output odd_parity
    );
     assign odd_parity=(~(message[0]^message[1]^message[2]));
endmodule
