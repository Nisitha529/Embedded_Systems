module d_latch_reset (
    input d,
    input enable,
    input reset_n,
    output q,
    output q_not
);

    reg dlatch;

    always @(enable or d or reset_n) begin
        if (!reset_n) begin
            dlatch = 1'b0 ;
        end else if (enable) begin
            dlatch = d ;
        end
    end

    assign q = dlatch ;
    assign q_not = ~q ;
    
endmodule