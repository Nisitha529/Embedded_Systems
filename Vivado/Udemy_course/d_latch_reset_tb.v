`timescale 1us/1ns

module d_latch_reset_tb ();

    reg d;
    reg enable;
    reg reset_n;
    wire q;
    wire q_not;

    d_latch_reset DL1(
        .d(d),
        .enable(enable),
        .reset_n(reset_n),
        .q(q),
        .q_not(q_not)
    );
    initial begin
	    $monitor ($time, " enable = %b, d = %b, q = %b, q_not = %b",
		                 enable, d, q, q_not);
        enable = 0; reset_n = 0;
		#2  ; d = 0;
	    #0.5; d = 1;
		#1  ; d = 0;
		#1  ; d = 1;
		#1.5; enable = 1;
		#0.1; d = 1; 
		#0.2; d = 0; reset_n = 1;
		#0.3; d = 1;
		#1  ; enable = 0; d = 0;
		#1  ; d = 1; reset_n = 0;
		#2  ; d = 0;
	end
    
endmodule