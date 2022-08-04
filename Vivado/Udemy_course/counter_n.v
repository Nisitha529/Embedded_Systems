module counter_n 
#(parameter CNT_WIDTH = 3;)
(
    input clk,
    input reset_n,
    output reg [CNT_WIDTH-1:0] counter ;
);

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter <= 0 ;
        end else begin
            counter <= counter + 1'b1;
        end
    end
    
endmodule