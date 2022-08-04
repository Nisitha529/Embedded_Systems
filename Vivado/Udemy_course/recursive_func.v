`timescale 1us/1ps
module recursive_func ();

    function automatic integer factorial (input integer N);
        integer result = 0 ;
        begin
            if (N == 0) begin
                result = 1 ;
            end else begin
                result = N * factorial(N-1);
            end
            factorial = result ;
        end
    endfunction

	initial begin
	    #1 $display ($time, " factorial(2) = %d", factorial(2));
	    #1 $display ($time, " factorial(5) = %d", factorial(5));
	    #1 $display ($time, " factorial(10) = %d", factorial(10));
	end
    
endmodule