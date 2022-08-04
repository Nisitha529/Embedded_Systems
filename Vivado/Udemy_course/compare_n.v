`timescale 1us/1ps

module compare_n ();

    #(parameter CMP_WIDTH = 4)
    (input [CMP_WIDTH-1:0] a,
    input[CMP_WIDTH-1:0] b,
    output reg greater,
    output reg equal,
    output reg smaller);

    function [2:0] compare (input [CMP_WIDTH - 1 : 0] a, input [CMP_WIDTH -1:0] b);
        reg greater_local;
        reg equal_local;
        reg smaller_local;

        begin
            greater_local = (a>b);
            equal_local = (a==b);
            smaller_local = (a<b);
            compare = {greater_local,equal_local,smaller_local};
        end
    endfunction

    always @(*) begin
        {greater,equal,smaller} = compare(a,b);
    end
    
endmodule