module shift_reg_piso (
    input clk,
    input reset_n,
    input sdi,
    input pl,
    input [3:0] d,
    output sdo
);
    reg [3:0] piso ;
    wire [3:0] data_src ;

    assign data_src = pl ? d : {piso[2:0],sdi};

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            piso <= 4'b0;
        end else begin
            piso[3:0] <= data_src;
        end
    end
    assign sdo = piso[3];
    
endmodule