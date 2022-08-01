module half_adder_dataflow_tb ();
    reg a ;
    reg b ;
    wire s ;
    wire c ;


half_adder_dataflow HALF_ADD_DF (
    .a(a),
    .b(b),
    .s(s),
    .c(c)

);

    initial begin
        $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
    end  
  
    initial begin
        #1; a = 0; b = 0;
        #1; a = 0; b = 1;
        #1; a = 1; b = 0;
        #1; a = 1; b = 1;
        #1; a = 0; b = 0;
        #1; a = 1; b = 1;
    end
    
endmodule