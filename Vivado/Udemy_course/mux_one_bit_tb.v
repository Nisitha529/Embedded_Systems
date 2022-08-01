`timescale 1us/1ns

module mux_one_bit_tb ();

     reg a;
     reg b;
     reg x;

//    reg a,b,x ;

    wire y;

    mux_one_bit MUX1(
        .a(a),
        .b(b),
        .x(x),
        .y(y)
    );

	initial begin
       #1; a = 1; b = 0; x = 1;
       #1; a = 0; b = 1; x = 0;
       #1; a = 0; b = 1; x = 1;
       #1; a = 0; b = 0; x = 1;
       #1; a = 1; b = 1; x = 1;
       #1; a = 0; b = 1; x = 0;
	   #5;
	end  
    
endmodule