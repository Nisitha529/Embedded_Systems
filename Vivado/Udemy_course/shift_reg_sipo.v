module shift_reg_sipo (
    input sdi,
    input reset_n,
    input clk,
    output reg [3:0] q
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)begin
            q <= 4'b0;
        end else begin
            q[3:0] <= {q[2:0],sdi};
        end
    end
    
endmodule