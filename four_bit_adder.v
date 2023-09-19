`timescale 1ns / 1ps

module four_bit_adder(A, B, S, Cout);

input[3:0] A;
input[3:0] B;
output reg [3:0] S;
output reg Cout;

always @ (A,B)
begin
    case({A,B})
        8'b00000000: S=4'b0000;
        8'b00010001: S=4'b0010;
        8'b00100010: S=4'b0100;
        8'b00110011: S=4'b0110;
        8'b01000100: S=4'b1000;
        8'b01010101: S=4'b1010;
        8'b01100110: S=4'b1100;
        8'b01110111: S=4'b1110;
        8'b10001000: S=4'b0000;
        8'b10011001: S=4'b0010;
        8'b10101010: S=4'b0100;
        8'b10111011: S=4'b0110;
        8'b11001100: S=4'b1000;
        8'b11011101: S=4'b1010;
        8'b11101110: S=4'b1100;
        8'b11111111: S=4'b1110;
        
        default: S = 0;
    endcase
    case({A,B})
        8'b00000000: Cout = 0;
        8'b00010001: Cout = 0;
        8'b00100010: Cout = 0;
        8'b00110011: Cout = 0;
        8'b01000100: Cout = 0;
        8'b01010101: Cout = 0;
        8'b01100110: Cout = 0;
        8'b01110111: Cout = 0;
        8'b10001000: Cout = 1;
        8'b10011001: Cout = 1;
        8'b10101010: Cout = 1;
        8'b10111011: Cout = 1;
        8'b11001100: Cout = 1;
        8'b11011101: Cout = 1;
        8'b11101110: Cout = 1;
        8'b11111111: Cout = 1;
        default: Cout = 0;
    endcase
end

endmodule

module SevenSegment(Sum, Display);
    input [3:0] Sum;
    output reg [6:0] Display;
    
    always@( Sum )
        begin
            case(Sum)
              4'b0000: Display = 7'b0000001; 
              4'b0001: Display = 7'b1001111;  
              4'b0010: Display = 7'b0010010;
              4'b0011: Display = 7'b0000110;
              4'b0100: Display = 7'b1001100;
              4'b0101: Display = 7'b0100100;
              4'b0110: Display = 7'b1100000;
              4'b0111: Display = 7'b0001111;
              4'b1000: Display = 7'b0000000;
              4'b1001: Display = 7'b0001100;
            endcase
    end
endmodule











