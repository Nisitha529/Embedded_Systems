module tri_state_buffer (
    input din,
    input sel,
    input dout
);

    bufif1 B1 (dout,din,sel);
    
endmodule