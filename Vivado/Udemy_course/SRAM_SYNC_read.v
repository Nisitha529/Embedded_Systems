module SRAM_SYNC_read (
    input clk,
    input [7:0] data_in,
    input [3:0] address,
    input write_en,
    output [7:0] data_out
);
    reg [7:0] ram [0:15] ;
    reg [3:0] addr_buff;

    always @(posedge clk) begin
        if (write_en) begin
            ram[address] <= data_in ;
        end 
        addr_buff <= address ;
    end
    assign data_out = ram[addr_buff] ;
endmodule