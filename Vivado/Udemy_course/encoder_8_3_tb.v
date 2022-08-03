module encoder_8_3_tb ();

    reg [7:0] d ;
    reg enable;
    wire [2:0] y ;

    integer i;

    encoder_8_3 EN8_3 (
        .d(d),
        .enable(enable),
        .y(y)
    );

    initial begin
        $monitor($time, " d = %b, y = %d", d, y);
        #1; d = 0; enable = 0;
        for (i = 0; i<8; i=i+1) begin
            #1; d = (1 << i); enable = 1;
        end
        #1; d = 8'b1111_1111;
    end
    
endmodule