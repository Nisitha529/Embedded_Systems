`timescale 1us/1ns
module tri_state_buffer_tb ();
    reg din;
    reg sel;
    wire dout;

    tri_state_buffer Tri1(
        .din(din),
        .sel(sel),
        .dout(dout)
    );

	initial begin
	   $monitor(" din = %b, sel = %b, dout = %b", din, sel, dout);
       #1; din = 0; sel = 0;
	   #1; din = 1; sel = 0;
       #1; din = 0; sel = 1;
       #1; din = 1; sel = 0;
       #1; din = 1; sel = 1;
	   #2; din = 0;
	   #5; $stop;
	end   

endmodule