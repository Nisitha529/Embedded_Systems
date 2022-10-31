module traffic_light (
    input clk,
    input rst_n,
    input enable,
    output reg red,
    output reg yellow,
    output reg green,
    output [3:0] state_out
    );
    parameter [3:0] OFF = 4'b0001,
                    RED = 4'b0001,
                     ;
endmodule