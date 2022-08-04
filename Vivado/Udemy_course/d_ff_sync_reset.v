module d_ff_sync_reset (
    input reset_n,
    input clk,
    input d,
    output reg q,
    output q_not
);
    always @(posedge clk) begin
        if (!reset_n) begin
            q <= 1'b0;
        end else begin
            q <= d;
        end

        assign q_not = ~q ;

    end
endmodule