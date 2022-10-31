~timescale 1ns/1ps

module clock_divider_01_tb ();
    reg clk_i;
    reg rst_i;
    wire clk_o;

    parameter Period = 20 ;

    clock_divider_01 Clock_Divider(
        .clk_i(clk_i),
        .rst_i(rst_i),
        .clk_o(clk_o)
    );

    initial begin
        clk_i = 1'b0;
        rst_i = 1'b0;

        #Period

        rst_i = 1'b1;

        forever begin
            #(Period/2) clk_i = ~clk_i;
        end
    end

endmodule