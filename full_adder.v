`timescale 1ns / 1ps

module one_bit_adder(
    input A1,
    input B1,
    input Cin,
    output reg Cout,
    output reg Sout
    );
always @ (A1,B1,Cin)
begin
    case({A1,B1,Cin})
        3'b000: Sout=0;
        3'b001: Sout=1;
        3'b010: Sout=1;
        3'b011: Sout=0;
        3'b100: Sout=1;
        3'b101: Sout=0;
        3'b110: Sout=0;
        3'b111: Sout=1;
        default: Sout = 0;
    endcase
    case({A1,B1,Cin})
        3'b000: Cout=0;
        3'b001: Cout=0;
        3'b010: Cout=0;
        3'b011: Cout=1;
        3'b100: Cout=0;
        3'b101: Cout=1;
        3'b110: Cout=1;
        3'b111: Cout=1;
        default: Cout = 0;
    endcase
end
    

        
endmodule
