`timescale 1ns / 1ps

module final(A, B, Display, Cout);

input [3:0] A, B;
output Cout;
output [6:0] Display;
wire [3:0] Sum;

four_bit_adder uut0(.A(A), .B(B), .S(Sum), .Cout(Cout));

SevenSegment uut1(.Sum(Sum), .Display(Display));


endmodule
