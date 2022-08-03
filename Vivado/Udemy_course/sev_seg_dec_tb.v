`timescale 1us/1ns

module sev_seg_dec_tb ();

    reg [3:0] in ;
    wire a,b,c,d,e,f,g ;
    wire dot ;
    integer i ;

    sev_seg_dec SEV_SEG_1(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dot(dot)
    );

    initial begin
        $monitor($time, " in = %d, seven_seg_code = %7b dot = %1b", 
                 in, {a, b, c, d, e, f, g}, dot);
        #1; in = 0;
        for (i = 0; i<16; i=i+1) begin
            #1; in = i;
        end
    end
    
endmodule