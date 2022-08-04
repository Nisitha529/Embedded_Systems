`timescale 1us/1ps
module shift_reg_pipo_bug_tb ();
    reg [7:0] d ;
    reg clk = 0 ;
    reg reset_n ;
    wire [7:0] q ;
    reg [1:0] delay ;
    integer success_count,error_count,test_count;
    integer i;

    shift_reg_pipo_bug PIPO(
        .reset_n(reset_n),
        .clk(clk),
        .d(d),
        .q(q)
    );

    task load_check_pipo_reg();
        begin
            @(posedge clk);
            d = $random ;
            @(posedge clk);
            #0.1;
            compare_data(d,q);
        end
    endtask

    task compare_data(input [7:0] expected_data , input[7:0] observed_data);
        begin
            if (expected_data === observed_data) begin
            	$display($time, " SUCCESS expected_data = %8b, observed_data = %8b", expected_data, observed_data);
                success_count = success_count + 1;   
            end else begin
                $display($time, " ERROR expected_data = %8b, observed_data = %8b", expected_data, observed_data);	
				error_count = error_count + 1;
            end
            test_count = test_count + 1 ;
        end
    endtask

    always begin
        #0.5;
        clk = ~clk ;
    end
    
    initial begin
        #1;
        success_count = 0 ; error_count = 0 ; test_count = 0 ;
        reset_n = 0 ; d = 0 ;
        #1.3;
        reset_n = 1 ;
        for (i = 0 ; i < 10 ; i = i + 1 ) begin
            load_check_pipo_reg();
            delay = $random;
            #(delay) d = $random;
        end

        $display($time, " TEST RESULTS success_count = %0d, error_count = %0d, test_count = %0d", 
		                success_count, error_count, test_count);
	    #40 $stop;

    end

endmodule