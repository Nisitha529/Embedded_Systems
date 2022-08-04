module shift_left_right_load_reg (
    input clk,
    input reset_n,
    input [7:0] i,
    input load_enable,
    input shift_left_right,
    output reg [7:0] q
);
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)begin
            q <= 8'b0;
        end else if (load_enable == 1'b0) begin
            q <= i;
        end else begin
            if (shift_left_right == 1'b0) begin
                q <= {q[6:0],1'b0};
            end else begin
                q <= {1'b0,q[7:1]};
            end
        end
    end
    
endmodule