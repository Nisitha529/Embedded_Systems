`timescale 1us/1ps
module function_2 ();

    function compare (input integer a, input integer b);
        begin
            compare = (a==b);
        end        
    endfunction

    integer a,b;

    initial begin
        $monitor($time,"a = %d, b = %d, compare = %d",a,b,compare(a,b));
		#1 a = 1  ; b = 9;
		#1 a = 99 ; b = 99;
		#1 a = 400; b = 101;
		#1 a = -134; b = -134;	
    end
    
endmodule