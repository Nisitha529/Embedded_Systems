`timescale 1us/1ps
module Task_distance_conversion ();

    real meters, feet;
    reg clk = 0 ;

    task meters_to_feet (input real meters , output real feet);
        begin
            feet = meters * 3.2808 ;
            $display($time," meters = %0.4f , feet = %0.4f", meters, feet);
        end
    endtask
    
    always begin
        #1;
        clk = ~clk ;
    end

    initial begin
	    @(posedge clk) meters = 1 ; meters_to_feet(meters, feet);
	    @(posedge clk) meters = 3 ; meters_to_feet(meters, feet);
	    @(posedge clk) meters = 10; meters_to_feet(meters, feet);
    end

	initial begin
        repeat(10) @(posedge clk); 
		$stop();
	end  

endmodule