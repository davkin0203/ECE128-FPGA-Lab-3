`timescale 1ns / 1ps


module one_bit_adder_tb();
    reg At, Bt, Cint;
    wire Coutt, St;
 
    one_bit_adder uut0(.A1(At),.B1(Bt),.Cin(Cint),.Cout(Coutt),.Sout(St));
    
    initial begin
        At=0; Bt=0; Cint= 0;
        #10;
        At=0; Bt=0; Cint= 1;
        #10;
        At=0; Bt=1; Cint= 0;
        #10;
        At=0; Bt=1; Cint= 1;
        #10;
        At=1; Bt=0; Cint= 0;
        #10;
        At=1; Bt=0; Cint= 1;
        #10;
        At=1; Bt=1; Cint= 0;
        #10;
        At=1; Bt=1; Cint= 1;
        #10;
    end
    
endmodule
