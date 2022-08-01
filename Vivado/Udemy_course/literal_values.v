module literal_values ();

    reg [7:0] my_var;

    initial begin
        my_var = 8'd137; //105 in decimal
        $display("My_var = %d ",my_var);

        #2 my_var = 8'b1000_1001; 
        $display("My_var = %b ",my_var);

        #2  my_var = 8'h89; 
        $display("My_var = %x ",my_var);

        #2  my_var = 8'o211; 
        $display("My_var = %o ",my_var);

        #2  my_var = 8'hZ1;            //zzzz_0001
        $display("My_var = %b ",my_var);

        #2  my_var = 1'b1;             //00000001
        $display("My_var = %b ",my_var);

        #2  my_var = 12'b1111_1110_1001; //1110_1001
        $display("My_var = %b ",my_var);
    end
    
endmodule