`timescale 1us/1ns

module mux_tristate_tb ();

    reg a,b;
    reg sel;
    wire dout;

    mux_tristate MUX1 (
        .a(a),
        .b(b),
        .sel(sel),
        .dout(dout)
    );

    initial begin
       $monitor(" a = %b, b = %b, sel = %b, dout = %b",a, b, sel, dout);
       #1; a = 0; b = 0; sel = 0;
       #1; a = 1; b = 0; sel = 0;
       #1; a = 1; b = 0; sel = 1;
       #1; a = 0; b = 1; sel = 1;
       #1; a = 0; b = 0; sel = 0;      
       #1;
    end   

    
endmodule