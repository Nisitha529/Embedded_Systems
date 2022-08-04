`timescale 1ps/1ps

module counter_n_tb ();

parameter CNT_WIDTH = 3 ;
reg clk = 0 ;
reg reset_n ;
wire [CNT_WIDTH-1:0] counter ;

counter_n
    #(.CNT_WIDTH(CNT_WIDTH))
    CNT_n(
        .clk(clk),
        .reset_n(reset_n),
        .counter(counter)
    );

always begin
    #0.5 clk = ~ clk;
end

initial begin
    $monitor($time, " counter = %d ", counter);
    #1; reset_n = 0 ;
    #1.2; reset_n = 1 ;
end

initial begin
    #20 $stop;
end
    
endmodule