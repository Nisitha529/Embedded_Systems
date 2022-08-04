`timescale 1us/1ps
module Task_control_shift_reg ();
    parameter REG_WIDTH = 8 ;
    reg load, shift_left_right;
    reg [REG_WIDTH-1:0] i_data_in;;

    reg clk = 0 ;

    task control_shift_reg(input i_load,input i_shift_left_right, input [REG_WIDTH-1:0] i_data_in);
        begin
            @(posedge clk);
            load = i_load;
            shift_left_right = i_shift_left_right;
            data_in = i_data_in ;
        end
    endtask

    always begin
        #1;
        clk = ~clk ;
    end

    initial begin
	    $monitor ($time, " load = %0b, shift_left_right = %0b, data_in = %8b", load, shift_left_right, data_in);	
		// Call the task using the 'position' call for its input parameters 
		control_shift_reg(1, 0, 8'd1);         // load with 1
	    control_shift_reg(1, 1, 8'b1010_0101); // load with 8'b1010_0101
	    control_shift_reg(1, 1, $random);      // load with $random
		
		// Call the task using the 'position' call for its input parameters
        control_shift_reg(0, 1, 0);            // shift left
		control_shift_reg(1, 0, $random);      // load with random
		control_shift_reg(0, 0, $random);      // shift right
		repeat (5) @(posedge clk);
		$finish();
    end

endmodule