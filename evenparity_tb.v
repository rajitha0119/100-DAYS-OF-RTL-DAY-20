`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2023 19:14:43
// Design Name: 
// Module Name: evenparity_tb
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


module evenparity_tb(

    );
    reg [2:0]message;
    wire even_parity;
    integer i;
    
  evenparity abb(.message(message),.even_parity(even_parity));
  initial begin
 // message=3'b001;#5;
 // message=3'b111;#5;
 // message=3'b110;
  for(i=0;i<8;i=i+1)
  begin
  message=i;
  #5;
  end
  end
  initial begin
  $monitor("message=%d even_parity=%d\n",message,even_parity);
  end
endmodule
