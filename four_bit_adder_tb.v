`timescale 1ns / 1ps


module four_bit_adder_tb();
    reg [3:0] At, Bt;
    wire Coutt;
    wire [3:0] St;
 
     four_bit_adder uut0(.A(At),.B(Bt),.Cout(Coutt),.S(St));
    
    initial begin
        At=4'b0000; Bt=4'b0000;
        #10;
        At=4'b0001; Bt=4'b0001;
        #10;
        At=4'b0010; Bt=4'b0010;
        #10;
        At=4'b0011; Bt=4'b0011;
        #10;
        At=4'b0100; Bt=4'b0100;
        #10;
        At=4'b0101; Bt=4'b0101;
        #10;
        At=4'b0110; Bt=4'b0110;
        #10;
        At=4'b0111; Bt=4'b0111;
        #10;
        At=4'b1000; Bt=4'b1000;
        #10;
        At=4'b1001; Bt=4'b1001;
        #10;
        At=4'b1010; Bt=4'b1010;
        #10;
        At=4'b1011; Bt=4'b1011;
        #10;
    end
    
endmodule
