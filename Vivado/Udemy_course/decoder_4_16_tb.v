`timescale 1us/1ns

module decoder_4_16_tb ();
    reg [3:0] a;
    wire [15:0] d ;
    integer i;

    decoder_4_16 DEC4_16(
        .a(a),
        .d(d)
    );

    initial begin
        $monitor($time, "a = %d , d = %b ",a,d);
        #1;
        a = 0 ;
        for (i = 0 ; i < 16 ; i = i + 1) begin
            #1;
            a = i ;
        end
    end
    
endmodule