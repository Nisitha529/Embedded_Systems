`timescale 1us/1ns

module demux_n_4_tb(
    // no inputs here ;)
    );
	
    parameter BUS_WIDTH = 8;
    wire [BUS_WIDTH-1:0] a;
    wire [BUS_WIDTH-1:0] b;
    wire [BUS_WIDTH-1:0] c;
    wire [BUS_WIDTH-1:0] d;
    reg [1:0] sel;
    reg [BUS_WIDTH-1:0] y;

    // Instantiate the DUT 
    demux_n_4
        #(.BUS_WIDTH(BUS_WIDTH))
      DEMUX0 (
        .y(y),
        .sel(sel),
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " sel = %d, y = %d, a = %d, b = %d, c = %d, d = %d", 
                 sel, y, a, b, c, d);
        #1; sel = 0; y = 0;
        for (int i = 0; i<8; i++) begin
            #1; sel =  i%4; y = $urandom();
        end
    end
  
endmodule