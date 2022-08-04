module counter_up_down 
    #(parameter CNT_WIDTH = 3 ;)
(
    input clk,
    input reset_n,
    input load_en,
    input [CNT_WIDTH-1:0] counter_in,
    input up_down,
    output reg [CNT_WIDTH - 1:0] counter_out
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter_out <= 0 ;
        end else if (load_en) begin
            counter_out <= counter_in ;
        end else begin
            if (up_down == 1'b1) begin
                counter_out <= counter_out + 1'b1;
            end else begin
                counter_out <= counter_out - 1'b1;
            end
        end
    end
endmodule