module shift_reg_pipo_bug (
    input reset_n,
    input clk,
    input [7:0] d,
    output reg [7:0] q 
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            q <= 0 ;
        end else begin
            q[7:0] <= d[6:0];
        end
    end
endmodule