module adder8_tb (
);
    reg [7:0] a = 0 ;
    reg [7:0] b = 0 ;
    wire [8:0] c ;

    adder8 Adder1 (
        .a(a) ; 
        .b(b) ;
        .c(c) ;
    );

    initial begin
        $dumpfile("adder8_tb.vcd");
        $dumpvars(0,adder8_tb);
        $ monitor("a = %d , b = %d , c = %d" , a , b , c);
    end

    initial begin
        #1 ; 
        a = 1 ;
        #1 ; 
        b = 10 ;
        #1 ; 
        a = 3 ;
        b = 99 ;
        #1 ;
        a = 101 ;
        b = 66 ; 
        #1 ; 
        a = 255 ;
        b = 255 ;
    end
    
endmodule