module prio_1_4_2 (
    input [3:0] d ,
    output [1:0] q ,
    output reg v
);
    
    always @(*) begin
        if (d[3]) begin
            q = 2'd3 ;
        end else if (d[2]) begin
            q = 2'd2;
        end else if (d[1]) begin
            q = 2'd1 ;
        end else begin
            q = 2'd0;
        end
    end

    always @(*) begin
        if (!d) begin
            v = 0 ;
        end else begin
            v = 1 ;
        end

    end

endmodule