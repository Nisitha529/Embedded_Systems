module blink_led (
    input key_i,
    output led_o
);
    assign led_o = ~key_i;
endmodule