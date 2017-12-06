`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Brasilia
// Engineer: Joao Pedro Alexandroni
// 
// Create Date: 12/06/2017 01:26:33 PM
// Design Name: simple ula
// Module Name: top_ula
// Project Name: arithmetic logic unit
// Target Devices: Basys3
// Tool Versions: Vivado 2017.3
// Description: 
// 
// Dependencies: 
// 
// Revision:0.1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_ula(  
  A,
  B,
  op,
  C);
  
  input  wire [15 : 0] A;
  input  wire [15 : 0] B;
  input  wire [1 : 0] op;
  output wire [15 : 0] C;
  
  ula_new_0 inst (
      .A(A),
      .B(B),
      .op(op),
      .C(C)
    );
  
endmodule
