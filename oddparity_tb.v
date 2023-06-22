`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 13:48:42
// Design Name: 
// Module Name: oddparity_tb
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


module oddparity_tb();
reg [2:0]message;
wire odd_parity;
integer i;
oddparity aab(.message(message),.odd_parity(odd_parity));
initial begin
for(i=0;i<8;i=i+1)
begin
message=i;
#10;
end
end
initial begin
$monitor("message=%d odd_parity=%d\n",message,odd_parity);
#80 $finish;
end
endmodule
