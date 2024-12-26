// https://hdlbits.01xz.net/wiki/Conditional

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    wire [7:0] min1, min2, min3;
    
    assign min1 = (a < b)? a : b;
    assign min2 = (min1 < c)? min1 : c;
    assign min3 = (min2 < d)? min2 : d;
    
    assign min = min3;

endmodule
