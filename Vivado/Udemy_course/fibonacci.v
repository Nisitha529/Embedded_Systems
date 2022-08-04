`timescale 1us/1ps
module fibonacci ();

    function automatic integer fibonacci (input integer N);
        integer result = 0;
        begin
            if (N==0) begin
                result = 0 ;
            end else if (N==1) begin
                result = 0 ;
            end else begin
                result = fibonacci(N-1) + fibonacci(N-2);
            end
            fibonacci = result ;
        end        
    endfunction
    
	initial begin
	    #1 $display ($time, " fibonacci(2)  = %d", fibonacci(2));
	    #1 $display ($time, " fibonacci(5)  = %d", fibonacci(5));
	    #1 $display ($time, " fibonacci(10) = %d", fibonacci(10));
	end   

endmodule