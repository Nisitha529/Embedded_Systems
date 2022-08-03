module d_latch (
    input d,
    input enable.
    output q,
    output q_not
);
    always @(enable or d) begin
        if (enable) begin
            dlatch = d ;
        end

        assign q = dlatch ;
        assign q_not = ~q ;

    end
endmodule