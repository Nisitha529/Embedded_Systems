module d_ff_async_rstn (
    input reset_n ,
    input clk,
    input d,
    output reg q,
    output q_not
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            q <= 1'b0 ;
        end else begin
            q <= d ;
        end
    end

    assign q_not = ~q ;

endmodule