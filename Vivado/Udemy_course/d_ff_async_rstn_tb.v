`timescale 1us/1ns

module d_ff_async_rstn_tb ();

    reg d;
    reg clk;
    reg reset_n;
    wire q;
    wire q_not;
    reg [1:0] delay ;
    integer i;

    d_ff_async_rstn DFFASRS(
        .reset_n(reset_n),
        .clk(clk),
        .d(d),
        .q(q),
        .q_not(q_not)
    );

    always begin
        #0.5; clk = ~clk ;
    end

    initial begin
        reset_n = 0 ;
        d = 0 ;
        for (i = 0 ; i<5 ;i = i +1 ) begin
            delay = $random +1;
            #(delay); d = ~d;
        end
        #(0.2); reset_n = 0 ;
    end

    initial begin
        #40 $finish ; 
    end
    
endmodule