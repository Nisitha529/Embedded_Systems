module procedure_example () ;

    reg x = 1'b0;  // 1 bit variable with 0
    reg y = 1'b1;  // 1 bit variable with 1
    reg z ;

    always @(z) begin
        $ display("x = %b , y = %b , z = %b",x,y,z) ;
    end

    initial begin
        #2; //wait for 2 time units
        z = x ^ y;
        #10;
        y = 0 ;
        z = x | y ;
        #10;
        z = ~z ; 
        #10
    end

endmodule