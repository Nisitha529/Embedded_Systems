module shift_reg_pipo (
    input reset_n,
    input clk,
    input [3:0] d,
    output reg [3:0] q ;
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            q <= 4'b0;
        end else begin
            q[3:0] <= d[3:0];
        end
    end

endmodule