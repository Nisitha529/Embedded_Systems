module one_bit_comparator (
    input a,
    input b,
    output sm,
    output eq,
    output gr
);
    wire not_a;
    wire not_b;

    not not1(not_a,a);
    not not2(not_b,b);

    and and1(sm,not_a,b);
    xnor xnor1(eq,a,b);
    and and2(gr,a,not_b);
    
endmodule