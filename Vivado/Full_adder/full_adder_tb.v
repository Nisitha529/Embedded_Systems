`timescale 1ns/1ps
`include "full_adder.v"
module full_adder_tb;

reg A1,A2,Cin;
wire S,Cout;

// full_adder(
//     .a1(A1),
//     .a2(A2);
//     .cin(Cin);
//     .s(S);
//     .cout(Cout);
//     );

full_adder uut (A1,A2,Cin,S,Cout)

initial begin
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0,full_adder_tb);

    A1 = 0 ;
    A2 = 0 ;
    Cin = 0 ;
    #5;

    A1 = 0 ;
    A2 = 0 ;
    Cin = 1 ;
    #5;

    A1 = 0 ;
    A2 = 1 ;
    Cin = 0 ;
    #5;

    A1 = 0 ;
    A2 = 1 ;
    Cin = 1 ;
    #5;

    A1 = 1 ;
    A2 = 0 ;
    Cin = 0 ;
    #5;

    A1 = 1 ;
    A2 = 0 ;
    Cin = 1 ;
    #5;

    A1 = 1 ;
    A2 = 1 ;
    Cin = 0 ;
    #5;

    A1 = 1 ;
    A2 = 1 ;
    Cin = 1 ;
    #5;

end

endmodule