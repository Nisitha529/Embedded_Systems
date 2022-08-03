module decoder_3_8 (
    input [2:0] a,
    input enable,
    output reg [7:0];
);

    always @(a or enable) begin
        if (enable == 0) begin
            y = 8'b0;
        end else begin
            case (a)
                3'b000 : y = 8'b00000001;
                3'b001 : y = 8'b00000010;
                3'b010 : y = 8'b00000100;
                3'b100 : y = 8'b00001000;
                3'b011 : y = 8'b00010000;
                3'b101 : y = 8'b00100000;
                3'b110 : y = 8'b01000000;
                3'b111 : y = 8'b10000000;
                default : y = 8'b00000000;
            endcase
        end

    end
    
endmodule