module full_adder (
    A1, A2, Cin, S,Cout
);
    input A1, A2, Cin;
    output S,Cout;

    reg [1:0] temp;
    always @(*) begin
        temp = {1'b0,A1} + {1'b0,A2}+{1'b0,Cin};
    end
    assign S = temp[0];
    assign Cout = temp[1];
    
endmodule