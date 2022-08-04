`timescale 1us/1ps

module function_1 ();

    function [8:0] sum (input [7:0] a, input[7:0] b );
        begin
            sum = a + b ;
        end
        
    endfunction

    reg [7:0] a,b ;

    initial begin
	    $monitor ($time, " a = %d, b = %d, sum = %d", a, b, sum(a,b));
		#1 a = 1  ; b = 9;
		#1 a = 13 ; b = 66;
		#1 a = 255; b = 1;
		#1 a = 255; b = 255;  
    end
    
endmodule