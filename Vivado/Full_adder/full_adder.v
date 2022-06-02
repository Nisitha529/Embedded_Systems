module full_Adder (
    input a1, a2, cin,
    output s,cout
);
    reg [1:0] temp;
    always @(*) begin
        temp = {1'b0,a1} + {1'b0,a2}+{1'b0,cin};
    end
    assign s = temp[0];
    assign cout = temp[1];
    
endmodule