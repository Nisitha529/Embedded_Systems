`timescale 1us/1ps

module counter_modulo_n_tb ();

    parameter CNT_WIDTH = 4 ;
    parameter N = 10 ;
    reg clk = 0 ;
    reg reset_n;
    reg enable;
    wire [CNT_WIDTH-1:0] counter_out ;

    counter_modulo_n
    #(.N(N),.CNT_WIDTH(CNT_WIDTH))
    CNT_MODN0(
        .clk(clk),
        .reset_n(reset_n),
        .enable(enable),
        .counter_out(counter_out)
    );
    
	always begin #0.5 clk = ~clk; end
	
    // Create stimulus	  
    initial begin	 
	    $monitor ($time, " enable = %b, counter_out = %d",
		               enable, counter_out);
	    #1  ; reset_n = 0; enable = 0; 	
		#1.2; reset_n = 1;  // release reset
		repeat(3) @(posedge clk); enable = 1;     
		repeat(14) @(posedge clk); $stop;
	end
endmodule