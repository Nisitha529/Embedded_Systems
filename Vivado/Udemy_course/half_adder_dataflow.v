module half_adder_dataflow (
    input a,
    input b,
    output s,
    output c
);
    assign s = a ^ b ;
    assign c = a & b ;
    
endmodule