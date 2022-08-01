module full_adder_structural (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);

wire sum1 ;
wire carry1 ;
wire carry2 ;

half_adder_structural HA1(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry1)
);

half_adder_structural HA2(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry1)
);

or (carry_out,carry1,carry2) ; 
    
endmodule